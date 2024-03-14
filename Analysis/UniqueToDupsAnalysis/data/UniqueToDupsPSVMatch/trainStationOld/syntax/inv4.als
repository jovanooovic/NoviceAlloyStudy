lone
-- div,2
let T=Train.pos
-- div,1
let T=[Train.pos]
-- div,1
always on Train.pos
-- div,1
always one Train in one Track
-- div,1
all t = Track | lone (t.~pos)
-- div,1
all t : Train | always (lone.t)
-- div,1
always all t = Track | lone (t.~pos)
-- div,2
always (t1,t2:Train | t1.pos != t2.pos)
-- div,1
always (t1,t2:Train | t1.pos not t2.pos)
-- div,1
always (t1,t2:Train | no t1.pos = t2.pos)
-- div,1
always (t1,t2:Train | t1->pos not t2->pos)
-- div,1
always (all t1,t2:Train | t1.pos not t2.pos)
-- div,1
always t1, t2: Train | some t1.pos & t2.pos implies t1 = t2
-- div,1
always t1: Train | t2: Train | some t1.pos & t2.pos implies t1 = t2
-- div,3
