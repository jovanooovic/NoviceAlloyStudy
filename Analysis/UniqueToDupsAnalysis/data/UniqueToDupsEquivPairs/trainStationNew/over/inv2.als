-- equiv pair start,5
one signals.Track
-- div,1
some s:Signal | s in Track
-- div,3
some t : Track | all tr : Track | t.signals != tr.signals
-- div,1
-- equiv pair end
-- equiv pair start,19
all s : Signal | s in Track
-- div,2
all s : Signal | some succs.s
-- div,1
all s:Signal | one s.signals
-- div,3
all si : Signal | one si.signals
-- div,1
all x:Signal | one y: Track | x in y
-- div,1
all s:Signal |one t:Track | s in t
-- div,3
all si:Signal | one t:Track | t in si
-- div,1
all s:Signal | one t:Track | s in t.succs
-- div,1
all s:Signal | one t:Track | s->t in signals
-- div,2
all a : Signal | one b : Track | a -> b in signals
-- div,1
all s : Signal | some x : Track | s in signals.x
-- div,1
all t1, t2: Track,
s: Signal |
((s in t1.(^succs.signals)) and (s in t2.(^succs.signals))) implies t1 = t2
Signal in Track
-- div,1
all t1, t2: Track,
s: Signal |
((s in t1.(^succs.signals)) and (s in t2.(^succs.signals))) implies t1 = t2
all s: Signal | s in Track
-- div,1
-- equiv pair end
-- equiv pair start,1
one t : Track | all s : Signal | s = t.signals
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Signal | one signals.s
one signals.Signal
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Signal | one t1,t2: Track | s in t1.signals
-- div,1
-- equiv pair end
