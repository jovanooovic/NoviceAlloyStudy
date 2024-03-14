-- equiv pair start,3
eventually Train.pos in Entry
-- div,1
eventually (all t:Train | t.pos in Entry)
-- div,2
-- equiv pair end
-- equiv pair start,2
all t:Train | eventually t.pos in Entry
-- div,1
all t:Train | some t.pos implies eventually t.pos in Entry
-- div,1
-- equiv pair end
-- equiv pair start,6
(all t:Train|  eventually ( one t.pos:>Entry) )
-- div,1
all t:Train |  eventually ( some t.pos & Entry)
-- div,1
(all t:Train | eventually ( some t.pos and t.pos in Entry) )
-- div,2
(all t:Train|  eventually ( some t.pos and one t.pos:>Entry) )
-- div,1
all t:Train | some tk:Entry | (t->tk not in pos) implies eventually (t->tk in pos)
-- div,1
-- equiv pair end
-- equiv pair start,1
(all t:Train|  eventually (no t.pos => after one t.pos:>Entry) )
-- div,1
-- equiv pair end
-- equiv pair start,5
always ( all t:Train |no t.pos implies  eventually (t.pos in Entry) )
-- div,2
always ( all t:Train | historically no t.pos implies eventually t.pos in Entry )
-- div,1
(all t:Train |some (t.pos.prox & Entry )implies  eventually ( some t.pos and t.pos in Entry) )
-- div,1
always (all t:Train |some (t.pos.prox & Entry )implies  eventually ( some t.pos and t.pos in Entry) )
-- div,1
-- equiv pair end
-- equiv pair start,2
(all t:Train |no t.pos implies  eventually ( some t.pos and t.pos in Entry) )
-- div,2
-- equiv pair end
-- equiv pair start,2
all t:Train | t.pos not in Entry implies before no t.pos and eventually ( some t.pos & Entry)
-- div,1
all t:Train | some Track and t.pos not in Entry implies before no t.pos and eventually ( some t.pos & Entry)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Train | some tk:Entry | t->tk not in pos implies eventually (t->tk in pos and before no t.pos)
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Train | some tk:Entry | (t.pos not in Entry) implies eventually (t->tk in pos and before no t.pos)
-- div,2
-- equiv pair end
-- equiv pair start,1
all t:Train | some Track and (t.pos not in Entry implies before no t.pos and eventually ( some t.pos & Entry)   )
-- div,1
-- equiv pair end
