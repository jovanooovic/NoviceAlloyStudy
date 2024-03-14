always all t : Train | (one t.pos and no t.pos') implies (always no t.pos')
-- div,1
always (all t:Train | (once some t.pos and no t.pos ) => always no t.pos)
-- div,1
