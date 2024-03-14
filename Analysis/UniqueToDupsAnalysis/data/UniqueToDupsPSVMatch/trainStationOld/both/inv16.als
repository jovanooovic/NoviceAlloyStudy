always (all t:pos.Exit | (always some t.pos) since t.pos in Entry)
-- div,2
always all t : Train | (t.pos = Exit) implies ((always some t.pos) since (t.pos = Entry))
-- div,1
