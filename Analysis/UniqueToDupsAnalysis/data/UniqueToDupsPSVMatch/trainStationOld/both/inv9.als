always eventually Train.pos in Entry
-- div,1
all t : Train | eventually t.pos = Entry
-- div,1
always ( all t:Train | eventually t.pos in Entry)
-- div,4
always (all t:Train| eventually ( one t.pos:>Entry))
-- div,1
always (all t:Train| eventually (some t.pos:>Entry ))
-- div,1
always ( all t:Train | no t.pos until t.pos in Entry )
-- div,1
always (all t:Train| eventually ( one t.pos':>Entry))
-- div,1
all t:Train | some t.pos and eventually t.pos in Entry
-- div,1
always ( all t:Train | (no t.pos) triggered (t.pos in Entry) )
-- div,1
always (all t:Train|  (no t.pos =>  one (t.pos':>Entry)) )
-- div,1
always ( all t:Train | (no t.pos) triggered (t.pos' in Entry) )
-- div,1
always ( all t:Train | some Track implies eventually t.pos in Entry )
-- div,1
all t:Train | eventually (t.pos in Entry and before no t.pos)
-- div,1
always ( all t:Train |(no prox.t) and eventually (t.pos in Entry) )
-- div,1
always ( all t:Train |some t.pos and eventually (t.pos in Entry))
-- div,2
always ( all t:Train | eventually (no t.pos until t.pos in Entry))
-- div,2
(all t:Train| eventually (no t.pos and after one t.pos:>Entry))
-- div,3
(all t:Train|  eventually ( before no t.pos and one t.pos:>Entry) )
-- div,1
always ( all t:Train | some Track implies eventually (some t.pos :> Entry) )
-- div,1
always ( all t:Train | (no t.pos) triggered (eventually t.pos in Entry) )
-- div,1
always  (all t:Train|  once(no t.pos => after one t.pos:>Entry) )
-- div,1
always (all t:Train| eventually (no t.pos and one t.pos':>Entry))
-- div,2
always (all t:Train| eventually (no t.pos =>  one (t.pos':>Entry)) )
-- div,1
always  (all t:Train|  eventually (no t.pos => after one t.pos:>Entry) )
-- div,1
always (all t:Train| eventually (no t.pos and after one t.pos:>Entry))
-- div,2
always ( all t:Train | historically no t.pos and eventually t.pos in Entry )
-- div,1
always ( all t:Train |eventually (before (no prox.t) and after (t.pos in Entry) ))
-- div,1
always ( all t:Train |no t.pos implies  eventually ( some t.pos and t.pos in Entry) )
-- div,1
always ( all t:Train | some Entry implies eventually (no t.pos until t.pos in Entry))
-- div,1
always(all t:Train|  eventually ( before no t.pos and after ( one t.pos:>Entry)) )
-- div,1
all t:Train | some tk:Entry | eventually (t->tk in pos and before no t.pos)
-- div,1
always ( all t:Train | some tk:Entry | eventually (no t.pos until t.pos in tk))
-- div,1
(all t:Train | no t.pos implies  eventually (some (t.pos.prox & Entry ) and some t.pos and t.pos in Entry) )
-- div,1
