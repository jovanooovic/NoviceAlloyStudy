no Signal - signals
-- div,2
one Signal in Track
-- div,3
Signal one -> some Track
-- div,1
all s : Signal | succs.s
-- div,1
one t : Track | t.signals
-- div,1
all s: Signal | #s.Track = 1
-- div,1
all s : Signal | one Track.s
-- div,1
all s : Signal | lone Track.s
-- div,1
Signal in signals -> one Track
-- div,1
all s : Signal | one s in Track
-- div,1
signals in Track -> one signals
-- div,1
all s:Signal | one (s in Track)
-- div,1
(signals in Track) one -> Signal
-- div,1
all s:Signal | one signals in Speed
-- div,1
all s : Signal | lone s in signals.s
-- div,2
some x: Signal | one Track.signals.x
-- div,1
all s : Signal | one Track.signals.s
-- div,1
all s:Signal | one Track in signals.s
-- div,1
all s:Signal | one Track in signals.~s
-- div,1
all s : Signal | one s.(Track.signals)
-- div,1
all x: Signal | one x in Track.signals
-- div,1
all s:Signal | one Track in ~signals.s
-- div,1
all s : Signal | one s in Track.signals
-- div,1
all x : Signal | one x in Track.signals
-- div,1
all s : Signal, t: Track | one t.signals.s
-- div,1
all s: Signal| some t: Track| #t.signals.s=1
-- div,1
all s: Signal| some t: Track| one t.signals.s
-- div,1
all s : Signal| all t: Track | one t.signals.s
-- div,1
all s : Signal, t : Track | one s in t.signals
-- div,1
all s : Signal | some x : Track | x.signals <=> s
-- div,1
one signal: Signal, track:Track | signal => track
-- div,1
all s : Signal | all t : Track| one s in t.signals
-- div,1
all s : Signal | all t : Track | one s in t.signals
-- div,1
all t : Track | all s : Signal | one s in t.signals
-- div,1
all s : Signal | all t: Track | lone (t in signals.s)
-- div,1
all s : Signal | some t : Track| lone (t in signals.s)
-- div,1
all sinal : univ | sinal in Signal implies one track : Track | track->sinal
-- div,1
all t1,t2: Track | no ((t1.signals and t1.succs.^signals) & (t2.signals and t2.succs.^signals))
-- div,1
all t1,t2: Track | no ((t1.signals and t1.^succs.signals) & (t2.signals and t2.^succs.signals))
-- div,1
