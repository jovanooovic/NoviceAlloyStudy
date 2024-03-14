all s:Signal |
-- div,1
one x->s in signals
-- div,1
Signal in Track.singals
-- div,2
all s : Signal | lone t
-- div,1
Tracks.signals = Signal
-- div,1
one Signal in one Track
-- div,1
one Signal -> some Track
-- div,1
Signal one -> one singal
-- div,1
all t:Track|one t.signal
-- div,1
one signal -> some Track
-- div,1
Signal one -> one signal
-- div,1
all s:Signal | one t:Track
-- div,1
all s: Signal | oen signals.s
-- div,1
all s:Signals | one signals.s
-- div,2
all s : Signal | one signals.S
-- div,1
all s: Signal | s in one Track
-- div,1
all s: Signals | one signals.s
-- div,1
signals in Track one -> signal
-- div,1
all s : Signal | one t : Track
-- div,1
all x: Signal | x in one Track
-- div,2
all s : Signal | one singals.s
-- div,1
Signals in signals -> one Track
-- div,1
all s : Signals | one signals.s
-- div,3
all s : Signall | one signals.s
-- div,1
Signals in Signals -> one Track
-- div,1
all s : Signal | one t : Track |
-- div,1
all s : Signal | s in Track.signal
-- div,1
singals in Track one -> set Signal
-- div,1
all x: Signals | x in Track.signals
-- div,1
all s : Signal | lone track.signals
-- div,1
~signal in Signal one -> lone Track
-- div,1
all s : Signal | one s.(Track.signal)
-- div,1
all s: Signal | s in one Track.signals
-- div,1
all s : Signal, one t : Track | s -> t
-- div,1
all s:Signal, t:Track| t->s in Signals
-- div,1
all x: Signal | x in one Track.signals
-- div,1
some x: Signal | x in one Track.signals
-- div,1
all s : Signal | s in one Track.signals
-- div,1
all x : Signal |  x in one Track.signals
-- div,1
all s:Signals | one t:Track | s in t.succs
-- div,1
some s:Signal|one t:Track| t->s in signails
-- div,1
all s : Signals, t : Track | s in t.signals
-- div,1
all s: Signal | one t: Track| s in t.signal
-- div,1
all c:Signal | one t:Track | s in t.signals
-- div,1
some s:Signal|one t:track| t->s in signails
-- div,1
all s: Signal, one t: Track | s in t.signals
-- div,1
all s:Signals | one t:Track | s in t.signals
-- div,1
all si:Signal | one t:Track | s in t.signals
-- div,1
all s:Signal | one t1:Track | s in t.signals
-- div,1
all s: signal | one t: Track | s in t.signals
-- div,1
all s: Signal , one t: Track | s in t.signals
-- div,1
all s : Signal, t: Track | s in one t.signals
-- div,1
all s : Signal | one t Track | s in t.signals
-- div,1
all s : Signal, one t : Track | s in t.signals
-- div,1
all s : Signal, t : Track | s in one t.signals
-- div,1
all s: Signals | one t: Track | s in t.signals
-- div,2
all x : Signal, some t: Track | x in t.signals
-- div,1
all s: Signals | one t: Track | t->s in signals
-- div,1
all s : Signal , one t : Track | s in t.signals
-- div,2
all s : Signal , some t : Track | s in t.signals
-- div,2
all s : Signal | some x : Track | x.signal <=> s
-- div,1
all s : Signal | (some t : Track| s in t.signals
-- div,1
all s : Signals | one t : Track | s in t.signals
-- div,2
all s: Signal| some t: Track| s in one t.signals
-- div,1
all s : Signals | some t : Track | s in t.signals
-- div,1
all s: Signal | some t: Track | s in one t.signals
-- div,1
one signal: Signals, track:Track | signal => track
-- div,1
all x : Signal, some t: Track | some x in t.signals
-- div,1
all s: Signal | exactly one t: Track | s in t.signals
-- div,1
Signal = Track.signals
all s : Signal | lone s.~signal s
-- div,1
all s : Signal | one t : Track | lone t
-- div,1
all signal: Signal,one track:Track | signal in track.signals
-- div,1
all s : Signal | some t : Track | s in t.signals and #s == 1
-- div,1
all s : Signal | some t : Track | s in t.signals and #(s) == 1
-- div,1
all s : Signal | some t : Track | s in t.signals and #t.signals == 1
-- div,1
all s : Signal | one t : Track | s in t.signals
-- div,1
all x,y: Track, s: Signal | signals(x,s) and signals(y,s) implies x=y
-- div,1
all s:Signal, t1,t2:Track | s in t1.signals => s not in Track.signals - t
-- div,1
all s : Signal | t,t1 : Track | s in t.signals && s in t1.signals implies t = t1
-- div,1
all t1 : Track | t2: Track | s : Signal | (s in t1.signals) implies (s not in t2.signals)
-- div,1
all t1, t2: Tracks,
s: Signal |
((s in t1.(^succs.signals)) and (s in t2.(^succs.signals)) implies t1 = t2
-- div,1
all t1, t2: Tracks,
s: Signal |
((s in t1.(^succs.signals)) and (s in t2.(^succs.signals))) implies t1 = t2
-- div,1
