no ^succ & iden
-- div,1
all t : Track |
-- div,1
succ not in ^succ
-- div,1
Track not in t.^succs
-- div,1
all t: Trak | t.*(succs)
-- div,1
all t : Track | no t^.succs
-- div,1
all x,y:Track| x in Exit and
-- div,1
Track.^succ & Track.^succ = id
-- div,1
all t:Track | t not in t.^succ
-- div,2
no (t: Track | t in t.*(succs))
-- div,3
all t: Track | t not in t.^succ
-- div,3
all x :Track | x not in x.^succ
-- div,1
no t : Track | t in p.^(~succs)
-- div,1
all t.Track | t not in t.^succs
-- div,1
all t : Track | t not in t.^succ
-- div,2
all t: Track| t not in t.^tracks
-- div,1
all x :Tracks | x not in x.^succ
-- div,1
Track.^succs & Track.^succs = id
-- div,1
all t:Tracks | no t in t.(^succs)
-- div,1
all t : Track | t not in t.succs^
-- div,1
all t:track | t not in t.^(succs)
-- div,1
all x : Track : x not in x.^(succs)
-- div,1
all t in Track | t not in t.(^succs)
-- div,1
all t : Track | t not in t.^(tracks)
-- div,1
all t : Track | t.succ not in succs.t
-- div,1
all t1,t2 : Tracks | t1 in t2.succs implies t1!=t2
-- div,1
all x,y,z:Track| x->y in succs and y->z in succs and
-- div,5
all t:track | t not in ^succs.t and t not in t.^succs
-- div,1
all t: Track | all s: t.succs | succs.^p not in s.succs
-- div,1
all t: Track | all s: t.succs | succs^.p not in s.succs
-- div,1
all t: Track | all p: succ.t | all s: t.succ | p not in s
-- div,1
all t: Track | all p: succ.t | all s: t.succs | p not in s
-- div,1
all t:Track | t in Exit => not in Entry
all t:Track | t in Entry => not in Exit
-- div,1
all t:Track | t not in t.succs
all disj t1,t2:Track | (t2 in t1.succs => t1 not in t2.succs and t1.succs not in t2.succs
-- div,1
all t:Track | t not in Exit implies some t2:Track | t->t2 in succs
all t:Track | t in Exit implies all t2 Track | t->t2 not in succs
-- div,1
