-- equiv pair start,1
no (Green & Green')
-- div,1
-- equiv pair end
-- equiv pair start,3
always (no Green & Green')
-- div,2
all s : Signal | always (no Green' & Green)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (eventually Green not in Green')
-- div,1
-- equiv pair end
-- equiv pair start,1
always Signal & Green not in Signal & Green'
-- div,1
-- equiv pair end
-- equiv pair start,3
always all s: Signal | s in Green implies s' not in Green
-- div,2
always all s : Signal | always (s in Green implies s' not in Green)
-- div,1
-- equiv pair end
-- equiv pair start,1
always Signal in Green and after no Green' or no Green and Signal in Green'
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all  s : Signal |  no (s & Green) implies s' = Green else s'!=Green)
-- div,1
-- equiv pair end
-- equiv pair start,2
always Signal & Green not in Signal & Green' or Signal - Green in Signal' & Green'
-- div,1
always Signal & Green not in Signal' & Green' or Signal - Green in Signal' & Green'
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Signal | always (s in Green implies s not in Green') or (s not in Green implies s in Green')
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Signal | always (s in Green implies s' not in Green) or
(s not in Green implies s' in Green)
-- div,1
-- equiv pair end
-- equiv pair start,1
always one s : Signal | (s in Green implies s' not in Green) or
(s not in Green implies s' in Green)
-- div,1
-- equiv pair end
-- equiv pair start,3
always some s : Signal | (s in Green implies s' not in Green) or
(s not in Green implies s' in Green)
-- div,1
always (some s:Signal |  (s in Green implies always (no (s &  Green'))) or
no (s & Green) implies always (some (s &  Green')))
-- div,2
-- equiv pair end
-- equiv pair start,3
all s : Signal | always (s in Green implies s' not in Green) or always
(s not in Green implies s' in Green)
-- div,1
always all s : Signal | always (s in Green implies s' not in Green) or
always (s not in Green implies s' in Green)
-- div,2
-- equiv pair end
