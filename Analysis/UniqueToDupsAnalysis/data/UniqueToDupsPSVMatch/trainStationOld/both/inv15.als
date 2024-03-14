always eventually pos!=pos'
-- div,3
eventually always (pos != pos')
-- div,1
eventually always (some pos =>(pos != pos'))
-- div,1
always eventually some pos and (pos != pos')
-- div,1
always eventually (Train.pos)' != Train.pos
-- div,1
always eventually (some pos and (pos != pos'))
-- div,1
eventually always some pos =>(pos != pos')
-- div,1
always eventually some Train and (pos != pos')
-- div,1
all t:Train | eventually (t.pos)' != t.pos
-- div,1
all t : Train | eventually t.pos != t.pos'
-- div,1
always eventually (some Train implies (Train.pos)' != Train.pos)
-- div,2
always eventually (some t:Train | (t.pos)' != t.pos)
-- div,2
always eventually (some Train  implies Train.pos!=Train.pos' )
-- div,1
eventually always (some t: Train| t.pos != t.pos')
-- div,1
always eventually (some t:pos.Track | (t.pos)' != t.pos)
-- div,1
always (some t: Train| (no t.pos  implies some t.pos) or t.pos != t.pos')
-- div,1
eventually always (some t: Train| (no t.pos  implies some t.pos) or t.pos != t.pos')
-- div,2
always (some t: Train| (no t.pos  implies eventually some t.pos) or t.pos != t.pos')
-- div,1
always (some t: Train| (no t.pos  implies eventually some t.pos) or eventually t.pos != t.pos')
-- div,1
eventually always (some t: Train| (no t.pos  implies eventually some t.pos) or t.pos != t.pos')
-- div,1
