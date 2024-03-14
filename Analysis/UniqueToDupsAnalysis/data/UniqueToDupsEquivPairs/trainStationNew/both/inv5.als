-- equiv pair start,2
no Track.succs
-- div,1
all t : Track | t not in Track.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
#succs.Junction > 1
-- div,1
#(Junction.~succs) > 1
-- div,1
-- equiv pair end
-- equiv pair start,2
some succs.Junction
-- div,1
some Junction & Track.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
#Junction.succs > 2
-- div,1
-- equiv pair end
-- equiv pair start,3
#Junction.succs > 1
-- div,2
#(~succs.Junction) > 1
-- div,1
-- equiv pair end
-- equiv pair start,1
all j:Junction | #j.succs > 2
-- div,1
-- equiv pair end
-- equiv pair start,4
all j:Junction | #succs.j > 2
-- div,3
all t:Track | t in Junction => #succs.t > 2
-- div,1
-- equiv pair end
-- equiv pair start,1
Junction = Entry.succs.^succs
-- div,1
-- equiv pair end
-- equiv pair start,8
Junction in Track.succs.succs
-- div,1
Junction in Track.^(succs.succs)
-- div,1
Junction in Track.succs.^succs
-- div,1
all j: Junction | j in (Track.succs.^succs)
-- div,3
all t : Track | t in Junction => some succs.succs.t
-- div,1
all j:Junction | some t1, t2:Track | t1->j in succs and t2->t1 in succs
-- div,1
-- equiv pair end
-- equiv pair start,6
all t: Junction | #t.^succs > 1
-- div,1
not some j:Junction | lone (j . ^succs)
-- div,1
all t: Track | t in Junction => #t.^succs >1
-- div,2
all junction : univ | junction in Junction implies #junction.^(succs)>1
-- div,2
-- equiv pair end
-- equiv pair start,1
Junction = Track - Exit - Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all j : Track | j not in j.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | not lone succs.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Track.succs
-- div,1
-- equiv pair end
-- equiv pair start,10
all t : Junction | #(t.succs) > 1
-- div,1
not some j:Junction | lone (j . succs)
-- div,1
all t:Track | t in Junction => #t.succs > 1
-- div,5
all t: Track | t in Junction implies #(~succs).t > 1
-- div,1
all j:Junction | !(one j.succs) and (some j.succs)
-- div,1
all junction : univ | junction in Junction implies #junction.succs>1
-- div,1
-- equiv pair end
-- equiv pair start,2
all j:Junction | #Track.succs > 2
-- div,1
all t : Junction | #(Track.^succs) > 2 + #((Track.^succs) - t)
-- div,1
-- equiv pair end
-- equiv pair start,1
all j : Junction | (lone succs.j)
-- div,1
-- equiv pair end
-- equiv pair start,1
all j : Junction | #(succs.j) = 2
-- div,1
-- equiv pair end
-- equiv pair start,2
not some j:Junction | j->j in succs
-- div,2
-- equiv pair end
-- equiv pair start,1
all j: Junction | some j.succs.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
Junction = Track - Track.succs.succs
-- div,1
Junction = Track - (Track.succs).^succs
-- div,1
-- equiv pair end
-- equiv pair start,57
Junction = { t : Track | some succs.t  }
-- div,1
all t:Track | t in Junction iff some succs.t
-- div,10
all x:Track | some succs.x <=> x in Junction
-- div,1
all x:Track |x in Junction <=> some succs.x
-- div,1
all t:Track | some succs.t iff t in Junction
-- div,8
all t1 : Track | some (succs.t1) iff t1 in Junction
-- div,1
all t : Track |  some t.~succs <=> t in Junction
-- div,1
all t:Track | t in Junction iff some ^succs.t
-- div,1
all t:Track | some ^succs.t <=> t in Junction
-- div,1
all t : Track | t in Junction iff #succs.t>=1
-- div,1
all t: Track | t in Junction <=> t in Track.succs
-- div,2
all t: Track | t in Track.succs <=> t in Junction
-- div,2
all t : Track | t in Junction iff #(^(succs).t)>=1
-- div,5
all t:Track | t in Junction <=> t in Track.^(succs)
-- div,3
all t: Track | t in Junction <=> some (t & Track.succs)
-- div,2
all t:Track | some *succs.succs.t <=> t in Junction
-- div,2
all t : Track | t in Junction <=> some (t & (Track.^succs))
-- div,2
all t : Track | t in Junction <=> t in (some Track.^(succs))
-- div,1
Junction = Track.{t1 : Track, t2 : Track | t1->t2 in succs }
-- div,1
all t:Track | t in Junction iff some ts:Track | t in ts.succs
-- div,2
all t:Track | t in Junction <=> t in Track.^(succs) and t in Track.succs
-- div,1
all x : Track | (x in Junction implies #(succs.x) > 0) and (#(succs.x) > 0 implies x in Junction )
-- div,1
all j : Track | (j in Junction) iff (some p1, p2 : Track| p1 -> j in succs and p2 -> j in succs)
-- div,1
all t : Track | t in Track.succs implies t in Junction
all j : Junction | j in Track.succs
-- div,2
all t : Track | t in Junction iff some t1,t2 : Track | t1 in t.(~succs) and t2 in t.(~succs)
-- div,1
all t : Track | t in Junction iff some t1,t2 : Track | t1 in t.^(~succs) and t2 in t.^(~succs)
-- div,1
all t : Track | t in Junction implies #(succs.t)>0
all t : Track |   #(succs.t)>0 implies t in Junction
-- div,1
all t:Track | t in Junction <=> t in Track.^(succs)
all disj t1,t2,t3:Track | t1 in t2.^(succs) && t1 in t3.^(succs) implies t1 in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all e: Exit | one t: Track | e in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Junction | t in Entry.succs.^succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | Junction in t.succs.^succs
-- div,1
-- equiv pair end
-- equiv pair start,7
all t:Track, j:Junction | some j & t.succs
-- div,1
all t1,t2,t3 : Track | t1 in Junction implies t1 in t2.succs&t3.succs
-- div,1
all j : Junction | all t1,t2 : Track | j in t1.succs&t2.succs
-- div,1
all x,y,z:Track| x in Junction implies y->x in succs and z->x in succs
-- div,1
all t: Track | t not in Track.succs implies t not in Junction
all t1,t2,t3 : Track | t2!=t3 and t1 in t2.succs and t1 not in t3.succs implies t1 not in Junction
-- div,2
all t1:Track | some t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 and t1 in t2.succs and t1 in t3.succs implies one Junction & t1
all t1:Track,t2,t3:Track |  (t1 not in t2.succs or t1 not in t3.succs) implies no (Junction & t1)
-- div,1
-- equiv pair end
-- equiv pair start,50
Junction in (Track.succs.^succs - Junction)
-- div,1
all j: Junction | #(j & Track.succs) > 1
-- div,3
all j: Junction | #(j & Track.succs) > 2
-- div,2
all j: Junction | j in (Track.^succs - j)
-- div,1
all j: Junction | j in (Track.succs.^succs - j)
-- div,1
all t: Track | t in Junction => #(t & Track.succs) > 1
-- div,1
all t: Track | t not in Junction <=> lone (t & Track.succs)
-- div,1
all t : Track | #( t & Track.succs) > 1 iff t in Junction
-- div,2
all t: Track | t in Junction <=> #(t & Track.succs) > 2
-- div,1
all t: Track | t in Junction <=> #(t & Track.succs) > 1
-- div,5
all e : Track | not lone (e & Track.succs) iff e in Junction
-- div,1
all e : Track | not lone (e & succs.Track) iff e in Junction
-- div,1
all t:Track| t in Junction iff #(t & Track.^succs)>1
-- div,2
all e : Track | not lone (e & (^succs).Track) iff e in Junction
-- div,2
all t1:Track | lone (t1 & Track.succs) implies no (Junction & t1)
-- div,2
all e : Track | not lone (e & Track.(^succs)) iff e in Junction
-- div,1
all t: Track | t not in Junction <=> lone (t & (Track-t).succs)
-- div,1
all t: Track | t not in Junction <=> lone (t & Track-t.succs)
-- div,1
all t: Track | t in Junction <=> #(t & (Track-t).succs) > 1
-- div,1
all t: Track | t in Junction <=> #(t & Track-t.succs) > 1
-- div,3
all j: Junction | some t : Track |  #(t)>=2 && j in t.succs
-- div,2
all t:Track, j:Junction | some j & t.succs and !(one j & t.succs)
-- div,1
all j : Junction | all t1,t2 : Track | t1!=t2 and j in t1.succs&t2.succs
-- div,2
all x,y,z:Track| x in Junction implies y->x in succs and z->x in succs and x->x not in succs
-- div,1
all t : Track | t in Junction <=> (all p1, p2 : Track| t in p1.succs and t in p2.succs and p1 != p2)
-- div,1
all t : Track | (all t1,t2 : Track | t in t1.succs and t in t2.succs and t1 != t2) iff t in Junction
-- div,1
all x: Junction | some a,b: Track | x in a.succs.next and x in b.succs.next
-- div,1
all t1, t2, t3: Track | t1 in Junction implies t1 in t2.succs and t1 in t3.succs and t1 != t2 and t2 != t3 and t1 != t3
-- div,1
all t:Track | (some p1,p2:Track | p1 != p2 and p1 in t & Track.succs and p2 in t & Track.succs) iff t in Junction
-- div,1
all t : Track | (one t1 : Track | t in t1.succs and (one t2 : Track | t in t2.succs and t1 != t2)) iff t in Junction
-- div,3
all t1,t2 : Track | all j : Junction | j in t1.succs implies j in t2.succs and t1!=t2
all t: Track | t not in Track.succs implies t not in Junction
-- div,2
all t1,t2 : Track | all j : Junction | j in t1.succs implies j in t2.succs and t1!=t2 and j!=t1
all t: Track | t not in Track.succs implies t not in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | lone succs.t <=> t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
#(~succs.Track) > 2 implies Track in Junction
-- div,1
-- equiv pair end
-- equiv pair start,2
#(~succs.Track) > 1 implies Track in Junction
-- div,1
all t : Track | not lone (~succs.Track) implies t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,8
all t : Track | #(t.succs)>1 iff t in Junction
-- div,1
all t:Track| t in Junction iff #t.succs>1
-- div,4
all e : Track | not lone e.succs iff e in Junction
-- div,1
all t : Track | t in Junction iff not lone t.succs
-- div,1
all t:Track | (some t.succs and !(one t.succs)) iff t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,7
all t : Track | t in Junction iff some t.succs
-- div,3
all t:Track | some t.^succs <=> t in Junction
-- div,1
all t : Track | t in Junction <=> some t.^succs
-- div,1
all t:Track | t in Junction <=> #(t.^succs) > 0
-- div,1
all t:Track | t in Junction iff some ts:Track | ts in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,5
all t:Track | t in Junction iff #(succs.t) > 2
-- div,2
all t: Track | #succs.t > 2 iff t in Junction
-- div,2
all j : Junction | #(succs.j) > 2
all t : Track | #(succs.t) > 2 implies t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t in Junction <=> #(t.^succs) > 1
-- div,1
-- equiv pair end
-- equiv pair start,26
all x:Track| some succs.x implies x in Junction
-- div,4
all t: Track| some succs.t => t  in Junction
-- div,9
all t : Track | #(succs.t) > 0 implies t in Junction
-- div,1
all t1 : Track | some (succs.t1) implies t1 in Junction
-- div,1
all t, t2 : Track | t in t2.succs implies t in Junction
-- div,1
all t : Track | t in Track.succs implies t in Junction
-- div,1
all x,y,z:Track| x->y in succs and z->y in succs implies y in Junction
-- div,1
all a,b,c:Track| a->b in succs and c->b in succs implies b in Junction
-- div,1
all t, t1, t2: Track | t1 in succs.t && t2 in succs.t => t in Junction
-- div,2
all t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs implies t1 in Junction
-- div,2
all t1,t2,t3:Track | t1 in t2.^(succs) && t1 in t3.^(succs) implies t1 in Junction
-- div,2
all t1:Track | all t2,t3:Track | t1 in t2.succs and t1 in t3.succs implies t1 in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track, j:Junction | some Junction & t.succs
-- div,1
-- equiv pair end
-- equiv pair start,8
all j:Track | j in Junction <=> #(^(succs).j) > 1
-- div,1
all t:Track | t in Junction <=> #(^(succs).t)>1
-- div,3
all x: Track | x in Junction <=> #(^(succs).x) > 1
-- div,1
all j:Track | j in Junction <=> not lone ^succs.j
-- div,3
-- equiv pair end
-- equiv pair start,12
all x : Junction | not lone (succs.x & Track - x)
-- div,1
all x : Junction | not lone (succs.x & (Track - x))
-- div,2
all j:Junction | not lone (succs.j & (Track-j))
-- div,1
all j: Junction | some t, l : Track | t != l and t!= j and l!=j and j in t.succs and j in l.succs
-- div,1
all t: Track | t in Junction implies some t1,t2: Track - t | t1 in succs.t and t2 in succs.t and t1 != t2
-- div,1
all j : Junction | some t1,t2 : Track | j!=t1 and j!=t2 and j in t1.succs and j in t2.succs and t1!=t2
-- div,1
all j : Junction | some p1:(Track-j), p2:(Track-j) | p1 -> j in succs and p2 -> j in succs and p1 != p2
-- div,1
all j : Junction | some p1, p2 : Track | p1 -> j in succs and p2 -> j in succs and p1 != p2 and j != p1 and j != p2
-- div,1
all t: Track | t in Junction implies some t1,t2: Track | t1 in succs.t and t2 in succs.t and t1 != t2 and t != t1 and t != t2
-- div,1
all t: Track | some t1, t2: Track | t in t1.succs && t in t2.succs && t1!=t2 && t1!=t && t2!=t <=> t in Junction
-- div,2
-- equiv pair end
-- equiv pair start,1
all t:Track | some t.succs.succs <=> t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,3
all t:Track | t in Junction iff   #(Track.succs)>0
-- div,1
all t : Track | t in Junction <=> some Track.^succs
-- div,2
-- equiv pair end
-- equiv pair start,2
all t:Track | t in Junction iff   #(Track.succs)>1
-- div,1
all t : Track | #Track.succs > 1 iff t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t in Junction implies #Track.succs>1
-- div,1
-- equiv pair end
-- equiv pair start,4
all t:Track | t in Junction implies #(t.succs) > 0
-- div,1
all t : Track | t in Junction => some t.^succs
-- div,1
all t:Track | t in Junction implies #(t.^succs) > 0
-- div,1
all j: Junction | some t: Track | j in succs.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | #(succs.t) > 1 implies t = Junction
-- div,1
-- equiv pair end
-- equiv pair start,7
all t, t2 : Track | t in t2.succs iff t in Junction
-- div,1
all t1,t2,t3 : Track | t1 in Junction <=> t1 in t2.succs&t3.succs
-- div,1
all t,t2,t3:Track | t in Junction <=> t in t2.succs and t in t3.succs
-- div,1
all t, t1, t2: Track | t1 in succs.t && t2 in succs.t <=> t in Junction
-- div,1
all t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs iff t1 in Junction
-- div,3
-- equiv pair end
-- equiv pair start,6
all t:Track | some ^succs.succs.t <=> t in Junction
-- div,1
all t : Track | t in Track.succs.^succs iff t in Junction
-- div,1
all t : Track | t in Junction <=> t in Track.succs.^succs
-- div,1
all t : Track | t in Junction <=> t in Track.succs.succs.*succs
-- div,2
all t:Track | some ^succs.succs.t <=> t in Junction
all t:Junction | some succs.t <=> t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | #^(succs).t>1 implies t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,7
all t : Track | #(t.succs) > 1 implies t in Junction
-- div,2
all t : Track | #(~succs.t) > 1 implies t in Junction
-- div,2
all t : Track | not lone (~succs.t) implies t in Junction
-- div,1
all t : Track | #(t.succs) > 1 implies t not in (Track - Junction) and t in Junction
-- div,2
-- equiv pair end
-- equiv pair start,1
all t : Track - Junction| one t: Track | t in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Track-Junction| one succs.x
some succs.Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | one (Entry & t) implies no (Junction & t)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t in Track.^(succs) implies #Track.^(succs)>1
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj t1,t2,t3:Track | t1 in t2.succs  => t1 in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track| #succs.t!=1 and some t.succs <=> t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Track | t in Junction iff all ts:Track | t in ts.succs
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t3.succs implies one Junction & t1
all t1:Track,t2,t3:Track |  (t1 not in t2.succs or t1 not in t3.succs) implies no (Junction & t1)
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Junction | #(Track.^succs) > 1 + #(Track.^succs - t)
-- div,2
-- equiv pair end
-- equiv pair start,2
all t : Track - Junction - Entry| one t: Track | t in t.succs
-- div,2
-- equiv pair end
-- equiv pair start,3
all t: Track| some succs.t and some t.succs <=> t in Junction
-- div,1
all t : Track | t in Junction iff some t.succs && some succs.t
-- div,2
-- equiv pair end
-- equiv pair start,1
all t : Track - Junction - Entry| one l: Track | t in l.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track - Entry - Exit | t in Junction <=> some succs.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Junction | t in Track.^(succs) implies #Track.^(succs)>1
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Junction <=> t in Track.succs.succs.^succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj t1,t2:Track | t1 in Junction implies t2 in ^(succs).t1
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Junction and t not in Exit <=> some succs.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all j: Junction | j in (Track.succs.^succs) and j not in j.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Junction implies some t.succs && some succs.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | #(succs.t) > 1 implies t in (Track - Exit - Entry)
-- div,1
-- equiv pair end
-- equiv pair start,3
all t : Track | t not in Junction => ( no succs.t and one succs.t )
-- div,1
all t : Track | t not in Junction <=> no succs.t and one succs.t
-- div,2
-- equiv pair end
-- equiv pair start,1
all t : Track | t not in Junction iff (lone t.succs and lone succs.t)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Junction iff (some succs.t and t not in succs.t)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | lone t2 : Track | t2 in t.succs implies t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,3
all t : Track | #(succs.t) > 1 implies t in (Junction - Entry - Exit)
-- div,2
all t : Track | #(succs.t) > 1 implies t in (Junction - Exit - Entry)
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Track | t in Junction => #(t.succs) > 1 and (t not in t.succs)
-- div,1
not some j:Junction | j->j in succs

not some j:Junction | lone (j . succs)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Junction iff (some succs.t and t not in ^succs.t)
-- div,1
-- equiv pair end
-- equiv pair start,4
all t:Track | t in Junction implies #(t.succs) > 1 and t not in t.^succs
-- div,4
-- equiv pair end
-- equiv pair start,1
#(succs.Junction) > 1
all t : Track | #(succs.t) > 1 implies t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t,t2,t3:Track | t in Junction <=> t in t2.^(succs) and t in t3.^(succs)
-- div,1
-- equiv pair end
-- equiv pair start,2
all t, t2, t3 : Track | (t in t2.succs and t2 in t3.succs) iff t in Junction
-- div,1
all t,t2,t3:Track | t in Junction <=> t in t2.^(succs) and t in t3.^(succs) and t3 in t2.succs
-- div,1
-- equiv pair end
-- equiv pair start,3
all t: Track |some x: Track | some succs.t && x in succs.t <=> t in Junction
-- div,1
all t: Track | some t1, t2: Track | t in t1.succs && t in t2.succs <=> t in Junction
-- div,2
-- equiv pair end
-- equiv pair start,4
all disj t, t1, t2: Track | t in t1.succs && t in t2.succs <=> t in Junction
-- div,1
all disj t,t2,t3:Track | t in Junction <=> t in t2.succs and t in t3.succs
-- div,3
-- equiv pair end
-- equiv pair start,2
all j : Junction | all t1,t2 : Track | t1!=t2 implies j in t1.succs&t2.succs
-- div,2
-- equiv pair end
-- equiv pair start,1
all t: Track| #succs.t!=1 and #succs.t!=0 and some t.succs <=> t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all j:Junction | some disj t1, t2:Track | t1->j in succs and t2->t1 in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Entry iff some disj t1, t2 : Track | (t1 + t2) in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Track | some disj p1, p2 : Track |
p1 + p2 in succs.t => t in Junction
-- div,1
all t: Track | some disj t1, t2: Track | t in t1.succs && t in t2.succs => t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Entry iff some disj t1, t2 : Track | (t1 + t2) in succs.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Junction <=> ( #(Track.^succs) > 1 + #(Track.^succs - t) )
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Junction <=> ( #(Track.^succs) > 2 + #(Track.^succs - t) )
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | (t in Junction and t not in t.(^succs)) implies (#(t.succs) > 1 )
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Track | t in Junction iff (some t2:Track | succs in t2 -> t and t != t2)
-- div,2
-- equiv pair end
-- equiv pair start,1
all disj t, t1: Track | t in (Track-t1).succs && t in t1.succs <=> t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj t,t2,t3:Track | t in Junction <=> t in t2.^(succs) and t in t3.^(succs)
-- div,1
-- equiv pair end
-- equiv pair start,2
all t1,t2,t3 : Track | t2!=t3 and t1 in t2.succs&t2.succs implies t1 in Junction
-- div,2
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Junction <=> ( #(Track.^succs) >= 1 + #(Track.^succs - t) )
-- div,1
-- equiv pair end
-- equiv pair start,3
all t : Track | t in Junction iff some disj t1, t2 : Track | (t1 & t2) in succs.t
-- div,1
all t : Track | t in Junction iff some disj t1, t2 : Track | t1 & t2 in t.~succs
-- div,2
-- equiv pair end
-- equiv pair start,2
Junction = Track.{t1 : Track, t2 : Track | t1->t2 in succs and ((lone succs.t1))}
-- div,2
-- equiv pair end
-- equiv pair start,1
some x,y:Track|all z:Track| x->y in succs and z->y in succs implies y in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all track : univ | track in Track and #track.^(succs)> 1 implies track in Junction
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Track| t not in t.succs
all t:Track| t in Junction iff #(t & Track.^succs)>1
-- div,2
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Junction and t not in Exit and t not in Entry<=> some succs.t
-- div,1
-- equiv pair end
-- equiv pair start,4
all t: Track | some t1, t2: Track | t in t1.succs && t in t2.succs => t in Junction
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t3.succs implies t1 in Junction
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t2.succs implies one (Junction & t1)
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t3.succs implies one (Junction & t1)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | #(succs.t) > 1 implies t in (Junction - (Junction & Entry & Exit ))
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2 : Track | all j : Junction | j in t1.succs implies j in t2.succs and t1!=t2
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj t1, t2, t3 : Track | t3 in t1.succs and t3 in t2.succs implies t3 = Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1:Track|all t2,t3:Track-t1| t1 in Junction iff t1 in t2.succs and t1 in t3.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
Junction = Track.{t1 : Track, t2 : Track | t1->t2 in succs and (( not lone succs.t1))}
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1:Track|some t2,t3:Track-t1| t1 in Junction iff t1 in t2.succs and t1 in t3.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj t1,t2,t3:Track | t1 in t2.^(succs) && t1 in t3.^(succs) implies t1 in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2:Track | t1 in t2.succs and t1 in (Track-t1).succs implies one (Junction & t1)
-- div,1
-- equiv pair end
-- equiv pair start,1
all a,b,c:Track| a->b in succs and c->b in succs and b->b in succs implies b in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all j:Junction | some disj t1, t2:Track | t1 != j and t1->j in succs and t2->t1 in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | some a : (Track - t), b : (Track - t - a) | t in a.succs and t in b.succs
-- div,1
-- equiv pair end
-- equiv pair start,7
all t: Track | some disj t1, t2: Track | t in t1.succs && t in t2.succs <=> t in Junction
-- div,6
all t: Track | some disj t1, t2: Track | t in t1.succs && t in t2.succs => t in Junction
all j: Junction | # succs.j > 1
-- div,1
-- equiv pair end
-- equiv pair start,3
some x,z:Track|all y:Track| x->y in succs and z->y in succs and x!=z implies y in Junction
-- div,1
some x,y:Track|all z:Track| x->y in succs and z->y in succs and x!=y implies y in Junction
-- div,1
some x:Track, y:Track|all z:Track| x->y in succs and z->y in succs and x!=y implies y in Junction
-- div,1
-- equiv pair end
-- equiv pair start,2
some x,y:Track|all z:Track| x->y in succs and z->y in succs and x!=z implies y in Junction
-- div,2
-- equiv pair end
-- equiv pair start,4
some x,z:Track|all y:Track| y in Junction implies x->y in succs and z->y in succs and x!=z
-- div,4
-- equiv pair end
-- equiv pair start,1
some x:Track, y:Track-x|all z:Track| x->y in succs and z->y in succs  implies y in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all a,b,c:Track| a->b in succs and c->b in succs and b->b not in succs implies b in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t, t2, t3 : Track | t not in t3 and (t in t2.succs and t2 in t3.succs) iff t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
some x:Track, y:Track-Exit|all z:Track| x->y in succs and z->y in succs  implies y in Junction
-- div,1
-- equiv pair end
-- equiv pair start,2
all t,t2,t3:Track | t in Junction <=> t in t3.succs and t3 in t2.succs and t not in t.^(succs)
-- div,1
all t,t2,t3:Track | t in Junction <=> t in t2.^(succs) and t in t3.^(succs) and t3 in t2.succs and t not in t.^(succs)
-- div,1
-- equiv pair end
-- equiv pair start,2
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t2.succs implies no (Junction & t1)
-- div,2
-- equiv pair end
-- equiv pair start,1
all t1,t2:Track | t1 in t2.succs and t1 not in ((Track-t1)-t2).succs implies no (Junction & t1)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj t,t2,t3:Track | t in Junction <=> t in t2.succs and t in t3.succs and t not in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some x,y:Track-Exit|all z:Track| x->y in succs and z->y in succs and x!=z implies y in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all j : Junction | j not in Track.succs implies j in Entry
all e : Entry | e not in Track.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t,t2,t3:Track | t in Junction <=> t in t2.^(succs) and t in t3.^(succs) and t3 in t2.^(succs)
-- div,1
-- equiv pair end
-- equiv pair start,4
all t, t1, t2: Track | t in t1.succs && t in t2.succs && t1!=t2 && t1!=t && t2!=t <=> t in Junction
-- div,2
all t: Track, t2: Track, t3: Track | t != t2 && t2 != t3 && t != t3 && t in t2.succs && t in t3.succs <=> t in Junction
-- div,1
all t1, t2, t3: Track | t1 in Junction implies t1 in t2.succs and t1 in t3.succs and t1 != t2 and t2 != t3 and t1 != t3
all t1, t2, t3: Track |  t1 in t2.succs and t1 in t3.succs and t1 != t2 and t2 != t3 and t1 != t3 implies t1 in Junction
-- div,1
-- equiv pair end
-- equiv pair start,3
all j:Junction | some disj t1, t2:Track | t1 != j and t2 != j and t1->j in succs and t2->t1 in succs
-- div,2
all j:Junction | some disj t1, t2:Track | t1!=t2 and t1 != j and t2 != j and t1->j in succs and t2->t1 in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all j : Track | (j in Junction) iff (some p1, p2 : Track - j| p1 -> j in succs and p2 -> j in succs)
-- div,1
-- equiv pair end
-- equiv pair start,2
all t1:Track | some t2,t3:Track | Junction in t1 implies t1 in t2.succs and t1 in t3.succs and t2!=t3
-- div,1
all t1:Track | Junction in t1 implies some t2,t3:Track | t1 in t2.succs and t1 in t3.succs and t2!=t3
-- div,1
-- equiv pair end
-- equiv pair start,3
all t : Track | (all t1,t2 : Track - t| t in t1.succs and t in t2.succs and t1 != t2) iff t in Junction
-- div,3
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Junction <=> (all p1, p2 : Track| t in p1.succs and t in p2.succs implies p1 != p2)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Junction | some y,z : Track | y->x in succs and z->x in succs and y not in Exit and z not in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2:Track | t1 in t2.succs and t1 not in ((Track-t1)-t2).succs and t1!=t2 implies no (Junction & t1)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj t,t2,t3:Track | one t2.succs and one t3.succs and t in t2.succs and t in t3.succs <=> t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in t.succs
all disj t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs => t1 in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Junction | t not in t.succs
all disj t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs => t1 = Junction
-- div,1
-- equiv pair end
-- equiv pair start,4
all t : Track | some a : (Track - t), b : (Track - t - a) | t in a.succs and t in b.succs implies t in Junction
-- div,4
-- equiv pair end
-- equiv pair start,1
all t:Junction | t not in t.succs
all disj t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs => t1 in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1:Track | Junction in t1 implies some t2,t3:Track | t1 in t2.succs and t1 in t3.succs and t2!=t3 and t2!=t1 and t3!=t1
-- div,1
-- equiv pair end
-- equiv pair start,1
all track : univ | track in Track and #track.^(succs)> 1 implies track in Junction and track not in Exit and track not in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | some disj t1, t2: Track | (t in t1.succs && t in t2.succs) || (t1 in t.succs && t2 in t.succs) <=> t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj t,t2,t3:Track | one t2.succs and one t3.succs and t in t2.succs and t in t3.succs or t in Track.^(succs)<=> t in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all e: Exit | one t: Track | e in t.succs
all j: Junction | some t, l : Track | t != l and t!= j and l!=j and j in t.succs and j in l.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in t.succs
all disj t1,t2,t3:Track | t1 in t2.succs and #t2.succs=1 and t1 in t3.succs and #t3.succs=1 => t1 in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all e: Exit | lone t: Track | e in t.succs
all j: Junction | some t, l : Track | t != l and t!= j and l!=j and j in t.succs and j in l.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Track - Junction - Entry| one l: Track | t in l.succs
all j: Junction | some t, l: Track | t != l  and j in t.succs and j in l.succs
-- div,2
-- equiv pair end
-- equiv pair start,2
all t1,t2:Track | t1 in t2.succs and t1 not in (Track-t2).succs implies no (Junction & t1)
all t:Track | one (Entry & t) implies no (Junction & t)
-- div,2
-- equiv pair end
-- equiv pair start,1
not some j:Junction | j->j in succs
all j:Junction | some disj t1, t2:Track | t1!=t2 and t1 != j and t2 != j and t1->j in succs and t2->t1 in succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Track | one (Entry & t) implies no (Junction & t)
all t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs and t2!=t3 implies one (Junction & t1)
-- div,1
all t1,t2:Track | t1 in t2.succs and t1 in (Track-t2).succs and t1!=t2 implies one (Junction & t1)
all t:Track | one (Entry & t) implies no (Junction & t)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2:Track | t1 in t2.succs and t1 not in ((Track-t1)-t2).succs implies no (Junction & t1)
all t:Track | one (Entry & t) implies no (Junction & t)
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj t,t2,t3:Track | one t2.succs and one t3.succs and t in t2.succs and t in t3.succs and t not in t.^(succs) or t in Track.^(succs)<=> t in Junction
-- div,2
-- equiv pair end
-- equiv pair start,1
all t1,t2:Track | t1 in t2.succs and t1 not in (Track-t2).succs and t1!=t2 implies no (Junction & t1)
all t:Track | one (Entry & t) implies no (Junction & t)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2:Track | t1 in t2.succs and t1 in ((Track-t1)-t2).succs and t1!=t2 implies one (Junction & t1)
all t:Track | one (Entry & t) implies no (Junction & t)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track - Junction - Entry| one l: Track | t in l.succs
all j: Junction | some t, l: Track | t != l and t != j and l!=j and j in t.succs and j in l.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t3.succs implies one (Junction & t1)
all t1:Track | lone (t1 & Track.succs) implies no (Junction & t1)
-- div,2
-- equiv pair end
-- equiv pair start,1
all t1,t2:Track | t1 in t2.succs and t1 not in ((Track-t1)-t2).succs and t1!=t2 implies no (Junction & t1)
all t:Track | one (Entry & t) implies no (Junction & t)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2 : Track | all j : Junction | j in t1.succs implies j in t2.succs and t1!=t2
all t1,t2 : Track | t1!=t2 and t1 not in t2.succs implies t1 not in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track, t2: Track, t3: Track | t != t2 && t2 != t3 && t != t3 && t in t2.succs && t in t3.succs => t in Junction and t2 not in t2.succs && t3 not in t3.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track, t2: Track, t3: Track | t != t2 && t2 != t3 && t != t3 && t in t2.succs && t in t3.succs <=> t in Junction and t2 not in t2.succs && t3 not in t3.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | t not in Track.succs implies t not in Junction
all t1,t2,t3 : Track | t1!=t2 and t2!=t3 and t1 in t2.succs and t1 not in t3.succs <=> t1 not in Junction
-- div,1
-- equiv pair end
-- equiv pair start,4
all t: Track | t not in Track.succs implies t not in Junction
all t1,t2,t3 : Track | t1!=t2 and t2!=t3 and t1 in t2.succs and t1 not in t3.succs implies t1 not in Junction
-- div,4
-- equiv pair end
-- equiv pair start,1
all t1,t2,t3 : Track | t2!=t3 and t1!=t2 and t1 in t2.succs&t2.succs implies t1 in Junction
all t1,t2 : Track | all j : Junction | j in t1.succs implies j in t2.succs and t1!=t2
-- div,1
-- equiv pair end
-- equiv pair start,3
all t: Track | t not in Track.succs implies t not in Junction
all t1,t2,t3 : Track | t1!=t2 and t2!=t3 and t1!=t3 and t1 in t2.succs and t1 not in t3.succs <=> t1 not in Junction
-- div,1
all t: Track | t not in Track.succs <=> t not in Junction
all t1,t2,t3 : Track | t1!=t2 and t2!=t3 and t1!=t3 and t1 in t2.succs and t1 not in t3.succs <=> t1 not in Junction
-- div,2
-- equiv pair end
-- equiv pair start,4
all t1,t2:Track | t1 in t2.succs and t1 not in (Track-t2).succs implies no(Junction & t1)
all t1,t2:Track | t1 in t2.succs and t1 in (Track-t2).succs implies one (Junction & t1)
all t:Track | one (Entry & t) implies no (Junction & t)
-- div,4
-- equiv pair end
-- equiv pair start,1
all t1:Track | some t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 and t1 in t2.succs and t1 in t3.succs implies one Junction & t1
all t1:Track,t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 and (t1 not in t2.succs or t1 not in t3.succs) implies no (Junction & t1)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2,t3 : Track | t2!=t3 and t1!=t2 and t1 in t2.succs&t2.succs implies t1 in Junction

all t: Track | t not in Track.succs implies t not in Junction
all t1,t2,t3 : Track | t1!=t2 and t2!=t3 and t1 in t2.succs and t1 not in t3.succs implies t1 not in Junction
-- div,1
-- equiv pair end
