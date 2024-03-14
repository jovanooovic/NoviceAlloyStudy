-- equiv pair start,30
no succs & iden
-- div,1
all t: Track| t not in succs.t
-- div,2
all t:Track | t not in t.succs
-- div,11
all t : Track | no t.succs&t
-- div,5
all t1,t2 : Track | t1 in t2.succs implies t1!=t2
-- div,1
all t:Track | t not in t.succs and t not in succs.t
-- div,1
all t:Track | t not in t.succs and t not in t.~(Track<:succs)
-- div,1
all t: Track | no t.succs & t and no succs.t & t
-- div,1
all t:Track | t not in t.succs and t not in t.~(t<:succs)
-- div,1
all x,y : Track | y in x.succs implies x != y and x not in x.succs
-- div,1
all t : Track | t not in succs.t
all t : Track | t not in t.succs
-- div,1
all x,y,z : Track | (y in x.succs and z in y.succs) implies (x != y and y != z)
-- div,1
all x,y : Track | y in x.succs implies x != y
all x : Track | x not in x.succs
-- div,1
all t:Track | t not in t.succs
all disj t1,t2:Track | t2 in t1.succs => t1.succs not in t2.succs
-- div,1
all t:Track | t not in t.succs
all disj t1,t2:Track | t2 in t1.succs and t2.succs in t1.succs => t1.succs not in t2.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
iden not in ^succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | Track not in t.^succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all en : Entry, ex : Exit | ex in en.^succs implies ex != en
-- div,1
all en : Track, ex : Track | en in Entry and ex in Exit and ex in en.^succs implies ex != en
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj t1,t2:Track | (t2 in t1.succs => t1 not in t2.succs)
-- div,1
all t1, t2 : Track | t1 in succs.t2 and t1 != t2 implies t2 not in succs.t1 and t1 != t2
-- div,1
-- equiv pair end
-- equiv pair start,17
all t1, t2 : Track | t1 in succs.t2 implies t2 not in succs.t1
-- div,1
all t1, t2 : Track | t1 in succs.t2 implies t2 not in succs.t1 and t1 != t2
-- div,1
all t : Track | all k : Track | t->k in succs implies k->t not in succs
-- div,1
all t: Track | all p: succs.t | all s: t.succs | p not in s
-- div,1
all x,y,z : Track | (y in x.succs and z in y.succs) implies (x != y and y != z and x != z)
-- div,1
all t:Track | t not in t.succs
all t1,t2:Track | t2 in t1.succs => t1 not in t2.succs
-- div,1
all t:Track | t not in t.succs
all disj t1,t2:Track | t2 in t1.succs => t1 not in t2.succs
-- div,6
all t1, t2 : Track | t1 in succs.t2 and t1 != t2 implies t2 not in succs.t1
all t : Track | t not in succs.t
-- div,1
all t1, t2 : Track | t1 in succs.t2 and t1 != t2 implies t1 not in t2.succs
all t : Track | t not in succs.t
-- div,1
all t1, t2 : Track | t1 in succs.t2 and t1 != t2 implies t2 not in succs.t1 and t1 != t2
all t : Track | t not in succs.t
-- div,1
all t:Track | t not in t.succs
all disj t1,t2:Track | t2 in t1.succs => t1 not in t2.succs and t1.succs not in t2.succs
-- div,1
all t:Track | t not in t.succs
all disj t1,t2:Track | (t2 in t1.succs => t1 not in t2.succs) and (t1 in t2.succs => t2 not in t1.succs)
-- div,1
-- equiv pair end
-- equiv pair start,3
all t: Track | all p: succs.t | all s: t.succs | p not in s.succs
-- div,1
all t : Track | all k : Track | t->k in succs implies (all z : Track | k->z in succs implies z->t not in succs)
-- div,1
all t1, t2 : Track | t1 in succs.t2 and t1 != t2 implies t2 not in succs.succs.t1
all t : Track | t not in succs.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track, e:Entry, ex:Exit | (t not in t.succs) and ex in e.succs => e not in ex.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in t.succs =>
all disj t1,t2:Track | (t2 in t1.succs => t1 not in t2.succs)
-- div,1
-- equiv pair end
