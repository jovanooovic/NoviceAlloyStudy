-- equiv pair start,2
(Signal = Green)
-- div,1
once (Signal = Green)
-- div,1
-- equiv pair end
-- equiv pair start,3
Signal not in Green
-- div,1
Track.signal not in Green
-- div,2
-- equiv pair end
-- equiv pair start,1
always Signal not in Green
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Track | once t.signal != Green
-- div,1
once (all t:Track | t.signal = Green implies (before t.signal != Green))
-- div,1
-- equiv pair end
-- equiv pair start,5
all t:Track | once Green not in t.signal
-- div,1
always(all t:Track | once(Green not in t.signal))
-- div,1
(all t:Track | Green in t.signal since Green not in t.signal)
-- div,1
always (all t:Track | Green in t.signal since Green not in t.signal)
-- div,1
once (all t:Track | Green in t.signal implies (before Green not in t.signal))
-- div,1
-- equiv pair end
-- equiv pair start,3
once (all t:Entry | Green not in t.signal)
-- div,1
once (all t:Track&Entry | Green not in t.signal)
-- div,1
always (all t:Track&Entry | once Green not in t.signal)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Entry | Green not in signal.t)
-- div,1
-- equiv pair end
-- equiv pair start,4
always (all t:Entry | Green not in t.signal)
-- div,2
always (all t:Track&Entry | Green not in t.signal)
-- div,1
always (all t:Track&Entry | always Green not in t.signal)
-- div,1
-- equiv pair end
-- equiv pair start,3
(Signal = Green) until (some t:Track | Green not in t.signal)
-- div,1
(historically Signal = Green) until (some t:Track | Green not in t.signal)
-- div,1
(all f:Track | f.signal = Green) until (some t:Track | Green not in t.signal)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Signal | s not in Green until (some s:Signal | s in Green)
-- div,1
-- equiv pair end
-- equiv pair start,1
(all s:Signal | s not in Green) until (some s:Signal | s in Green)
-- div,1
-- equiv pair end
-- equiv pair start,3
always (all t:Track | Green not in t.signal until Green in t.signal)
-- div,2
all t:Track | always (Green not in t.signal until (Green in t.signal))
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Track, g:Green | g not in t.signal until (g in t.signal))
-- div,1
-- equiv pair end
