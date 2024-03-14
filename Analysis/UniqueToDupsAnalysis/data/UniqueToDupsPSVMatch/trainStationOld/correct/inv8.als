always ( all t:Train | some t.pos.signal and (t.pos.signal not in Green) implies t.pos' = t.pos )
-- div,1
always ( all t:Train | some t.pos.signal and (t.pos.signal  in Signal-Green) implies t.pos' = t.pos )
-- div,1
