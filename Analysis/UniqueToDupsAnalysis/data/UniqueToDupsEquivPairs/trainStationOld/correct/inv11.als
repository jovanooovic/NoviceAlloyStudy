-- equiv pair start,7
always ( all t:Train | some t.pos implies once some t.pos :> Entry)
-- div,6
always ( all t:Train| some t.pos implies  once ( some t.pos and t.pos in Entry) )
-- div,1
-- equiv pair end
