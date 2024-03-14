always ( all t:Train | (no t.pos) until (some t.pos :> Entry) )
-- div,1
(all t:Train|  once(no t.pos and after one t.pos:>Entry) )
-- div,1
always (all t:Train|  (no t.pos and after one t.pos:>Entry) )
-- div,1
all t:Train | before no t.pos and eventually ( some t.pos & Entry)
-- div,1
all t:Train |  eventually ( some t.pos & Entry)  and before no t.pos
-- div,1
(all t:Train|  (historically no t.pos and after one t.pos:>Entry))
-- div,1
always  (all t:Train|  once(no t.pos and after one t.pos:>Entry) )
-- div,2
always ( all t:Train |before (no prox.t) and eventually (t.pos in Entry) )
-- div,1
eventually  always (all t:Train|  (no t.pos and after one t.pos:>Entry) )
-- div,1
(all t:Train|  eventually always  ( no t.pos and after ( one t.pos:>Entry)) )
-- div,1
(all t:Train| eventually (historically no t.pos and after one t.pos:>Entry))
-- div,1
(all t:Train |    eventually (some (t.pos.prox & Entry ) and some t.pos and t.pos in Entry) )
-- div,1
all t:Train | t.pos not in Entry and  before no t.pos and eventually ( some t.pos & Entry)
-- div,1
all t:Train | some t.pos and (t.pos not in Entry implies before no t.pos and eventually ( some t.pos & Entry)   )
-- div,1
