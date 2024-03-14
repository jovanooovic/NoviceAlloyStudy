always ( all t:Train| some t.pos and once t.pos in Entry)
-- div,1
always ( all t:Train| some t.pos and historically t.pos in Entry)
-- div,3
always (all t:Train | t.pos in Track implies historically t.pos in Entry)
-- div,1
always ( all t:Train | some t.pos implies historically some t.pos :> Entry)
-- div,1
always ( all t:Train | some t.pos :> Track implies historically ( t.pos in Entry) )
-- div,1
always ( all t:Train | some t.pos :> (Track-Entry) implies historically ( t.pos in Entry) )
-- div,1
