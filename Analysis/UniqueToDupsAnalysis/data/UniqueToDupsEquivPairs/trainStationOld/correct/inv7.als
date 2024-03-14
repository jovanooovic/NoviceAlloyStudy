-- equiv pair start,8
always (all t:pos.Track | eventually no t.pos)
-- div,4
always (all t:Train | some t.pos implies eventually no t.pos)
-- div,3
always ( all t:Train | some t.pos :> Track implies eventually no t.pos :> Track )
-- div,1
-- equiv pair end
