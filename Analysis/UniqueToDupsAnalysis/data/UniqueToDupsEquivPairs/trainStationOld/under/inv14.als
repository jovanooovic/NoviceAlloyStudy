-- equiv pair start,1
always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) and no t.pos' )implies (t.pos'.signal in  Signal-Green) )
-- div,1
-- equiv pair end
