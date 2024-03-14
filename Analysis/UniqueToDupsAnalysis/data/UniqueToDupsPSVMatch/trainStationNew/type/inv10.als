all t:Track | one Junction in succs.t
-- div,1
succs.Junction.signals.Semaphore = succs.Junction
-- div,1
(succs.Junction).signals.Semaphore = succs.Junction
-- div,1
all t : succs.Junction | some Semaphore in t.signals
-- div,1
all j : Junction | #((succs.j).signals.Semaphore > 1)
-- div,1
(succs.Junction).signals :> Semaphore = succs :> Junction
-- div,2
all t: Track | t.succs.Junction => t.signals.Semaphore.size > 0
-- div,2
all t : Track, s:Semaphore | t.succs & Junction => s in t.signals
-- div,1
all t : Track | (Junction & t.succs) implies (Semaphore & t.signals)
-- div,1
all t : Track | (succs.t & Junction) implies (t.signals & Semaphore)
-- div,1
all t : Track | some Junction & t.succs implies Semaphore & t.signals
-- div,1
all t: Track | t.succs in Junction implies some t.signals in Semaphore
-- div,1
all t : Track | one s: Semaphore | t.succs & Junction => s in t.signals
-- div,1
all t : Track | one s : Semaphore | t.~succs.Junction => s in t.signals
-- div,1
all t : Track | t.succs in Junction implies some Semaphore in t.signals
-- div,1
all t:Track, j:Junction, s:Semaphore | j = t.succs[0] <=> s in t.signals
-- div,1
all t:Track |all e:Semaphore | Junction & t.succs implies e in t.signals
-- div,1
all t : Track, j : Junction | j in t.succs implies Semaphore & t.signals
-- div,1
all t : Track, j : Junction | t in succs.j implies Semaphore & t.signals
-- div,1
all t:Track, j:Junction, s:Semaphore | j in t.succs[0] <=> s in t.signals
-- div,1
all t : Track | (succs.t & Junction) implies some (t.signals & Semaphore)
-- div,1
all t : Track | (succs.t & Junction )implies some (t.signals & Semaphore)
-- div,1
all t:Track|  #(t.succs & Junction)>0 implies some (t.signals in Semaphore)
-- div,1
all t : Track | some Junction in t.succs implies some Semaphore in t.signals
-- div,1
all t: Track| some t1: Junction| t1 in t.succs => one Semaphore in t.signals
-- div,1
all t : Track | all s : Semaphore | (succs.t & Junction) implies s in t.signals
-- div,1
all t:Track, j:Junction | some s:Semaphore | j in t.succs[0] <=> s in t.signals
-- div,1
all t: Track| t.succs in Junction and t.succs not Exit => Semaphore in t.signals
-- div,1
all t : Track | some (t in Junction . succs) => some ((t . signals) & Semaphore)
-- div,1
all t : Track | (some Junction) in t.succs  implies (some Semaphore) in t.signals
-- div,1
all t: Track| all t1: Junction | t1 in t.succs and t1 not Exit => Semaphore in t.signals
-- div,1
all t : Track | (all j : Junction | j in t.succs) implies (all s : Semaphore | signals.s)
-- div,1
all t1,t2:Track | t2 in t1.succs and one (Junction & t2) implies one (Semaphore in t1.signals)
-- div,1
all t1:Track | some t2:Track | t2 & t1.succs and (Junction & t2) implies Semaphore in t1.signals
-- div,1
all t1:Track | some t2:Track | t2 in t1.succs and (Junction & t2) implies Semaphore in t1.signals
-- div,1
all t1:Track | some t2:Track | t2 & t1.succs and one (Junction & t2) implies Semaphore in t1.signals
-- div,1
