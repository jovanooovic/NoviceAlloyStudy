-- equiv pair start,2
no (*succs)
-- div,1
succs not in ^succs
-- div,1
-- equiv pair end
-- equiv pair start,10
no Track.^(succs)
-- div,1
all t:Track | no t.^succs
-- div,4
all t: Track | t not in Track.^succs
-- div,1
all t1, t2 : Track | t1 in succs.t2 implies t2 not in t1.succs
-- div,1
all t1, t2 : Track | t1 in succs.t2 and t1 != t2 implies t2 not in t1.succs
all t : Track | t not in succs.t
-- div,2
all t1, t2 : Track | t1 in succs.t2 and t1 != t2 implies t1 not in succs.t2
all t : Track | t not in succs.t
-- div,1
-- equiv pair end
-- equiv pair start,10
all t : Track | no t.*succs
-- div,1
all t : Track | t not in t.*succs
-- div,5
all x : Track | x not in x.*succs
-- div,1
all x : Track | no x & x.*succs
-- div,1
all t:Track | t not in t.succs and t.succs not in t.succs
-- div,1
all t:Track | t not in t.succs and t.succs not in Track.succs
-- div,1
-- equiv pair end
