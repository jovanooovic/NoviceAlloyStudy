always (all t:(pos.Track).signal.Green | eventually ((t.pos)' != t.pos and after t.pos.signal not in Green))
-- div,1
always ( all t:Train | eventually (some t.pos  and  one (t.pos.signal :>Green) and t.pos'!=pos ) implies (t.pos.signal in  Signal-Green) )
-- div,1
