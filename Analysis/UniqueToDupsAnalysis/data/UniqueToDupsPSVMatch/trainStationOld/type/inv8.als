always ( all t:Train | some (t.pos.signal  in Signal-Green) implies t.pos' = t.pos )
-- div,1
always ( all t:pos.Track.(signal-Green) | t.pos=(t.pos)' until t.pos.signal in Green )
-- div,1
always ( all t:pos.Track.(Signal-Green) | t.pos=(t.pos)' until t.pos.signal in Green )
-- div,1
always ( all t:pos.Track.signal.(Signal-Green) | t.pos=(t.pos)' until t.pos.signal in Green )
-- div,1
