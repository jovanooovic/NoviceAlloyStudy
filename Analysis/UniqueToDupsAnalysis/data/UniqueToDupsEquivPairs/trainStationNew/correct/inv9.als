-- equiv pair start,134
signals.Semaphore in succs.Junction
-- div,1
no Semaphore & (Track - succs.Junction).signals
-- div,2
no (Track - succs.Junction).signals & Semaphore
-- div,3
no (Track - succs.Junction).signals :> Semaphore
-- div,5
all t : Track | signals.Semaphore in succs.Junction
-- div,1
all t : Track | t in signals.Semaphore implies t in succs.Junction
-- div,2
all t: Track | t not in succs.Junction implies t not in signals.Semaphore
-- div,2
all x : Track | no x.succs & Junction => no x.signals & Semaphore
-- div,1
all t : Track | no t.succs & Junction => no t.signals & Semaphore
-- div,23
all t:Track | no Junction & t.succs => no t.signals & Semaphore
-- div,5
all x : Track | no Junction & x.succs implies no Semaphore & x.signals
-- div,1
all t:Track | no t.succs & Junction => no Semaphore & t.signals
-- div,7
all t: Track | no Junction & t.succs => no Semaphore & t.signals
-- div,20
all t : Track | no t.succs & Junction implies no t.signals :> Semaphore
-- div,1
all t : Track | t in Track - succs.Junction implies no t.signals & Semaphore
-- div,2
all t : Track | no t.succs&Junction implies t.signals in Signal-Semaphore
-- div,5
all t:Track, s:Semaphore| no (t & succs.Junction) implies s not in t.signals
-- div,1
all t:Track, s:Semaphore | no t.succs & Junction => s not in t.signals
-- div,30
all t : Track | #(t.succs & Junction) = 0 implies # (t.signals & Semaphore) = 0
-- div,1
all t:Track | not some (Junction & t.succs) => not some (Semaphore & t.signals)
-- div,1
all t:Track|all s: t.signals| no (t.succs & Junction) implies s not in Semaphore
-- div,1
all t : Track | all s : Semaphore | (no t.succs & Junction) implies s not in t.signals
-- div,2
all t:Track | no t.succs & Junction implies(all s:Semaphore | s not in t.signals)
-- div,4
all t:Track | no t.succs & Junction => not some s:Semaphore| s in t.signals
-- div,1
all t:Track | no Junction & t.succs => (not some s:Semaphore | t->s in signals)
-- div,1
all t : Track | (all j : Junction | j not in t.succs) implies (all s : Semaphore | s not in t.signals)
-- div,6
all e : Track |  (not (some j : Junction|j in e.succs)) implies (all s : Semaphore | s not in e.signals)
-- div,1
all t:Track| (not some j:Junction | t->j in succs) => (not some s:Semaphore | t->s in signals)
-- div,1
all t:Track | (all t2:Track | t->t2 in succs implies t2 not in Junction) implies (all s:Signal | t->s in signals implies s not in Semaphore)
-- div,1
all t : Track | no t.succs implies no t.signals&Semaphore
all t : Track | no t.succs&Junction implies no t.signals&Semaphore
-- div,1
all t: Track, s:Semaphore | no t.succs & Junction => s not in t.signals
all t: Track, s:Semaphore | no t.succs & Junction => s not in t.signals
-- div,1
-- equiv pair end
