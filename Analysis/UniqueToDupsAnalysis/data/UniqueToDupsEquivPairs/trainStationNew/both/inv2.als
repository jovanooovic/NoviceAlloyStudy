-- equiv pair start,2
one Track
-- div,1
one t : Track | t.signals in Track.signals
-- div,1
-- equiv pair end
-- equiv pair start,2
lone signals
-- div,1
all t : Track | lone signals
-- div,1
-- equiv pair end
-- equiv pair start,2
one Track.signals
-- div,1
one Signal & Track.signals
-- div,1
-- equiv pair end
-- equiv pair start,4
one signals.Signal
-- div,3
one t: Track | some t.signals
-- div,1
-- equiv pair end
-- equiv pair start,1
lone signals.Signal
-- div,1
-- equiv pair end
-- equiv pair start,3
all s:Signal | one Track
-- div,3
-- equiv pair end
-- equiv pair start,2
all t:Track|one signals.t
-- div,1
all t1, t2 : Track | no t1.signals & t2.signals and t1 != t2
-- div,1
-- equiv pair end
-- equiv pair start,7
~signals . signals in iden
-- div,1
all t : Track | lone t.signals
-- div,2
all t : Track, s : Signal | lone t.signals
-- div,1
all s, s1: Signal, t: Track | t->s in signals and t->s1 in signals implies s = s1
-- div,2
all s1,s2 : Signal, t : Track | t -> s1 in signals and t -> s2 in signals implies s1=s2
-- div,1
-- equiv pair end
-- equiv pair start,4
signals in Track -> one Signal
-- div,2
all t:Track|one t.signals
-- div,1
all t : Track | one s : Signal | s in t.signals
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Signal | one Track.signals
-- div,1
-- equiv pair end
-- equiv pair start,1
one t : Track | t.signals in Track
-- div,1
-- equiv pair end
-- equiv pair start,1
some x: Signal | x in Track.signals
-- div,1
-- equiv pair end
-- equiv pair start,1
~signals in Signal one -> lone Track
-- div,1
-- equiv pair end
-- equiv pair start,7
all x: Signal, y : Track | x in y.signals
-- div,1
all s: Signal, t : Track | s in t.signals
-- div,3
all s:Signal, t:Track| t->s in signals
-- div,1
all s:Signal | all t:Track | t->s in signals
-- div,1
all s:Signal, t1:Track | s in t1.signals and s not in Track.signals - t1.signals
-- div,1
-- equiv pair end
-- equiv pair start,1
some s:Signal|one t:Track| t->s in signals
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Signal| some t: Track| one t.signals
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Signal | all t:Track | s->t in signals
-- div,1
all s:Signal, t1:Track | s in t1.signals and s not in Track.signals - t1
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Signal | s in Track.(^succs).signals
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1, t2: Track | no (t1.succs & t2.succs)
-- div,1
-- equiv pair end
-- equiv pair start,13
all t,u : Track | no (t.signals & u.signals)
-- div,1
all t1,t2: Track | no (t1.signals & t2.signals)
-- div,2
all s:Signal, t1,t2:Track | s in t1.signals => s not in t2.signals
-- div,2
all s : Signal, t : Track | s in t.signals implies s not in t.*(succs).signals
-- div,1
all s:Signal, t1:Track | s in t1.signals => s not in Track.signals - t1
-- div,1
all t1 : Track, t2: Track, s : Signal | (s in t1.signals) implies (s not in t2.signals)
-- div,1
all x : Signal | all t,m : Track | x in t.signals and x in m.signals implies t!=m
-- div,1
all x : Signal | all t,m : Track | (x in t.signals and x in m.signals) implies x!=x
-- div,1
all x,y : Signal | all t,m : Track | x in t.signals and y in m.signals implies y!=x
-- div,1
all t1,t2: Track | no ((t1.signals + t1.^succs.signals) & (t2.signals + t2.^succs.signals))
-- div,1
all t1 : Track | all t2: Track | all s : Signal | (s in t1.signals) implies (s not in t2.signals)
-- div,1
-- equiv pair end
-- equiv pair start,4
one t : Track | all s : Signal | s in t.signals
-- div,2
one t1:Track | all s:Signal | t1->s in signals
-- div,2
-- equiv pair end
-- equiv pair start,2
all s:Signal, t1:Track | s not in Track.signals - t1.signals
-- div,2
-- equiv pair end
-- equiv pair start,1
all s : Signal, t : Track | s in t.signals implies s not in t.succs.signals
-- div,1
-- equiv pair end
-- equiv pair start,2
all t, t1: Track | some s: Signal | s in t.signals && s in t1.signals => t=t1
-- div,1
all t1,t2:Track | some s:Signal | t1->s in signals and t2->s in signals implies t1=t2
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Signal, t : Track | s in t.signals implies s not in t.^(succs).signals
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Signal, t1, t2 : Track | s in t1.signals and s in t2.signals and t1 = t2
-- div,1
all s : Signal, t1, t2 : Track | t1->s in signals and t2->s in signals and t1 = t2
-- div,1
all s : Signal | all t1, t2 : Track | s in t1.signals and s in t2.signals and t1 = t2
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2: Track | lone ((t1.signals + t1.^succs.signals) & (t2.signals + t2.^succs.signals))
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1, t2: Track,
s: Signal |
((s in t1.(^succs.signals)) and (s in t2.(^succs.signals))) implies t1 = t2
-- div,1
-- equiv pair end
