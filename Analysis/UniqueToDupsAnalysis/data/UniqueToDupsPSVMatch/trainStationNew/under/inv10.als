all j : Junction, t : succs.j | some t.signals
-- div,1
all t:Track | one (Junction & t.succs) => some (Semaphore & t.signals)
-- div,1
all t : Track | all j : Junction | j in t.succs implies some t.signals
-- div,3
all t1:Track | some t2:Track | t2 in t1.succs and one (Junction & t2) implies (some s:Semaphore | s in t1.signals)
-- div,1
all t1:Track | some t2:Track | t2 in t1.succs and one (Junction & t2) implies (some s:Signal | s in t1.signals and s in Semaphore)
-- div,1
