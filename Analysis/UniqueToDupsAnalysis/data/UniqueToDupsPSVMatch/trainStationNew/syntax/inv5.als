|
-- div,2
all
-- div,1
all t: Track
-- div,1
all x: Junctions
-- div,1
Junction = Track -
-- div,2
some Junction & Track.succ
-- div,1
Junction in Tracks.^(succs)
-- div,1
Junction = some succ.Tracks
-- div,1
Junction = some ~succs.Track
-- div,1
Junction = some (Track.succ)
-- div,1
all t:Track | t in Junctions
-- div,1
all Junction | some t:Track |
-- div,1
all j : Junction | some succ.j
-- div,1
Junctions = Track - Track.succs
-- div,1
Junction = Tracks - Exit - Entry
-- div,1
all Junction in Track.succs.succs
-- div,1
Junction = t & Entry.succs.^succs
-- div,1
Junctions = all t : Track | succ.t
-- div,1
Junction = Track - Track.succ.succ
-- div,1
Junctions in all t : Track | succ.t
-- div,1
all j:Junction | not lone (succs.x)
-- div,1
Junctions = Track - Track.succ.succ
-- div,2
Junction = Track - Track.succ^succs
-- div,1
all t:Track | t in Junction <=> #suc
-- div,3
Junction = Track - Track.succs.succs^
-- div,1
all j: Junctions | some j.succs.succs
-- div,1
Junction = Track - (#succs.Tracks > 2)
-- div,1
all t : Junction | not lone (^succs.)t
-- div,1
Junctions = all t : Track | some succ.t
-- div,1
all t : Junction | not lone (Track.^).t
-- div,1
all t: Tracks | some t.succs = Junction
-- div,1
Junctions = all t : Track | lone succ.t
-- div,1
all t:Track | t in Junction <=> #succ.t>1
-- div,2
all t:Track | #(t.~succs) iff in Junction
-- div,1
Junction = { t : Track | no lone succs.t }
-- div,1
all t:Track | t in Entry <=> no (succs)^.t
-- div,1
all j: Junctions | #( j & Track.succs) > 1
-- div,1
all t:Track | #t.~succs > 1 iff in Junction
-- div,1
all t:Track | t.~succs > #1 iff in Junction
-- div,1
all t:Track | no #(t.~succs) iff in Junction
-- div,1
all t:Track | #t.~succs > #1 iff in Junction
-- div,1
all t:Track | #(t.~succs) > 1 iff in Junction
-- div,1
all x:Track | some succs.x <=> x in Junctions
-- div,1
all t : Track | t in Junction iff some t.succ
-- div,1
all t:Track | t in Junction iff #(succ.t) > 2
-- div,1
all t:Track | some succs^.t <=> t in Junction
-- div,1
all t : Track | t in Juction <=> some succs.t
-- div,1
all t:Track | t in Junction <=> ^(succs).t)>1
-- div,1
all t: Track | t in Junction <=> #(t in Track
-- div,1
Junction = Track.{Track set -> not lone Track}
-- div,1
all t: Track | some succs.t <=> t in Junctions
-- div,1
Junction = Track.(Track set -> not lone Track)
-- div,2
all t: Track | t in Junctions iff some succs.t
-- div,1
all t : Track | not lone succs.t iff t in Join
-- div,1
all t: Track | t in Junction iff somex succs.t
-- div,1
all t : Track | t in Junctions <=> some succs.t
-- div,1
all j: Junctions | some t: Track | j in succs.t
-- div,1
all t : Track | t in Junctions => #(succs.t) > 1
-- div,1
all j:Junction | |(one j.succ) and (some j.succ)
-- div,1
all j:Junction | !(one j.succ) and (some j.succ)
-- div,1
all x : Junction | not lone (succs.x & Tracks-x)
-- div,1
all t : Track | t in Junction => in succs.succs.t
-- div,1
all t:Track | some succs.t implies t in Junctions
-- div,1
all t : Track | t in Junctions <=> #(succs.t) > 2
-- div,1
all t : Track | t in Junctions <=> #(succs.t) > 1
-- div,1
all t:Track | t in Junction iff (some Track.succs
-- div,1
all t : Track | t in Junction => t.succs.size > 1
-- div,1
all t : Track | t in Junction iff (^#(succs).t)>=1
-- div,1
all t : Track | t in Junction iff not lone succs.j
-- div,1
all j: Junction | all t: Track | j in some t.succs
-- div,1
all t : Track | t in Junction <=> 1 + some succs.t
-- div,1
all t: Track | t in Track.succs <=> t1 in Junction
-- div,1
Junction = Track.(succs & Track set -> lone Track)
-- div,1
all t : Track |  #[t.~succs] > 0  <=> t in Junction
-- div,1
Junction = Track - (succs.Track in succs.Track lone)
-- div,1
Junction = Track - (succs.Track in lone succs.Track)
-- div,1
all t j : Track | #succs.j > 1 implies j in Junction
-- div,1
all j : Tracks | j in Junction iff (not lone succs.j)
-- div,1
all t : Track | t in Junction iff #succs.t>1 para a 5
-- div,1
all t1:Track | t1 in Junction implies #(^(succs).t)>1
-- div,1
Junction = Track.(succs & Track set -> not lone Track)
-- div,1
all t : Traks | t in Tracks.succs implies t in Junction
-- div,1
all t:Track | t in Junction iff some disj t1,t2:t.~succ
-- div,1
all t : Track | t in Tracks.succs implies t in Junction
-- div,1
all t : Tracks | t in Tracks.succs implies t in Junction
-- div,2
all t: Track | t in Junction <=> (t & Track.succs) > 1 &
-- div,1
all t : Track | t in Junction <=> t in some Track.^(succs)
-- div,1
all t: Track | t in Junction implies t in some Track.succs
-- div,1
all t : Track | t in Junction iff some disj x,y | t.(~succs)
-- div,1
all t : Track | t in Junction iff some disj x,y : t.(~succs)
-- div,1
all t : Track | t in Junction iff some disj x,y in t.(~succs)
-- div,1
all t : Track | t in Junction iff (some disj x,y : t.(~succs))
-- div,1
all t1:Track | some t2,t2:Track | p1!=t2!=t3 implies p1!=t2!=t3
-- div,1
all t1:Track | some t2,t2:Track | t1!=t2!=t3 implies t1!=t2!=t3
-- div,1
all t : Track | t in Junction iff (some disj x,y : t.(~succs) |)
-- div,1
all t : Track | t in Junction iff #succs.t>1
-- div,2
all disj t,t2,t3:Track | t in Juction <=> some t in Track.^(succs)
-- div,1
all t:Tracks | (some t.succs and !(one t.succs)) iff t in Junction
-- div,1
all x: Junction | some a,b: Tracks | x in (a.succs and x in b.succs)
-- div,1
all x: Junctions | some a,b: Tracks | x in (a.succs and x in b.succs)
-- div,1
all t:Track | t in Junction <=> t in t2.^(succs) and t in t3.^(succs)
-- div,1
not some j:Junction | j->j in succs

not some j:Junction | lone (j . )
-- div,1
all t1,t2,t3: Track| t1 in t2.succs and t1 in t3.succs <=> t in Junction
-- div,1
all j : junction | all t1,t2 : Tracks | t1!=t2 and j in t1.succs&t2.succs
-- div,1
all j : Junction | all t1,t2 : Tracks | t1!=t2 and j in t1.succs&t2.succs
-- div,1
all t1,t2,t3: Track| (t1 in t2.succs and t1 in t3.succs) <=> t in Junction
-- div,1
Junctions = Track.{t1,t2 : Track | t1->t2 in succs and no (lone succs.t1)}
-- div,3
all t1,t2,t3 : Track | t2!=t3 and t1 in t2.succs&t2.succs <=> t1 in jucntion
-- div,1
all j:Junction | disj some t1, t2:Track | t1->j in succs and t2->t1 in succs
-- div,1
all t : Track | t in Entry iff some disj t1, t2 | Track | (t1 + t2) in t.succs
-- div,1
all x,y:Track, y:Track-x| x->y in succs and z->y in succs implies y in Junction
-- div,1
all t, t2: Track | t in t2.succs and some (t & (Tree-t2).succs) => t in Junction
-- div,1
all t1,t2,t3:Track | t2 != t3 t1 in t2.succs and t1 in t3.succs iff t1 in Junction
-- div,1
all disj t1, t2, t3 : Track | t3 in t1.succ and t3 in t2.succ implies t3 = Junction
-- div,1
all j : Junction | #(succs.j) > 2
all t : Track | #(succs.j) > 2 implies t in Junction
-- div,1
all t:Track | t in Junction iff some disj t1,t2:Track | t1 in t.~succ and t2 in t.~succ
-- div,1
all t:Track | t in Junction iff some disj t1,t2:Track | t1 in t.~succs and t2 in t.~succ
-- div,1
all j : Junction | some p1:Track-j), p2:(Track-j) | p1 -> j in succs and p2 -> j in succs
-- div,1
all t1,t2,t3 : Track | t2!=t3 and t1 in t2.succs&t2.succs <=> t1 in Junction
no Track.succ
-- div,1
all t:Track | (some t1,t2:Track | t1 != t2 t in t1.succs and t in t2.succs) iff t in Junction
-- div,1
all j : Junction | t not in Track.succs implies t in Entry
all e : Entry | e not in Track.succs
-- div,1
all j : Junction | j not in Track.succs implies t in Entry
all e : Entry | e not in Track.succs
-- div,1
all t : track | track in Junction iff some t1,t2 : Track | t1 in t.^(~succs) and t2 in t.^(~succs)
-- div,1
all t : Track | track in Junction iff some t1,t2 : Track | t1 in t.^(~succs) and t2 in t.^(~succs)
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t2.succs and t1 != t2 iff t in Junction
-- div,1
all t : Track |some s,u : Track | ((t in s.succs) and (t in u.succs) and s!=u) iff (t is Junction)
-- div,1
all t1:Tracks | some t2,t3:Tracks | t1 in t2.succs and t1 in t2.succs and t1 != t2 iff t in Junction
-- div,1
all t : Track | t in Junctions <=> (all p1, p2 : Track| t in p1.succs and t in p2.succs and p1 != p2)
-- div,1
all j:Junction | some disj t1, t2:Track | t1 != j and t2 != j and and t1->j in succs and t2->t1 in succs
-- div,1
all j : Junction | some p1, p2 : Track - j| p1 -> j in succs and p2 -> j in succs
-- div,1
all j : Juction | #succs.j > 1
all t : Track | all disj p1, p2 : Track |
p1+p2 in succs.t => t in Junction
-- div,1
all t : Track| some j: Junction |some s,u : Track | ((t in s.succs) and (t in u.succs) and s!=u) iff (t ==j)
-- div,1
all t1:Track | some t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 and (t1 in t2.succs and t1 in.succs) implies t1
-- div,1
all t : Track |  ((some s : Track | t in s.succs) and (some u : Track | t in u.succs) and s!=u) iff t is Junction
-- div,1
all t1:Track | some t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 and (t1 in t2.succs and t1 in.succs) implies t1!=t2
-- div,1
all t : Track | (one t1 : Track | t in t1.succs and (one t2 : Track | t in t2.succs and t1 != t2)) iff t in Juction
-- div,1
all t1:Track | Junction in t1 implies some t2,t3:Track | t1 in t2.succs and t1 in t3.succs and t2!=t3 and t2!=t and t3!=t
-- div,1
all t1:Track | some t2,t3:Track | t1!=t2 and t2!=t3 and t1!=t3 and (t1 in t2.succs and t1 in.succs) implies Junction in t1
-- div,1
all t : Track | some y,z : Track |  t in Junction iff (t in y.succs and t in z.succs and y!=z)
-- div,2
all t1:Track | lone (t1 & Track.succs) implies no (Junction & t1)
all t1:Track | no lone (t1 & Track.succs) implies one (Junction & t1)
-- div,1
all t1,t2 : Track | all j : Junction | j in t1.succs implies j in t2.succs and t1!=t2
all t1,t2 : Track | t1!=t2 and t1 not in t2.succ implies t1 not in Junction
-- div,1
all t: Track | t not in Track.succs implies t not in Junction
all t1,t2, some t3 : Track | t1!=t2 and t2!=t3 and t1 in t2.succs and t1 not in t3.succs implies t1 not in Junction
-- div,1
