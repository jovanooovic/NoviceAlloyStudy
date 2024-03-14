always Signal != Signal'
-- div,2
always no (signal & signal')
-- div,1
always (Signal-Green = Green')
-- div,1
always Green' = Signal - Green
-- div,2
all s: Signal | always s != s'
-- div,3
always all s: Signal | always s != s'
-- div,1
always one s : Signal | always s' != s
-- div,1
always all s : Signal | always s' != s
-- div,1
always some s : Signal | always s' != s
-- div,1
always all s : Signal | eventually s' != s
-- div,1
always some s : Signal | eventually s' != s
-- div,1
all t : Track |always( t.signal' != t.signal)
-- div,1
all t : Track | always t.signal != t.signal'
-- div,1
always all s : Signal | always eventually s' != s
-- div,1
always ((Signal-Green = Green') and (Green = (Signal-Green)'))
-- div,1
always ((Signal-Green = Green') and (Green = Signal'-Green'))
-- div,1
all s : Signal | no (s & Green) implies s' = Green else s' not in Green
-- div,1
always (Green = Signal and no Green' or no Green and Green' = Signal)
-- div,1
all t : Track | always ((some t.signal) implies (t.signal != t.signal'))
-- div,2
always (Green = Signal and no Green' or no Green and Green' = Signal')
-- div,1
always (Signal in Green and no Green' or no Green and Green' = Signal')
-- div,2
all  s : Signal | always (no (s & Green) implies s' = Green else s' not in Green)
-- div,1
always (all  s : Signal |  no (s & Green) implies s' = Green else s' not in Green)
-- div,1
always (all  s : Signal |  no (s & Green) implies s'  in  Green else s' not in Green)
-- div,1
always ( all s : Signal { s in Green => s' not in Green
s not in Green => s' in Green
}
)
-- div,2
always ( all s : Signal { s in Green => Green' = Green - s
s not in Green => Green' = Green + s
}
)
-- div,1
