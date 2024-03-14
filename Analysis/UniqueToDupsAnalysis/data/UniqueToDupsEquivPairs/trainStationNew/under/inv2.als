-- equiv pair start,11
lone signals.Track
-- div,1
Track.signals in Signal
-- div,1
all s : Signal | one s
-- div,1
all s : Signal | lone s.signals
-- div,1
all t : Track, s : Signal | lone t
-- div,1
all t: Track | t.signals in Track.signals
-- div,1
all t1, t2: Signal | all s: t1.signals | s in t2.signals implies t1 = t2
-- div,1
all s:Signal, t1:Track | s in t1.signals => s not in Track.signals - t1.signals
-- div,1
all x : Signal | all t,m : Track | x in t.signals and x in m.signals implies x!=m
-- div,1
all s,x : Signal | all t,m : Track | (s in signals.t and x in signals.m) implies s!=m
-- div,1
all s,x : Signal | all t,m : Track | (s in t.signals and x in m.signals) implies s!=m
-- div,1
-- equiv pair end
-- equiv pair start,51
Track.signals = Signal
-- div,1
Signal = Track.signals
-- div,3
Signal in Track.signals
-- div,3
no Signal - Track.signals
-- div,3
Track.signals & Signal = Signal
-- div,1
all s:Signal | some signals.s
-- div,2
all x: Signal | x in Track.signals
-- div,1
all s:Signal | s in Track.signals
-- div,15
all x : Signal | one x & Track.signals
-- div,2
all x : Signal | some x & Track.signals
-- div,1
all s: Signal | s in (one Track.signals)
-- div,1
all s:Signal | some t:Track | s in t.signals
-- div,10
all s : Signal | some x : Track | s in x.signals
-- div,1
all s : Signal | some t : Track | t->s in signals
-- div,2
all s : Signal | s in Track.signals or s in Track.^succs.signals
-- div,3
all s : Signal | some t : Track | s in t.signals or s in t.^succs
-- div,1
all s : Signal | some t1, t2 : Track | s in t1.signals and s in t2.signals and t1 = t2
-- div,1
-- equiv pair end
-- equiv pair start,22
signals . ~signals in iden
-- div,2
all s : Signal | lone signals.s
-- div,4
all s : Signal | lone s.~signals
-- div,1
all disj t, t1 : Track | no t.signals & t1.signals
-- div,1
all x : Signal | lone y : Track | x in y.signals
-- div,1
all t,u : Track | t != u implies no (t.signals & u.signals)
-- div,1
all x,y: Track, s: Signal | x->s in signals and y->s in signals implies x=y
-- div,1
all s : Signal, t,t1 : Track | s in t.signals && s in t1.signals implies t = t1
-- div,2
all s: Signal, t1, t2: Track | s in t1.signals and s in t2.signals => t1=t2
-- div,4
all s: Signal, t1,t2 : Track | t1 -> s in signals and t2 -> s in signals implies t1=t2
-- div,2
all s: Signal | all t,t1 : Track | s in t.signals and s in t1.signals implies t=t1
-- div,1
all s : Signal | all t1, t2 : Track | s in t1.signals and s in t2.signals implies t1 = t2
-- div,1
all t1,t2:Track | all s:Signal | t1->s in signals and t2->s in signals implies t1=t2
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Signal | one t1:Track | s not in (Track.signals - t1.signals)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Signal | some t1,t2: Track | s in t1.signals and s in t2.signals implies t1=t2
-- div,1
-- equiv pair end
