signals.Semaphore = succs.Junction
-- div,2
all t : Track | signals.Semaphore = succs.Junction
-- div,1
all t1:Track, s:Semaphore |  t1->s not in (signals)
-- div,1
all t : Track | t in succs.Junction - signals.Semaphore
-- div,1
all t : Track | t not in succs.Junction + signals.Semaphore
-- div,1
all t : Track | no t.succs & Junction implies no t.signals
-- div,1
all t:Track | no Junction&t.succs implies no t.signals
-- div,3
all t : Track | no (Junction & t.succs) <=> no (Semaphore & t.signals)
-- div,1
all t: Track| no (t.succs & Junction) <=> no (t.signals & Semaphore)
-- div,4
all t: Track| lone (t.succs & Junction) <=> no (t.signals & Semaphore)
-- div,1
all t:Track | some (t.signals & Semaphore) iff some (t.succs & Junction)
-- div,1
all t : Track | some j : Junction | j not in t.succs implies no t.signals
-- div,1
all t: Track | some (t.succs & Junction) <=> some (t.signals & Semaphore)
-- div,1
all t: Track, s:Semaphore | no t.succs & Junction <=> s not in t.signals
-- div,2
all t:Track, s:Semaphore | s not in t.signals iff (all j:Junction | j not in t.succs)
-- div,1
all t:Track, j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals)
}

fact {some Junction
-- div,2
all t: Track | some j: Junction | j not in t.succs => all s: Semaphore | s not in t.signals
-- div,1
all t : Track | one k : Junction | all s : Semaphore | t->k not in succs implies t->s not in signals
-- div,1
all t : Track | some k : Junction | all s : Semaphore | t->k not in succs implies t->s not in signals
-- div,1
all t:Track | some j:Junction | t->j not in succs implies all s:Semaphore | t->s not in signals
-- div,1
all t:Track| some j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals)
-- div,2
some Junction implies (all t:Track, j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals)) else no signals
-- div,1
all t : Track | no t.succs implies no t.signals&Semaphore
all t1,t2 : Track | t2 in t1.succs and t2 not in Junction implies no t1.signals&Semaphore
-- div,1
all t:Track | no (Junction & t.succs) implies (all s:Semaphore | s not in t.signals)
all t:Track | one (Exit & t) implies (all s:Semaphore | s not in t.signals)
-- div,4
some Junction implies (all t:Track, j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals)) else all t:Track | (not some s:Semaphore | t->s in signals)
-- div,2
