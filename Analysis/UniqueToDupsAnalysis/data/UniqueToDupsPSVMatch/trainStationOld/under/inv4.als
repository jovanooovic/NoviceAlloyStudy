pos.~pos in iden
-- div,1
always(lone pos.Train)
-- div,1
always ~pos.pos in iden
-- div,1
all tk : Track | lone pos.tk
-- div,2
all t : Train | always (lone pos.t)
-- div,2
all t : Train | always (lone t.pos)
-- div,1
all tk : Track | lone pos.tk :> Train
-- div,1
all tk : Track | lone Train <: pos.tk
-- div,1
all disj t1,t2:Train | no (t1.pos &t2.pos)
-- div,3
all disj t1,t2:Train | some (t1.pos &t2.pos ) implies lone ((t1.pos &t2.pos ).signal &Green)
-- div,1
all disj t1,t2:Train | some (t1.pos &t2.pos ) implies lone ((t1.pos &t2.pos ).signal &Green) or no (t1.pos &t2.pos )
-- div,1
