eventually Trains.pos in Entry
-- div,1
always ( all t:Train | eventually
-- div,2
always ( all t:Train | eventually t.pos in Entry
-- div,1
all t:Train |  eventually ( some t.pos & Entry) )
-- div,1
always (all t:Train| eventually (some t.pos:>Entry )
-- div,1
(all t:Train|  no t.pos  after ( one t.pos':>Entry)) )
-- div,1
(all t:Train|  (no t.pos  after ( one t.pos':>Entry)) )
-- div,1
(all t:Train|  (no t.pos  after  one (t.pos':>Entry)  )
-- div,1
(all t:Train|  (no t.pos  after  one (t.pos':>Entry)) )
-- div,1
(all t:Train|  no t.pos => after ( one t.pos':>Entry)) )
-- div,1
always (no t:Trains | eventually no t.pos in Track-Entry)
-- div,1
always (no t:Train | eventually no (t.pos in Track-Entry)
-- div,1
always ( all t:Train |some t.pos eventually (t.pos in Entry))
-- div,1
(all t:Train|  no t.pos => eventually ( one t.pos':>Entry)) )
-- div,1
always (all t:Train|  (no t.pos  after  one (t.pos':>Entry)) )
-- div,1
(all t:Train| eventually (no t.pos  after  one (t.pos':>Entry))
-- div,1
always ( all t:Train |(some t.pos) eventually (t.pos in Entry))
-- div,1
always ( all t:Train |(some t.pos) eventually (t.pos in Entry) )
-- div,1
(all t:Train| eventually (no t.pos  after  one (t.pos':>Entry)) )
-- div,1
always ( all t:Train | no t.pos implies eventually (t.pos in Entry)
-- div,1
(all t:Train |some (t.pos.prox & Entry ) eventually ( some t.pos and t.pos in Entry) )
-- div,1
(all t:Train |implies  eventually (some (t.pos.prox & Entry ) and some t.pos and t.pos in Entry) )
-- div,1
