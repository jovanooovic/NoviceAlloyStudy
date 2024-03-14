Junction in Track.succs
-- div,1
Junction in Track.*succs
-- div,2
Junction in Track.^succs
-- div,2
all j : Junction | some succs.j
-- div,3
all x : Junction | some succs.x
-- div,3
all x: Junction | #(succs.x) > 1
-- div,2
all t : Junction | #(succs.t) > 1
-- div,1
all j : Junction | #succs.j > 1
-- div,3
all x : Junction | not one succs.x
-- div,1
all x : Junction | not lone succs.x
-- div,1
all j:Junction | not lone (succs.j)
-- div,3
not some j:Junction | lone (succs . j)
-- div,1
all j : Junction | j in Track.succs
-- div,1
all j:Junction | # j . ~succs > 1
-- div,1
all t : Junction | not lone (^succs).t
-- div,1
all j : Junction | some Track.succs&j
-- div,1
all t : Track - Junction | lone succs.t
-- div,3
all t : Track - Junction | not #(succs.t) > 1
-- div,1
all x:Track |x in Junction => some succs.x
-- div,1
all t: Track| one succs.t => t not in Junction
-- div,1
all t : Track | t in Junction => some succs.t
-- div,4
all t: Track| lone succs.t => t not in Junction
-- div,1
all t : Track | #succs.t>1 implies t in Junction
-- div,7
all t: Track| #succs.t=2 => t in Junction
-- div,3
all t : Track | #(succs.t) > 2 implies t in Junction
-- div,1
all x : Track | x in Junction implies #(succs.x)>1
-- div,1
all j : Track | #succs.j > 1 implies j in Junction
-- div,1
all t:Track | t in Junction => #succs.t > 1
-- div,8
all j:Track | j in Junction implies not lone succs.j
-- div,3
all t: Track | (not lone succs.t) => t in Junction
-- div,1
all t, j : Track | #succs.j > 1 implies j in Junction
-- div,1
all t: Track | t in Junction implies t in Track.succs
-- div,1
all t:Track | t in Junction implies #(^(succs).t)>1
-- div,3
all t: Track | t in Junction implies #t.~succs > 1
-- div,1
all t:Track | #(t.~succs) > 1 implies t in Junction
-- div,1
all t: Track | t not in Track.succs implies t not in Junction
-- div,1
all t:Track | t in Junction => t in Track.^(succs)
-- div,2
all t : Track | t in Junction => some Track.^succs
-- div,1
all t: Junction | some l: Track | t in l.succs
-- div,1
all j:Junction | j in Junction <=> # j . ~succs > 1
-- div,1
all t:Junction | some ts:Track | t in ts.succs
-- div,3
all t: Track | #(t & Track.succs) > 1 => t in Junction
-- div,3
all t : Track | #(succs.t) > 1 implies t in (Track & Junction)
-- div,1
all t:Track | #(t.~succs) > 1 implies t in Junction or no t
-- div,1
all t : Junction | #(Track.^succs) >= 1 + #((Track.^succs) - t)
-- div,1
all t:Track | t in Junction implies some ts:Track | t in ts.succs
-- div,1
all x: Junction | some a,b: Track | x in a.succs and x in b.succs
-- div,2
all x : Junction | some y,z : Track | y->x in succs and z->x in succs
-- div,1
all t : Track | #(succs.t) > 1 implies t in Junction and t not in (Track - Junction)
-- div,2
all disj t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs => t1 in Junction
-- div,1
all t : Track | all disj p1, p2 : Track |
p1+p2 in succs.t => t in Junction
-- div,1
all j: Junction | some t1, t2 :Track | j in t1.^(succs) and j in t2.^(succs)
-- div,1
all t, t2: Track | t in t2.succs and some (t & (Track-t2).succs) => t in Junction
-- div,1
all t : Track | #(succs.t) > 1 implies t in Junction and t not in (Entry + Exit - Junction)
-- div,1
all j : Junction | some p1, p2 : Track - j| p1 -> j in succs and p2 -> j in succs
-- div,1
all j : Junction | some t1,t2: Track | t1!=t2 and j in t1.succs&t2.succs
-- div,1
all x,y:Track, z:Track-x| x->y in succs and z->y in succs implies y in Junction
-- div,1
all t, t2: Track | t in t2.succs and some (t & (Track-t2-t).succs) => t in Junction
-- div,1
all j:Junction | some t1,t2: Track | t1 != t2 and j in t1.succs and j in t2.succs
-- div,5
all j : Junction | some t1,t2 : Track | j in t1.succs and j in t2.succs and t1!=t2
-- div,5
all j : Junction | some p1, p2 : Track | p1 -> j in succs and p2 -> j in succs and p1 != p2
-- div,1
all x : Track | some y,z : Track | x in Junction implies y->x in succs and z->x in succs
-- div,1
all t1,t2:Track | t1 in t2.succs and t1 in ((Track-t1)-t2).succs implies one (Junction & t1)
-- div,1
all t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs and t2!=t3 implies one (Junction & t1)
-- div,2
all j: Junction | some t : Track | some l : Track | j in t.succs and j in l.succs
-- div,1
all j: Junction | some t1, t2 :Track | t1 != t2 and j in t1.^(succs) and j in t2.^(succs)
-- div,1
all disj t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs and t3 in t2.succs=> t1 in Junction
-- div,1
all disj t1,t2,t3:Track | (t1 not in t1.succs) and t1 in t2.succs and t1 in t3.succs => t1 in Junction
-- div,1
all t : Track | some y,z : Track |  t in Junction iff (t in y.succs and t in z.succs and y!=z)
-- div,1
all j : Junction | some p1:(Track-j), p2:(Track-j) | p1 -> j in succs and p2 -> j in succs
-- div,1
all t : Track | t in Junction implies some t1,t2 : Track | t1 in t.^(~succs) and t2 in t.^(~succs)
-- div,1
all t1 : Track | some t2,t3 : Track | t2!=t3 and t1 in t2.succs&t2.succs <=> t1 in Junction
-- div,1
all t1,t2:Track | t1 in t2.succs and t1 in ((Track-t1)-t2).succs and t1!=t2 implies one (Junction & t1)
-- div,1
all j: Junction | some t : Track | some l : Track | t != l and j in t.succs and j in l.succs
-- div,1
all t:Track | some t1, t2: Track | t1!=t2 and t in t1.succs and t in t2.succs implies t in Junction
-- div,1
all t: Track | t in Junction implies some t1,t2: Track | t1 in succs.t and t2 in succs.t and t1 != t2
-- div,1
all j: Junction | some t : Track | some l : Track | j != l and j in t.succs and j in l.succs
-- div,1
all t: Track | some t1, t2: Track | t in t1.succs && t in t2.succs && t1!=t2 <=> t in Junction
-- div,1
all t:Track | some t1, t2: Track | t1!=t2 and t in t1.succs and t in t2.succs iff t in Junction
-- div,1
all j:Track | j in Junction implies some t1,t2:Track | t1!=t2 and t1->j in succs and t2->j in succs
-- div,1
all j: Junction | some t : Track | some l : Track | j in t.succs and j in l.succs implies j != l
-- div,1
all t1:Track | some t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 and t1 in t2.succs implies t1!=t2
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t3.succs and t2 != t3 implies t1 in Junction
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t3.succs and t1 != t2 iff t1 in Junction
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t2.succs and t1 != t2 iff t1 in Junction
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t3.succs and t2 != t3 iff t1 in Junction
-- div,1
all t1:Track | some t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 implies t1!=t2 and t2!=t3 and t1!=t3
-- div,1
all disj t1,t2,t3:Track | t1 in t2.succs and #t2.succs=1 and t1 in t3.succs and #t3.succs=1 => t1 in Junction
-- div,1
all t:Track | (some p1,p2:Track | p1 != p2 and p1 in t & Track.succs and p2 in t & Track.succs) implies t in Junction
-- div,1
all t1:Track | some t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 and t1 in t2.succs and t1 in t3.succs implies t1!=t2
-- div,1
all t1:Track | some t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 and t1 in t2.succs and t1 in t3.succs implies one Junction & t1
-- div,1
all t: Track, t2: Track, t3: Track | t != t2 && t2 != t3 && t != t3 && t in t2.succs && t in t3.succs and t2 not in t2.succs && t3 not in t3.succs => t in Junction
-- div,1
all j : Junction | some t1,t2 : Track |j in t1.succs and j in t2.succs
all t,t1,t2 : Track | t1!=t2 and t in t1.succs and t in t2.succs implies t in Junction
-- div,1
all t: Track | t not in Track.succs implies t not in Junction
all t1,t2: Track | some t3 : Track | t1!=t2 and t2!=t3 and t1 in t2.succs and t1 not in t3.succs implies t1 not in Junction
-- div,1
all t1:Track | some t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 and t1 in t2.succs and t1 in t3.succs implies one Junction & t1
all t1:Track | some t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 and (t1 not in t2.succs or t1 not in t3.succs) implies no (Junction & t1)
-- div,1
