a
-- div,2
as
-- div,1
no Red
-- div,1
Signal = Red
-- div,1
signal = Red
-- div,1
Signal in Red
-- div,5
Red in Signal
-- div,1
all Signal.Red
-- div,1
Track.signal = Red
-- div,3
all s:Signal | s in Red
-- div,1
Track.signal not in Red
-- div,1
all t:Track | once Green no in t.signal
-- div,1
all t:Track, g:Green | g not in t.signal until (g in t.signal))
-- div,1
always (all t:track | Green in t.signal since Green not in t.signal)
-- div,1
(all f:Track f.signal = Green) until (some t:Track | Green not in t.signal)
-- div,1
