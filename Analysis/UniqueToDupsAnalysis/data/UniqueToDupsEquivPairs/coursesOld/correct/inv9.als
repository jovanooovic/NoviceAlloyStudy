-- equiv pair start,10
all p: Person | no ((p.teaches.~teaches)-p) & enrolled.(p.teaches)
-- div,4
all p : Person | no (p.teaches.~teaches - p) & p.teaches.~enrolled
-- div,1
all disj p1, p2 : Person | some p1.teaches & p2.teaches implies no p1.teaches & p2.enrolled
-- div,1
all c1, c2 : Course, p1, p2 : teaches.c1 | p1 != p2 implies p1 in teaches.c2 implies p2 not in enrolled.c2
-- div,1
all c1, c2 : Course, p1, p2 : teaches.c1 | p1!=p2 implies p1->c2 in teaches implies p2->c2 not in enrolled
-- div,1
all c1 : Course, p1, p2 : teaches.c1 | p1!=p2 implies all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled
-- div,1
all p1,p2:Person, c1,c2:Course | c1 in p1.teaches and c1 in p2.teaches and p1!=p2 and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,1
-- equiv pair end
