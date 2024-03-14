-- equiv pair start,152
Junction = { t : Track | not lone succs.t }
-- div,4
Junction = Track-{ t : Track | lone succs.t }
-- div,1
all t: Track| #succs.t>1 <=> t in Junction
-- div,16
all j:Track | j in Junction <=> #(succs.j) > 1
-- div,2
all j : Track | #succs.j > 1 iff j in Junction
-- div,5
all x : Track | #(succs.x) > 1 iff (x in Junction)
-- div,1
all t:Track| t in Junction iff #succs.t>1
-- div,55
all x:Track |x in Junction <=> #(succs.x)>1
-- div,2
all t : Track | t in Junction iff #succs.t>=2
-- div,1
all e : Track | not lone succs.e iff e in Junction
-- div,1
all t:Track | not lone succs.t iff t in Junction
-- div,8
all t: Track | t in Junction iff not lone succs.t
-- div,6
all j : Track | j in Junction iff (not lone succs.j)
-- div,2
all t : Track | (t in Junction) <=> (#(t . ~succs) > 1)
-- div,2
all j:Track| j in Junction <=> # j . ~succs > 1
-- div,1
all t:Track | #(t.~succs) > 1 iff t in Junction
-- div,2
all t1 : Track | not lone (succs.t1) iff t1 in Junction
-- div,1
all t:Track | some succs.t and not one succs.t <=> t in Junction
-- div,3
all t : Track | t in Junction iff some p1, p2 : succs.t | p1 != p2
-- div,2
all t: Track| #succs.t!=1 and #succs.t!=0 <=> t in Junction
-- div,1
all t : Track |  some t.~succs && not one t.~succs <=> t in Junction
-- div,1
all t:Track | t in Junction iff some t1,t2:t.~succs | t1 != t2
-- div,1
all t : Track | t in Junction iff some disj t1, t2 : Track | (t1 + t2) in succs.t
-- div,3
Junction = Track.{t1 : Track, t2 : Track | t1->t2 in succs and not lone succs.t2}
-- div,5
all x : Track | (x in Junction implies #(succs.x) > 1) and (#(succs.x) > 1 implies x in Junction )
-- div,1
all t: Track | (t in Junction implies #succs.t > 1) and (#succs.t > 1 implies t in Junction)
-- div,1
all j : Junction | #(succs.j) > 1
all t : Track | #(succs.t) > 1 implies t in Junction
-- div,3
all t : Track | t in Junction iff (some disj x,y : Track | x in t.(~succs) and y in t.(~succs))
-- div,1
all t : Track |  t in Junction iff (some y,z : Track | t in y.succs and t in z.succs and y!=z)
-- div,1
all t:Track | t in Junction iff some disj t1,t2:Track | t1 in t.~succs and t2 in t.~succs
-- div,2
all t:Track | t in Junction iff some t1,t2:Track | t1!=t2 and t in t1.succs and t in t2.succs
-- div,2
all t:Track | (some t1, t2: Track | t1!=t2 and t in t1.succs and t in t2.succs) iff t in Junction
-- div,2
all j : Track | (j in Junction) iff (some p1, p2 : Track| p1 -> j in succs and p2 -> j in succs and p1!=p2)
-- div,1
all x : Track | x in Junction implies #(succs.x)>1
all x : Track |  #(succs.x)>1 implies x in Junction
-- div,1
all t : Track | t in Junction implies #(succs.t)>1
all t : Track | #(succs.t)>1 implies t in Junction
-- div,1
all t:Track | t in Junction iff some t1,t2:Track | t->t1 in ~succs and t->t2 in ~succs and t1 != t2
-- div,1
all j : Junction | #succs.j > 1
all t : Track | all disj p1, p2 : Track |
p1+p2 in succs.t => t in Junction
-- div,2
all t: Track | all disj t1, t2: Track | t in t1.succs && t in t2.succs => t in Junction
all j: Junction | # succs.j > 1
-- div,1
all j : Junction | some t1,t2: Track | t1!=t2 and j in t1.succs&t2.succs
all t1,t2,t3 : Track | t2!=t3 and t1 in t3.succs&t2.succs implies t1 in Junction
-- div,1
all j : Junction | some t1,t2 : Track | t1!=t2 and j in t1.succs and j in t2.succs
all t,t1,t2 : Track | t1!=t2 and t in t1.succs and t in t2.succs implies t in Junction
-- div,2
all t:Track | t in Junction iff some t1,t2:t.~succs | t1 != t2


all t:Track | t in Junction iff some t1,t2:Track | t->t1 in ~succs and t->t2 in ~succs and t1 != t2
-- div,2
all t:Junction | some t1,t2:Track | t->t1 in ~succs and t->t2 in ~succs and t1 != t2
all t:Track | (some t1,t2:Track | t->t1 in ~succs and t->t2 in ~succs and t1 != t2) implies t in Junction
-- div,1
-- equiv pair end
