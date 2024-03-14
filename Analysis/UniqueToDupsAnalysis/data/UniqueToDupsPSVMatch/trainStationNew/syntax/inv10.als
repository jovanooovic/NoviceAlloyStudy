}

run { some t: Track | t in Junction implies #succs.t > 1
-- div,1
all x,y:Track
-- div,1
all t : Track | all j : Junction |
-- div,1
succs.Junctions->Semaphore in signals
-- div,2
all j : Junction | #(succs.j) Semaphore)
-- div,1
all j : Junction, t : succs.j | some t.signal
-- div,1
all j : Junction | all t : Track | all s : Semaphore |
-- div,1
all t : Track, s:Semaphore | t.succ & Junction => s in t.signals
-- div,1
all t : Track | t in succ.Junction implies t in signals.Semaphore
-- div,1
all t:Track | t.succ in Junction implies one (t.signal & Semaphore)
-- div,1
all t : Track | t in succs.Junction implies Semapthore in t.signals
-- div,1
all t:Track | t.succs in Junction implies one (t.signal & Semaphore)
-- div,1
all t:Track| some(Junction & t.succs) => some(Sempahore & t.signals)
-- div,1
all t:Track | some s:Semaphore | j in t.succs implies s in t.signals
-- div,1
all t : Track | (all j : Junction | j in t.succs) implies one signals.s
-- div,1
all t:Track, j:Junction ,some s:Semaphore | j in t.succs => s in t.signals
-- div,1
all f:Track, j:Junction, s:Semaphore| j in f.sucss implies f-> s in signals
-- div,1
all t : Track | some t.succs & Junction implies one t.signals & Semaphore
}
-- div,1
all t:Track, j:Junction , some s:Semaphore | j in t.succs => s in t.signals
-- div,2
all t : Track | some t.succs & Junction implies some t.signals & Semaphore
}
-- div,2
all t : Track , j : junction , s : semathore | s in t.signals and no j.signal
-- div,1
all t : Track | some s: Semaphore | Junction in tsuccs implies s in t.signals
-- div,1
all t : Track | t.succs in Junction implies (some s : Semaphore | s t.signals)
-- div,1
all t: Track, j: Junction | some s: Semaphore| t in j.occurs => s in t.signals
-- div,1
all t : Track | all s : Semaphore | (succs.t & Juction) implies s in t.signals
-- div,2
all t: Tracks, j: Junction | some s: Semaphore| t in j.occurs => s in t.signals
-- div,1
all t:Junction, x:Track| some s:Semaphore| j in x.succs implies x->s in signals
-- div,1
all t : Track | t.succs in Junction implies (some s : Semaphore | s in t.signals
-- div,1
all t : Track | all s : Semaphore | (Juntion in succs.t ) implies s in t.signals
-- div,1
all a,b:Track, s:Semaphore| b in Junction and b->a in succs implies a->s in signal
-- div,1
all a,b:Track, s:Semaphore| b in junction and b->a in succs implies a->s in signal
-- div,1
all t1,t2:Tracks | t2 in t1.succs and Junction in t2 implies Semaphore in t1.signals
-- div,1
all t : Track, j : Junction, some s : t.signals | j in t.succs implies s in Semaphore
-- div,1
all x:Junction | some z:Semaphore | all y:Tracks | x in y.succs implies z in y.signals
-- div,1
all t: Track | some j: Juntion | j in t.succs implies some s: Semaphore | s in t.signals
-- div,1
all t: Track| all t1: Junction | (t1 in t.succs and t1 not Exit) => Semaphore in t.signals
-- div,1
all t : Track  | all j : Jumction | some s: Semaphore | j in succs.t implies s in t.signals
-- div,1
all t : Track | (all j : Junction | j in t.succs) implies(all s : Semaphore | s in t.signals
-- div,1
all x1 : Track | all y : Junction | some z : Semaphore | y in x.^succs implies z in x.signals
-- div,1
all t : Track, all j : Junction | (j in t.succs) implies (some s : Semaphore | s in t.signals)
-- div,1
all t : Tracks | all j : Junction | t in j.succs implies (some s : Semaphore | s in t.signals)
-- div,1
all t : Track, j : Junction, some s : t.signals | t != j and  j in t.succs implies s in Semaphore
-- div,1
all t1,t2:Track | t2 in t1.succs and one (Junction & t2) implies (lone s:Semaphore) | s in t1.signals)
-- div,1
