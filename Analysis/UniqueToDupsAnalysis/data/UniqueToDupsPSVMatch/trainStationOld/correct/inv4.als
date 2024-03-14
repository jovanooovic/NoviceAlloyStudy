always pos.~pos in iden
-- div,11
always (all t : Track | lone pos.t)
-- div,1
always( all tk : Track | lone pos.tk )
-- div,1
all t : Track | always lone t.~pos
-- div,3
always all t : Track| lone (t.~pos)
-- div,1
all disj t1,t2:Train | always no (t1.pos & t2.pos)
-- div,1
always all disj t1,t2:Train | no (t1.pos & t2.pos)
-- div,8
always all disj t, t2 : Train | some (t.pos) => t.pos != t2.pos
-- div,1
always all disj t, t2 : Train | some (t.pos + t2.pos) => t.pos != t2.pos
-- div,1
