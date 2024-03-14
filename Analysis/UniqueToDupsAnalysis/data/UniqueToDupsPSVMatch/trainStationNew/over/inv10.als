succs.Junction = signals.Semaphore
-- div,2
all t : Track | t in succs.Junction implies one t.signals & Semaphore
-- div,3
all t : Track | t in succs.Junction implies one Semaphore & t.signals
-- div,1
all t : Track | some t.succs & Junction implies one t.signals & Semaphore
-- div,1
all t : Track | some Junction & t.succs implies one Semaphore & t.signals
-- div,1
all t : Track | some t.succs & Junction implies one Semaphore & t.signals
-- div,1
all t : Track | some t.succs & Junction iff some t.signals & Semaphore
-- div,3
all t1:Track, t2:Track | t2 in t1.succs implies some (t1.signals & Semaphore)
-- div,1
all t : Track | some s : Semaphore | (t in succs.Junction ) implies s in t.signals
-- div,1
all t:Track|one s: t.signals| some (t.succs & Junction) implies s in Semaphore
-- div,1
all t: Junction | some s: Semaphore | all t1: succs.t | s in t1.signals
-- div,3
all t:Track | some s:Semaphore | some Junction & t.succs implies s in t.signals
-- div,1
all t:Track|some s: t.signals| some (t.succs & Junction) implies s in Semaphore
-- div,2
all t:Track|some s: t.signals|  #(t.succs & Junction)>0 implies s in Semaphore
-- div,1
all t : Track, j : Junction | one s : Semaphore | j in t.succs => s in t.signals
-- div,2
all t : Track, j : Junction | some s : t.signals | j in t.succs implies s in Semaphore
-- div,1
all t: Track, j: Junction | some s:Semaphore| j in t.succs implies j in t.signals
-- div,1
all t:Track, j:Junction |some e:Semaphore | j in t.succs implies e in t.signals
-- div,2
all t : Track , j : Junction | some s : Semaphore | s in t.signals and no j.signals
-- div,1
all x: Track, j: Junction | some s: Semaphore | j in x.succs implies s in x.signals
-- div,1
all t: Track,j:Junction|some s:Semaphore| j in t.succs => s in t.signals
-- div,36
all t:Track, j:Junction | some s:Semaphore | j in t.succs <=> s in t.signals
-- div,1
all f:Track, j:Junction| some s:Semaphore| j in f.succs implies f-> s in signals
-- div,2
all t:Junction, x:Track| some s:Semaphore| t in x.succs implies x->s in signals
-- div,1
all x: Track, j: Junction | some s: Semaphore | j in x.^succs implies s in x.signals
-- div,1
all t:Track, j:Junction | some s:Semaphore | j in t.^(succs) implies s in t.signals
-- div,1
all a,b:Track| one s:Semaphore| b in Junction and a->b in succs implies a->s in signals
-- div,1
all t:Track | all j:Junction | j in t.succs implies one s:Semaphore | s in t.signals
-- div,1
all x:Junction | some z:Semaphore | all y:Track | x in y.succs implies z in y.signals
-- div,1
all t:Track |all j:Junction| some s:Semaphore | j in t.succs implies s in t.signals
-- div,5
all x:Junction | all t :Track |some z:Semaphore | x in t.succs implies z in t.signals
-- div,1
all t: Junction | some s: Semaphore | all t1: Track | t1 in succs.t implies s in t1.signals
-- div,1
all x1 : Track | all y : Junction | some z : Semaphore | y in x1.succs implies z in x1.signals
-- div,1
all t: Track | t in Junction implies all t1: ^(succs).t | some s: Semaphore | s in t1.signals
-- div,2
all t1,t2:Track | t2 in t1.succs and one (Junction & t2) implies (one s:Semaphore | s in t1.signals)
-- div,1
all t: Track | t in Junction implies all t1: *(succs).t | some s: Semaphore | s in t1.signals
-- div,2
all t1,t2:Track | some s:Semaphore | t2 in t1.succs and one (Junction & t2) implies s in t1.signals
-- div,1
all x1 : Track | all y : Junction | some z : Semaphore | y in x1.^succs implies z in x1.signals
-- div,1
all x,y:Track |some s:Signal| x->y in succs and y in Junction implies x->s in signals and s in Semaphore
-- div,5
all t: Track | t in Junction implies some s: Semaphore | all t1: Track | t1 in succs.t implies s in t1.signals
-- div,2
