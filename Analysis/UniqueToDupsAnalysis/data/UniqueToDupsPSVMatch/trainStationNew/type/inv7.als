none Entry & Exit
-- div,1
all t: Track | t.*(succs)
-- div,1
all t : Track | no succs.^t
-- div,1
all t : Track | no succs.*t
-- div,1
all t:Track | no t in t.(^succs)
-- div,1
all t : Track | no t in t.^succs
-- div,1
all t: Track | t not in ^t.succs
-- div,1
all t: Track | no t in t.*(succs)
-- div,1
all t : Track | t not in ^t.succs
-- div,1
all t: Track | t not in ^(t.succs)
-- div,1
all t : Track | no t in t.^(succs)
-- div,1
Track.^succs & Track.^succs = iden
-- div,1
all t:Track | t not int t.^(succs)
-- div,1
all t : Track | no t.^(succs) & iden
-- div,1
all t : Track | no (t.^(succs)) & iden
-- div,1
all t: Track | all s: t.succs | succs.^t not in s.succs
-- div,1
all x1,x2 : Track | x1 in x2.succs implies x1 x2 not in x1.^succs
-- div,1
