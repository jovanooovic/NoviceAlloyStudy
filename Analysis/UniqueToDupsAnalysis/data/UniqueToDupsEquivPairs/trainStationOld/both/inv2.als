-- equiv pair start,2
eventually some Green
-- div,1
eventually some Green&Signal
-- div,1
-- equiv pair end
-- equiv pair start,1
always eventually some Green
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (all s:Signal | Green in s)
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (all t:Track | Green in t.signal)
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (all s:Signal | eventually Green in s)
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (all t:Track | eventually Green in t.signal)
-- div,1
-- equiv pair end
