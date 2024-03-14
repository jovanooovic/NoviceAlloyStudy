-- equiv pair start,2
all e : Entry | some Speed
-- div,2
-- equiv pair end
-- equiv pair start,28
all e:Entry | some e.signals
-- div,11
all t:Entry | #t.signals>0
-- div,1
all t : Track & Entry | some t.signals
-- div,1
all e : Entry | some e.signals & Signal
-- div,4
all e: Entry | (e in Track) implies some e.signals
-- div,1
all t:Track| t in Entry => some t.signals
-- div,5
all e:Entry| some s:Signal | s in e.signals
-- div,4
all e:Entry | some s:Signal | e->s in signals
-- div,1
-- equiv pair end
-- equiv pair start,1
all e:Entry | some (signals.Speed)
-- div,1
-- equiv pair end
-- equiv pair start,1
all e : Entry | e.signals in Signal
-- div,1
-- equiv pair end
-- equiv pair start,1
all e: Entry | (e in Track) implies some Track.signals
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Entry|some s:Signal| t->s in signals implies s in Speed
-- div,2
-- equiv pair end
-- equiv pair start,1
all t : Track, s : Speed | t in Entry implies some t.signals & Speed
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Entry | some y : Signal |  y in Speed implies y in x.signals
-- div,1
-- equiv pair end
