( all t:Train | no t.pos since  no t.pos)
-- div,1
( all t:Train | no t.pos implies always (no t.pos))
-- div,1
( all t:Train | eventually always no t.pos implies  always(no t.pos))
-- div,1
always ( all t:Train | eventually always no t.pos implies  always(no t.pos))
-- div,1
