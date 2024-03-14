-- equiv pair start,162
no ^succs & iden
-- div,11
no iden & ^succs
-- div,6
no t: Track | t in t.^succs
-- div,2
all t:Track| t not in t.^succs
-- div,121
all t : Track | t not in ^succs.t
-- div,1
all x :Track | x not in x.^succs
-- div,5
all t:Track | t->t not in ^succs
-- div,1
no t : Track | t in t.^(~succs)
-- div,2
all t : Track | no t.^succs&t
-- div,4
all t:Track | no t & t.(^succs)
-- div,2
not some t:Track | t in (t.^succs)
-- div,1
all t1,t2 : Track | t1 in t2.^succs implies t1!=t2
-- div,1
all t:Track | t not in ^succs.t and t not in t.^succs
-- div,1
all x1,x2 : Track | x1 in x2.succs implies x2 not in x1.^succs
-- div,1
all track : univ | track in Track implies track not in track.^(succs)
-- div,2
all t1,t2 : Track | t1 in t2.^succs implies t1!=t2
all t1,t2 : Track | t1 in succs.t2 implies t1!=t2
-- div,1
-- equiv pair end
