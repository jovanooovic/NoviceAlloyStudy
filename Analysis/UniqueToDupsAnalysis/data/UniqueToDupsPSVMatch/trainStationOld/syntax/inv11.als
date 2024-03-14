always (t:pos.Track | once t.pos in Entry)
-- div,1
always (t:Train | one t.pos implies once t.pos in Entry)
-- div,1
