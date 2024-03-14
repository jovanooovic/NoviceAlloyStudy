all t1,t2:
-- div,1
all disj t,t2:Track, s:Semaphore
-- div,1
no (succs.Junction).signals :> Sempahore
-- div,1
all t:Track | () => (Semaphores not in )
-- div,1
no (succs.Junction).signals :> Sempahores
-- div,1
no Semaphore & (Tracks - succs.Junction).signals
-- div,1
(Tracks - Junction.succs) not in Semaphore.signals
-- div,1
all t: Junction | t.succs.signals not in Semaphores
-- div,1
all x: Tracks-Junction | x->Semaphore not in signals
-- div,2
all t:Track | no Junction&t.succs implies no t.signal
-- div,1
all t : Track | no t.succst & Junction implies no t.signals
-- div,1
all t:Track|  (t not in succs.j) => t.signals in Semaphore
}
-- div,1
all t:Track 1  (t not in succs.j) => t.signals in Semaphore
}
-- div,1
all t : Track <: Junction.succs | some in t.signals&Semaphore
-- div,1
all t:Track |  (t not in succs.j) => t.signals in Semaphore
}
-- div,1
all t:Track | no Junction&t.succ implies no t.singals#Semaphore
-- div,1
all x : Track | no x.succs & Junction => no x.signal & Semaphore
-- div,1
all t:Track | no Junction&t.succs implies no t.singals#Semaphore
-- div,1
all x : Track | no t.succs & Junction => no t.signal & Semaphore
-- div,1
all t: Track | t.succs in Junctions => no Semaphore in t.signals
-- div,1
all t:Track | no Junction&t.succs implies no t.signals&Semaphores
-- div,1
all t : Tracks, j : Junction | j not in t.succs <=> no t.Semaphore
-- div,1
all t:Track | Junction not in t.succs => no Semaphore in t.signals
}
-- div,2
all j : Junction, no t : succs.j | some s:Semaphore | s in t.signals
-- div,2
all t : Track | no t.succs & Junction implies no t.signals & Semphore
-- div,1
all t: Track, s: Semaphore| no t.sucss & Juntion => s not in t.signals
-- div,1
all t : Track, j : Juntion | j in t.succs => no Semaphore in t.signals
-- div,1
all t: Track, s: Semaphore| no t.succs & Juntion => s not in t.signals
-- div,1
all t : Track | no (Juntion&t.succs) implies no (Semaphores&t.signals)
-- div,1
all t : Track | t.succs not in Junction => t.signals not in Semaphores
-- div,1
all t : Track | no Junction & t.succs implies no Semaphores & t.signals
-- div,1
all t:track | Junction not in t.succ implies Semaphore not in t.signals
-- div,1
all t : Tracks | t.succs not in Junction => t.signals not in Semaphores
-- div,1
all t : Track | no (Junction&t.succs) implies no (Semaphores&t.signals)
-- div,1
all t:Track | Junction not in t.succ implies Semaphore not in t.signals
-- div,1
all t : Track | some Junction <: t.succ implies no Semaphore & t.signals
-- div,1
all t : Track | (t.succ not in Junction) => (t.signals not in Semaphore)
-- div,1
all t:Track | some (t.signals & Semaphores) iff some (t.succs & Junction)
-- div,1
all t:Track, s:Semaphore | t not in succs.Juntion implies no t.Semaphores
-- div,1
all t : Track | t not in Juntion.succs implies Semaphore not in t.signals
-- div,1
all t:Track, s:Semaphore | t not in succs.Junction implies no t.Semaphores
-- div,1
all t:Tracks, s:Semaphore | t not in succs.Juntion implies no t.Semaphores
-- div,1
all t : Track | t not in succs.Jumction implies Semaphore not in t.signals
-- div,1
all t : Tracks | succs.t not in Junction implies no (t.signals & Semaphore)
-- div,1
all t : Track | no (Junction & t.succs) implies no (Semaphores & t.signals)
-- div,1
all t:Track, j : Junction |  (t not in succs.j) => t.signals in Semaphore
}
-- div,1
all t:Track | no (Junction & t.succs) implies no (Semaphore & (t1.signals))
-- div,1
all t : Track | Junction not in t.succs implies Semaphores not in t.signals
-- div,1
all t : Track | t.succs not in Junctions implies t.signals not in Semaphore
-- div,1
all t:Track, s:Semaphore| no (t & succs.Junction) implies s not in t.Signals
-- div,1
all t:Track, s:Semaphoire | no t.succs and Junction implies s not in t.signals
-- div,1
all t: Track | all t1: t.succs | t1 not in Junction implies s not in t.signals
-- div,1
all t : Track | no j not in (t.succs & Junction)  => no (t.signals & Semaphore)
-- div,1
all t : Tracks | some s : Semaphore | t in Junction.succs implies s in t.signals
-- div,1
all t:Track | t in Exit || (t not in succs.Junction) => t.signals in Semaphore
}
-- div,1
all t:Track | Junction not in t.^succs implies (no t.signals and s in Semaphore)
-- div,1
all t: Track, s:Semaphore | no t.succs & Junction => s not in t.signals para o 9
-- div,2
all t:Tracks|all s: t.signals| t.succs not in Junction implies s not in Semaphore
-- div,1
all t:Track | (t in Exit || t not in succs.Junction) => disj t.signals, Semaphore
-- div,1
all t:Task, s:Semaphore | s not in t.signals iff (some j:Junction | j in t.succs)
-- div,1
all t:Track | (all s:t.succs | s in Junction) -> no (s:Semaphore | s in t.signals)
-- div,3
all t: Track | t.succs not in Junction implies t.signals not in Semaphore
-- div,2
all t : Track | all j : Track - Junction | j not in t.succs implies s no t.signals
-- div,2
all t:Track | (all s:t.succs | s in Junction) => no (s:Semaphore | s in t.signals)
-- div,1
all t1,t2:Track | t1 in Entry && t2 in Exit && t1 != t2 implies t2 in t1.^(succs)
}
-- div,1
all t : Track, j : Junction | j in t.succs implies (none s : Semaphore | t.signals)
-- div,1
all t: Track | some x: Junction | no (t.succ & Junction) <=> no (t.signals & Speed)
-- div,1
all x : Track | x.^succs in Junction implies x.signals in Semaphore
-- div,1
all disj t1, t2:Track | Junction not in t1.succ implies Semaphore not in (t1.signals)
-- div,1
all t : Track, j : Junction | j not in t.succs implies (none (Semaphore & t.signals))
-- div,1
all t: Track, j: Junction, s: Semaphore |  j not in t.succs implies  not in t.signals
-- div,1
all a,b:Track|b in Junction and b->a in succs implies all s:Semaphores| a->s in signals
-- div,1
t:Track| some j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals)
-- div,1
all t : Track | one j : Junction | j in t.succs implies (none s : Semaphore | t.signals)
-- div,1
all t : Tracks, j : Junction, s : Semaphore | j not in t.succs implies s not in t.signals
-- div,1
all t1,t2 : Track | t2 in t1.succs and t1 not in Junction implies some t.signals&Semaphore
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.siganls
-- div,1
all t:Track,j:Junction |t.succs.next not in Junctions implies t.signals.next not in Semaphore
-- div,1
MAL !!! all t:Track, s:Semaphore | s not in t.signals iff (some j:Junction | j not in t.succs)
-- div,1
all x:Track | all z:Semaphore| all y : Junction | y not in succs^.x implies z not in x.signals
-- div,1
all t : Track | some k : Junction | t->k in succ implies (some s : Semaphore | t->s in signals)
-- div,1
all t,k : Track | t->k in succ and t in Junction implies (some y : Semaphore | k->s in signals)
-- div,1
all j : Junction | all t : Track | all s : Semaphore j not in t.succs implies s not in t.signals
-- div,1
all t,k : Track | t->k in succs and t in Junction implies (some y : Semaphore | k->s in signals)
-- div,2
all m : Message | (m in User.inbox) implies (m in Undelivered since send[m.from,m.to,m.content])
-- div,1
all x:Track | all z:Semaphore| all y : Junction | (y not in succs^.x) implies z not in x.signals
-- div,1
all t : Track, j : Junction | none s : Semaphore| (j not in t.succs) implies (s not in t.signals)
-- div,1
all t : Tracks | all j : Junction | all s : Semaphore | j not in t.succs implies no s in t.signals
-- div,1
all e : Track | all j : Junction | e not in j.succs implies (all s : Semaphores | s not in e.signals)
-- div,1
all t : Track | (all j : Junction | j not in t.succs) implies (all s : Sempahore | s not in t.signals)
-- div,1
all x,y:Tracks, s:Signal|x->y in succs and y in Junction implies x->s in signals and s not in Semaphore
-- div,1
all t : Track | all j : Signals - Junction | all s : Semaphore | j in t.succs implies s not in t.signals
-- div,1
all t : Track | all disj j1,j2 : Junction | all s : Semaphore | j1+j not in t.succs implies s not in t.signals
-- div,1
all e : Track | all j : Junction | (not (some j : Junction|j in e.succs) implies (all s : Semaphore | s not in e.signals)
-- div,1
all t : Track | no t.succs implies no t.signals&Semaphore
all t : Track | no t.succs&Junction implies no t1.signals&Semaphore
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies no (Siganl & t1)
-- div,1
all t:Track | no (Junction & t.succs) implies no (Junction & t.succs)



all t1:Track | one (Exit & t) implies (some s:Semaphore | s not in t.signals)
-- div,1
all t:Track | no (Junction & t.succs) implies no (Junction & t.succs)



all t1:Track | one (Exit & t) implies (some s:Semaphore | s not in t1.signals)
-- div,1
all disj t,t2:Track, s:Semaphore | t2 in Junction && t2 not in t.succs && t not in Entry && t not in Exit && t not in specialTrack => s not in t.signals
-- div,3
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies all s:Siganl (s not in t1)
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies (all s:Siganl | s not in t1)
-- div,1
some Junction implies (all t:Track, j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals)) else all t:Track | (not some s:Semaphore | t->s in signals))
-- div,1
some Junction implies (all t:Track, j:Junction | not t->j in succs => (not some s:Semaphore | t->s in signals)) else all t:Track | (not some s:Semaphore | t->s in signals)))
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies (one s:Siganl | s not in t1.signals and s in Semaphore)
-- div,1
