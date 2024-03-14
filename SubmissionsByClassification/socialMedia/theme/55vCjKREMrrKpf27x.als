
sig FSObject { parent: lone Dir }


sig Dir extends FSObject { contents: set FSObject }


sig File extends FSObject { }


fact { all d: Dir, o: d.contents | o.parent = d }


fact { File + Dir = FSObject }


one sig Root extends Dir { } { no parent }


fact { FSObject in Root.*contents }
