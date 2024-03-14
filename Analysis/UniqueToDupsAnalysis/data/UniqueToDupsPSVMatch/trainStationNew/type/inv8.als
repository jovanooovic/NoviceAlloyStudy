Track in ^succs
-- div,1
Track in ^Track.succs
-- div,2
all e:Entry | e.^succs
-- div,2
all e: Entry | no Exit not in e.^succs
-- div,1
all e: Entry| all c: Exit| c in e*(succs)
-- div,1
all x:Track | x in Exit => Entry.^(succs)
-- div,2
all e:Entry, ex:Exit | ex in e.^(e.succs)
-- div,1
all e: Entry, ex: Entry | no ex not in e.^succs
-- div,1
all e : Entry | all s : Exit | s in e.*(Track.Exit)
-- div,1
all exit:Exit, entry:Entry | exit in ^(entry.succs)
-- div,1
all e : Entry | Exit = { e : Entry | e.^succs & Exit}
-- div,2
all e : Entry | Exit = e.{ e : Entry | e.^succs & Exit}
-- div,1
all t:Track | all e:Exit | t in Entry implies e t.succs
-- div,1
all t: Track | some t&Entry implies some t.^(succs&Entry)
-- div,1
all x,y:Track | y in Exit  implies  x in Entry and x.succs.y
-- div,1
all en : Entry | en.^succs&Exit
no Signal
no Semaphore
no Speed
-- div,1
all t: Track | t in Exit implies all t1: Track | t1 in Entry and t1.^(succs)
-- div,1
all t: Track | (t.succs = Junction + Entry + Exit) => (t.signals & Semaphore = {})
-- div,1
all t: Track | (t.succs = Junction + Entry + Exit) implies (t.signals & Semaphore = {})
-- div,1
