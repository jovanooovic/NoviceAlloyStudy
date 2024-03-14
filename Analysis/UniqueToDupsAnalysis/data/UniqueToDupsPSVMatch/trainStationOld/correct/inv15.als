always (all t:pos.Track | eventually (t.pos)' != t.pos)
-- div,1
always all t : Train | some t.pos implies eventually t.pos != t.pos'
-- div,1
always eventually (all t:Train | (no t.pos => eventually some t.pos ) and some t.pos => eventually (t.pos !=t.pos')   )
-- div,1
