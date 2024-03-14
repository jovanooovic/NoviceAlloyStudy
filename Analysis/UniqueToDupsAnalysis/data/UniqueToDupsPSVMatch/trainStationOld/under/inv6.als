all s : Signal | eventually (s in Green or s not in Green)
-- div,1
always all s: Signal | always s in Green implies s' not in Green
-- div,1
all s:Signal | (s in Green implies s not in Green') or (s not in Green implies s in Green')
-- div,1
always (Signal in Green => Signal not in Green' || no Signal & Green => Signal in Green')
-- div,1
always (Signal in Green => no Signal & Green' || no Signal & Green => Signal in Green')
-- div,1
always all s : Signal | s in Green => s not in Green' or s not in Green => s in Green'
-- div,3
always all s : Signal | (s in Green implies s' not in Green) or
(s not in Green implies s' in Green)
-- div,2
always all s : Signal | s in Green => no s & Green' or no s & Green => s in Green'
-- div,1
always all s : Track.signal | s in Green => s not in Green' or s not in Green' => s in Green
-- div,1
always (all s : Signal | s in Green implies eventually s not in Green or
s not in Green implies eventually s in Green)
-- div,5
always (all s:Signal |  (s in Green implies always (no (s &  Green'))) or
no (s & Green) implies always (some (s &  Green')))
-- div,1
always (all s:Signal | always (s in Green) implies eventually (s not in Green ) or
always s not in Green implies  eventually (s in  Green) )
-- div,4
always (all s:Signal |  (s in Green implies eventually (no (s &  Green'))) or
no (s & Green) implies  eventually (some (s &  Green')))
-- div,1
always (all s:Signal | always (s in Green) implies eventually (no (s &  Green'))  or
always (no (s & Green)) implies  eventually (some (s &  Green')))
-- div,1
