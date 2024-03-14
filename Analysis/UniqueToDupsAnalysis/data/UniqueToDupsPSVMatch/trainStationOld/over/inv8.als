always ( all t:Train | no t.pos.signal :> Green implies t.pos' = t.pos )
-- div,1
always ( all t:Train |  (t.pos.signal  in Signal-Green) implies t.pos' = t.pos )
-- div,1
always (all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') and  ((t.pos.signal) in Green))
-- div,1
always ( all t:Train, s:Signal | some (t.pos).signal :> s implies (s in Green) releases (t.pos' = t.pos) )
-- div,1
always (all t:Train | (some t.pos.prox) and ( (t.pos.signal)  in (Signal-Green)  implies ((t.pos in t.pos.prox) since  (t.pos.signal in Green) )))
-- div,1
always (all t:Train | (some t.pos.signal and some t.pos.prox) and ( (t.pos.signal)  in (Signal-Green)  implies ((t.pos in t.pos.prox) since  (t.pos.signal in Green) )))
-- div,2
