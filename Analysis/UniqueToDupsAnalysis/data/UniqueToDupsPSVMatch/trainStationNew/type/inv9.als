no Semaphore in (succs.Junction).signals
-- div,1
all t: Track | not (t in succs & Semaphore)
-- div,1
no succs.(Track - Junction).signals.Semaphore
-- div,2
no (succs.(Track - Junction)).signals.Semaphore
-- div,1
all t: Track |  not (some t.^(succs) && Junction)
-- div,1
all t : Track | no t.succs = Junction implies no t.signals
-- div,1
all t : Track | no t.succs in Junction implies no t.signals
-- div,1
all t : Track | no Junction in t.succs implies no t.signals
-- div,1
all t:Track | t not in succs.Junction implies no t.Semaphore
-- div,1
all t: Track | t.succs in Junction => no Semaphore in t.signals
-- div,2
all t : Track | Junction in succs.t => no Semaphore in t.signals
-- div,2
all t:Track | no Junction&t.succs implies no t.signals#Semaphore
-- div,1
all t : Track, j : Junction | j not in t.succs <=> no t.Semaphore
-- div,1
all t: Track | no Junction in t.succs => no Semaphore & t.signals
-- div,1
all t: Track| (t.succs & Junction) <=> no (t.signals & Semaphore)
-- div,1
all t: Track | t.succs in Junction => no (Semaphore in t.signals)
-- div,1
all t: Track | no t.succs.Junction => t.signals.Semaphore.size = 0
-- div,1
all t:Track | Junction not in t.succs => no Semaphore in t.signals
-- div,2
all t: Track | no Junction in t.succs => no Semaphore in t.signals
-- div,1
all t : Track | Junction in succs.t => no (Semaphore in t.signals)
-- div,1
all x : Track | no Junction & x.succs implies Semaphore & x.signals
-- div,1
all t : Track, j : Junction | j in t.succs => no Semaphore in t.signals
-- div,1
all t : Track | no Junction and t.succs implies no Semaphore & t.signals
-- div,1
all t:Track, s:Semaphore | no t.succs and Junction => s not in t.signals
-- div,1
all t: Track, s:Semaphore | not t.succs & Junction => s not in t.signals
-- div,1
all t:Track, s:Semaphore | t not in succs.Junction implies no t.Semaphore
-- div,1
all t: Track, s:Semaphore | no succs.t && Junction <=> s not in t.signals
-- div,1
all t:Track | no (Junction & t.succs) implies no (Semaphore in t.signals)
-- div,1
all t : Track, j : Junction | j not in t.succs <=> no t.signals.Semaphore
-- div,1
all t: Track, s:Semaphore | no succs.t && Junction <=>  s not in t.signals
-- div,1
all t : Track, s: Semaphore | no t.succs in Junction => s not in t.signals
-- div,1
all t : Track | no (Junction & t->succs) implies no (Semaphores & t->sucks)
-- div,1
all t: Track | all j: Junction | j in t.succs => not (Semaphore & t.signals)
-- div,1
all t: Track, s:Semaphore | no t.succs in Junction implies s not in t.signals
-- div,1
all t: Track, s:Semaphore | no t.succs && Junction implies s not in t.signals
-- div,1
all t : Track | no (Junction & t->succs) implies no (Semaphores & t->signals)
-- div,1
all t:Track, s:Semaphore | no t.succs and Junction implies s not in t.signals
-- div,1
all t : Track | some t.signals in Semaphore implies some t.^succs in Junction
-- div,1
all t: Track, s:Semaphore | not t.succs & Junction implies s not in t.signals
-- div,1
all t:Track | not some j:Junction | j in t.succs => no Semaphore in t.signals
-- div,1
all t : Track, s: Semaphore | no t.succs not in Junction => s not in t.signals
-- div,1
all t: Track, j: Junction, s: Semaphore |   t.succs implies s not in t.signals
-- div,1
all t : Track | not (Junction & t.succs) implies (not (Semaphore & t.signals))
-- div,3
all t : Track | t not in succs.Junction iff Semaphore not in t.signals and Speed
-- div,1
all t:Track | no Junction in t.succs => (not some s:Semaphore | t->s in signals)
-- div,1
all t:Track | all j:Junction | j not in t.succs implies no Semaphore in t.signals
-- div,1
all t: Track | (t.succs = Junction + Entry + Exit) => (t.signals & Semaphore = {})
-- div,1
all t : Track, j : Junction | j not in t.succs implies (no Semaphore in t.signals)
-- div,1
all t : Track, j : Junction | j not in t.succs implies none (Semaphore & t.signals)
-- div,1
all t : Track, j : Junction, s : Semaphore | j not in t.succs <=> no s in t.signals
-- div,1
all t: Track | (t.succs = Junction + Entry + Exit) => (t.signals && Semaphore = {})
-- div,1
all t: Track | some j: Junction | j not in t.succs => one Semaphore not in t.signals
-- div,1
all t:Track, j:Junction | not t->j in succs => (all s:Semaphore | no t->s in signals)
-- div,1
all t : Track | one j : Junction | j in t.succs implies (no s : Semaphore | t.signals)
-- div,2
all t:Track | not some Junction in t.succs => (not some s:Semaphore | t->s in signals)
-- div,1
all t : Track, j : Junction, s : Semaphore | j not in t.succs implies no s in t.signals
-- div,1
all t: Track | (t.succs = Junction + Entry + Exit) implies (t.signals & Semaphore = {})
-- div,1
all t:Track, s:Semaphore | t in Junction not in Track.^(succs) => s not in Track.signals
-- div,2
all t1,t2 : Track | t2 in t1.succs and t1 not in Junction implies none t2.signals&Semaphore
-- div,1
all t:Track | all j:Junction | no t.succs in j  implies(all s:Semaphore | s not in t.signals)
-- div,1
all x:Track | all z:Semaphore| all y : Junction | y not in succs.^x implies z not in x.signals
-- div,1
all t:Track, s:Semaphore | t not in Junction and t.succs.Junction = none => s not in t.signals
-- div,2
all x:Track | all z:Semaphore| all y : Junction | (y not in succs.^x) implies z not in x.signals
-- div,1
all t1:Track | some t2:Track | t2 in t1.succs and (Junction & t2) implies Semaphore in t1.signals
-- div,1
all t : Track | all j : Junction | all s : Semaphore | no j in t.succs implies s not in t.signals
-- div,1
all t : Track | all j : Junction | all s : Semaphore | j not in t.succs implies no s in t.signals
-- div,1
all t : Track | all j : Junction | all s : Semaphore | j not in ^t.succs implies s not in t.signals
-- div,1
all t1:Track | some t2:Track | t2 in t1.succs and (Junction & t2) implies Semaphore not in t1.signals
-- div,1
all t : Track | all j : Junction | j not in (t.succs) implies (all s : Semaphore | no s in t.signals)
-- div,1
all t : Track | all j : Junction | (j not in t.succs) implies (all s : Semaphore | no s in t.signals)
-- div,1
all t1,t2 : Track | t2 in t1.succs and t1!=t2 and t1 not in Junction implies no Semaphore in t2.signals
-- div,1
all disj t,t2:Track, s:Semaphore | (t2 in Junction && t2 in t.succs) || t.succs=none -> s not in t.signals
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | some (Exit & t1) implies no (Signal in t1)
-- div,1
all t1,t2:Track | t2 in t1.succs and no (Junction & t2) implies Semaphore not in t1.signals
all t1:Track | (Exit & t1) implies Semaphore not in t1.signals
-- div,1
