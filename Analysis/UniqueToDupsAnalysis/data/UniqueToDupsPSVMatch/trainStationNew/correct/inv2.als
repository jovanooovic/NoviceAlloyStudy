signals in Track one -> Signal
-- div,24
all x:Signal| one signals.x
-- div,8
all s:Signal| one signals.s
-- div,86
all si : Signal | one signals.si
-- div,1
all x : Signal | #signals.x = 1
-- div,1
all s:Signal | #signals.s=1
-- div,1
all s:Signal | one s.~signals
-- div,5
all s: Signal| some t: Track| one signals.s
-- div,1
all s:Signal|one t:Track | s in t.signals
-- div,132
all x:Signal | one y: Track | x in y.signals
-- div,4
all s : Signal | one x : Track | s in x.signals
-- div,2
all c:Signal | one t:Track | c in t.signals
-- div,1
all s : Signal | one t : Track | t in signals.s
-- div,1
all a : Signal | one b : Track | b -> a in signals
-- div,1
all s:Signal|one t:Track| t->s in signals
-- div,24
all si:Signal | one t:Track | si in t.signals
-- div,1
all s:Signal | one t1:Track | t1->s in signals
-- div,1
all s : Signal | one t : Track | one signals.s & t
-- div,1
all s : Signal | lone signals.s
Signal in Track.signals
-- div,2
all sign : Signal | one tr : Track | sign in tr.signals
-- div,1
Signal = Track.signals
all s : Signal | lone s.~signals
-- div,1
no (Signal - Track.signals)
all s : Signal | lone signals.s
-- div,1
all signal: Signal | one track:Track | signal in track.signals
-- div,1
all s : Signal | one t : Track | s in t.signals and s not in (Track - t).signals
-- div,2
all sinal : univ | sinal in Signal implies one track : Track | track->sinal in signals
-- div,2
all x : Signal | some t : Track | x in t.signals and no x & (Track-t).signals
-- div,3
no (Signal - Track.signals)
all t,u : Track | t != u implies no (t.signals & u.signals)
-- div,1
all s: Signal | s in Track.signals
all s: Signal | all t,t1 : Track | s in t.signals and s in t1.signals implies t=t1
-- div,1
all s: Signal, t1,t2 : Track | t1->s in signals and t2->s in signals implies t1=t2
all s : Signal | some t : Track | t->s in signals
-- div,1
all s : Signal | all t1, t2 : Track | s in t1.signals and s in t2.signals implies t1 = t2
all s : Signal | some t : Track | s in t.signals
-- div,1
all a1,a2:Track | (some b:Signal | a1->b in signals and a2->b in signals) implies a1 = a2
all b:Signal | some a:Track | a->b in signals
-- div,2
