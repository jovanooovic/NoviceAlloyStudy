-- equiv pair start,1
always ( all t:Train | no t.pos since  no t.pos)
-- div,1
-- equiv pair end
-- equiv pair start,5
always all t : Train | no t.pos implies always no t.pos
-- div,4
always all t : Train | no t.pos implies always no t.pos'
-- div,1
-- equiv pair end
