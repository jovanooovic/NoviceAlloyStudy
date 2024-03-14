always (all t:Train )
-- div,1
always ( all t:Train | some t.pos and some (t.pos.signal :>Green) implies (t.pos'.signal in  Siganl-Green)
-- div,1
always ( all t:Train | (some t.pos and some (t.pos.signal :>Green) )implies (t.pos'.signal in  Siganl-Green) )
-- div,1
always ( all t:Train | (some t.pos and one t.pos.signal some (t.pos.signal :>Green) )implies (t.pos'.signal in  Signal-Green) )
-- div,1
always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) ) implies (eventually t.pos'!=t.pos and (t.pos.signal in  Signal-Green) )
-- div,1
