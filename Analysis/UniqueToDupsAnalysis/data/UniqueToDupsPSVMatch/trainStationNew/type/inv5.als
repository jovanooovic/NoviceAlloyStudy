Track.^succs
-- div,1
succs.Junction
-- div,1
Junction in *succs
-- div,1
Junction in ^(succs)
-- div,1
Junction in succs.succs
-- div,1
#Track.succs.Junction > 2
-- div,1
Junction in ^(Track.succs)
-- div,1
Junction in (#Track.succs > 2)
-- div,1
all x: Junction | #(succs.^x) > 1
-- div,1
Junction = #(~succs.Junction) > 1
-- div,1
Junction = (all t:Track | succs . t)
-- div,1
all j : Junction | no (lone succs.j)
-- div,2
Junction = Track - Track.succs^succs
-- div,1
Junction = Track - (#succs.Track > 2)
-- div,1
Junction = Track - (#Track.succs > 2)
-- div,1
all t: Track | some t.succs = Junction
-- div,1
not some j:Junction | lone (^j . succs)
-- div,1
all j : Junction | some j in Track.succs
-- div,1
all j : Junction | #(Track.succs & j > 1)
-- div,1
all t: Track | t in Junction => t.succs >1
-- div,1
all t: Track | t in Junction => t.^succs >1
-- div,1
all t:Track | t in Junction iff succs.t > 1
-- div,1
Junction = { t : Track | no (lone succs.t) }
-- div,1
all t:Track | t in Junction <=> #(succs.t>1)
-- div,1
all t : Track | t in Junction iff set t.succs
-- div,1
all t:Track | succs . t implies t in Junction
-- div,1
all t : Track | t in Junction iff succs.t > 1
-- div,1
all t : Track | t in Junction => (t.succs) > 1
-- div,1
all t : Track | t in Junction -> some t.^succs
-- div,1
all t:Track | t in Junction iff t in #succs.t>1
-- div,1
all t:Track | t in Junction implies succs.t > 1
-- div,1
all t : Track | Junction in t.Track.succs.^succs
-- div,1
all t:Track | t in Junction implies succs.t >= 1
-- div,1
all t : Track | t in Junction implies succs.t > 1
-- div,1
all t : Track | t in Junction iff #(^(succs).t>1)
-- div,1
all t : Track | t in Junction <=> lone t in Track
-- div,6
all x : Track | #(succs.x) => 2 iff x in Junction
-- div,2
all t : Track | #(~succs.t) > 1 implies t.Junction
-- div,1
all t:Track | t in Junction <=> #(^(succs).t) gt 1
-- div,1
all t:Track| t in Entry iff #(t in Track.^succs)>1
-- div,2
all t : Track | ^(succs).t>1 implies t in Junction
-- div,1
all x : Track | #(succs.x) => 2 iff (x in Junction)
-- div,1
all t:Track | (Entry & t) implies no (Junction & t)
-- div,1
all t : Track | t in succs.^succs iff t in Junction
-- div,1
all j:Junction | no (one j.succs) and (some j.succs)
-- div,1
Junction = Track - (lone succs.Track in succs.Track)
-- div,1
all t: Track | t in Junction <=> t in Track.succs #2
-- div,1
all t: Track | t in Junction <=> #(t & Track-t.succs)
-- div,1
all t:Track| t in Junction iff #(t in Track.^succs)>1
-- div,1
all t: Track | t in Junction <=> (t & Track.succs) > 2
-- div,1
all t: Track | t in Junction <=> (t & Track.succs) > #2
-- div,1
all e : Track | not lone e.Track.succs iff e in Junction
-- div,1
all t: Track | t in Junction <=> #(t in Track.succs) > 1
-- div,1
all t : Track | t in Junction => some t in Track.^(succs)
-- div,1
all t: Track | t in Junction <=> #(t in Track.succs) >= 1
-- div,1
all t, t1: Track | some t in Track.succs <=> t in Junction
-- div,1
all t : Track | t in Junction <=> some t in Track.^(succs)
-- div,1
all e : Track | not lone e.Track.(^succs) iff e in Junction
-- div,1
all t : Track | ( t & Track.succs) > 1 implies t in Junction
-- div,1
all t: Track | t in Junction <=> no (lone (t in Track.succs))
-- div,1
all t:Track| t in Junction iff t.^succs and t in Track.^succs
-- div,1
all t1:Track | some t2,t3:Track | t1!=t2!=t3 implies t1!=t2!=t3
-- div,1
all t, t1, t2: Track | t1 in succs.t && t2.succs.t => t in Junction
-- div,1
all disj t,t2,t3:Track | t in Junction <=> some t in Track.^(succs)
-- div,1
all x: Junction | some a,b: Track | x in (a.succs and x in b.succs)
-- div,1
all t : Track | t in Junction iff some disj x,y : Track | t.(~succs)
-- div,1
all t, t1, t2: Track | t1 in succs.t && t2.succs.t <=> t in Junction
-- div,1
Junction = Track.{t1,t2 : Track | t1->t2 in succs and no (lone succs.t1)}
-- div,2
Junction = Track.{t1,t2 : Track | t1->t2 in succs and (no (lone succs.t1))}
-- div,1
Junction = Track.{t1 : Track, t2 : Track | t1->t2 in succs and (no (lone succs.t1))}
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t2.succs implies (Junction & t1)
-- div,1
all t1,t2,t3:Track | t1 != t2 != t3 and t1 in t2.succs and t1 in t3.succs iff t1 in Junction
-- div,1
some x,y:Track|all z:Track| x->y in succs and z->y in succs and x not y implies y in Junction
-- div,1
all t : Track |some s,u : Track | ((t in s.succs) and (t in u.succs) and s!=u) iff t is Junction
-- div,1
all t: Track | some t1, t2: Track | t in t1.succs && t in t2.succs && t1!=t2!=t <=> t in Junction
-- div,1
all t:Track | (some p1,p2:Track | p1 != p2 and p1 in t & Track.succs and p2 in p2 in t & Track.succs) iff t in Junction
-- div,1
all t1,t2:Track | t1 in t2.succs and t1 not in ((Track-t1)-t2).succs implies no (Junction & t1)
all t1:Track | (Entry & t1) implies no (Junction & t1)
-- div,1
all t1,t2,t3 : Track | t2!=t3 and t1!=t2 and t1 in t2.succs&t2.succs implies t1 in Junction
all t1 : Track | lone t1 in Track.succs implies t1 not in Junction
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t3.succs implies one (Junction & t1)
all t1:Track | lone t1 in Track.succs implies no (Junction & t1)
-- div,1
all t1:Track | some t2,t3:Track | t1 in t2.succs and t1 in t3.succs implies one (Junction & t1)
all t1:Track | lone (t1 in Track.succs) implies no (Junction & t1)
-- div,1
