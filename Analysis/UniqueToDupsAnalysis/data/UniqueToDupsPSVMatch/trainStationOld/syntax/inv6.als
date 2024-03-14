all s:Signal | s'=!s
-- div,1
all s:Signal | s'=no s
-- div,1
always (all s:Signal | eventually )
-- div,2
always (all s:Signals | s in Green )
-- div,1
all s : Signal | always s!= s'
-- div,2
always (all s:Green | after  s not in Green )
-- div,1
always (all s:Signals | s in Green implies  (no (s &  Green') ))
-- div,1
always (all s:Signal | (s in Green implies s not in Green') )
-- div,1
always (all s:Signals |  s in Green implies always (no (s &  Green') ))
-- div,1
always (all s:Signals |  (s in Green implies always (no (s &  Green') )
-- div,1
always (all s:Signals |  (s in Green implies always (no (s &  Green'))) )
-- div,1
always ( all s : Signal { s in Green => s' not in Green}
s not in Green => s' in Green)
-- div,1
always (Signal in Green => Signal not in Green' || no Signal & Green => Signal in Green'
-- div,1
always all s : Signal ignal | s in Green => s not in Green' or s not in Green' => s in Green
-- div,1
always (all s : Signal | s in Green implies eventually s not in Green or
s not in Green implies eventually s in Green
-- div,1
always (all s : Signal | s in Green implies eventually s not in Green or
s not in Green implies s eventually s in Green)
-- div,1
always all s : Signal |
s in Green implies eventually s not in Green or
s not in Green implies s eventually s in Green
)
-- div,1
always (all s : Signal |
s in Green implies eventually s not in Green or
s not in Green implies s eventually s in Green
)
-- div,2
always (all s : Signal | s in Green implies eventually s not in Green or
s not in Green implies s eventually s in Green))
-- div,1
always all s : Signal |
(s in Green implies eventually s not in Green) or
(s not in Green implies s eventually s in Green)
-- div,1
always (all s : Signal | (s in Green implies eventually s not in Green) or (s not in Green implies s eventually s in Green))
-- div,2
always all s : Signal |
(s in Green implies (eventually s not in Green)) or
(s not in Green implies s eventually s in Green)
-- div,1
always (all s : Signal |
(s in Green implies (eventually s not in Green)) or
(s not in Green implies s eventually s in Green)
)
-- div,1
always (all s:Signal |  (s in Green implies always (no (s &  Green'))) or no (s & Green) implies always (some (s &  Green'))) )
-- div,1
always (all s:Signals |  (s in Green implies always (no (s &  Green'))) or no (s & Green) implies always (some (s &  Green')) )
-- div,1
always (some s:Signal |  (s in Green implies always (no (s &  Green'))) or no (s & Green) implies always (some (s &  Green'))) )
-- div,1
always (all s:Signals |  (s in Green implies always (no (s &  Green'))) or no (s & Green) implies always (some (s &  Green'))  )
-- div,1
always (all s:Signals |  (s in Green implies always (no (s &  Green'))) or no (s & Green) implies always (some (s &  Green'))) )
-- div,1
