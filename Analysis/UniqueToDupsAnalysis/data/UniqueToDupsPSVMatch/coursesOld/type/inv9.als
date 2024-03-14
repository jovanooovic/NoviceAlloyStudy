all p:Professor | none enrolled.p
-- div,1
teaches.(~enrolled) not in Professor
-- div,1
no (teaches.(~enrolled) in Professor)
-- div,1
all p:Professor | p not in ^(~teaches)
-- div,1
all p1,p2 : Person, c : Course | p1.teaches.c
-- div,1
Professor->teaches & Professor->enrolled = none
-- div,1
all p : Professor | p not in p.^(teaches.Course)
-- div,1
all p : Professor | p not in p.^(teaches.Person)
-- div,2
all p : Professor | p not in p.^(teaches.~Course)
-- div,2
no teaches.~enrolled  & teaches.(Course.~teaches)
-- div,1
all disj p1,p2 : Professor, c : Course | p1.teaches
-- div,2
all p1,p2:Professor | no (p1.teaches and p2.teaches)
-- div,1
all disj p1,p2 : Professor | (p1 and p2) not in Student
-- div,1
all t : Professor  | (Professor-t).enrolled & t.teaches
-- div,1
all disj p1,p2:Professor | no p2.((p1.teaches).~enrolled)
-- div,1
no teaches.~enrolled  & (teaches.Course).(Course.~teaches)
-- div,1
all p : Professor | no p.teaches.Course & p.enrolled.Course
-- div,2
all p : Professor | no p.teaches.Course in p.enrolled.Course
-- div,1
all p:Professor | p not in p.^({p:Professor | some teaches})
-- div,1
all p1,p2 : Person, c : Course | c & p1.teaches & p2.teaches
-- div,1
all p : Professor | p.teaches.~enrolled & p.teaches.~teaches
-- div,1
all p: Professor, c : Course | p.enrolled not teaches.teaches
-- div,2
all p1,p2 : Person, c : Course | p1.teaches.c and p2.teaches.c
-- div,1
all t : Professor | not ((t.teaches)) & (enrolled.(t.teaches))
-- div,2
all p:Professor | p not in p.^({p:Professor | some p.teaches})
-- div,1
all p : Professor | p.teaches.Course  not in p.enrolled.Course
-- div,1
all p: Professor | no (p.teaches.~teaches)-p in p.teaches.enrolled
-- div,1
all p:Professor, c:Course | p->c in teaches implies none enrolled.c
-- div,1
all disj p1,p2 : Professor, c : Course | (p1.teaches & p2.enrolled)
-- div,1
all p:Professor, c:Course | p->c implies c.enrolled not in Professor
-- div,1
all p1,p2 : Professor | all c : Course | p1->c in teaches and p2 -> c
-- div,1
all disj p1,p2 : Professor, c : Course | not(p1.teaches & p2.enrolled)
-- div,1
all t : Professor | not ((t.teaches).teaches) & (enrolled.(t.teaches))
-- div,1
all t : Professor | not (teaches.(t.teaches)) & (enrolled.(t.teaches))
-- div,1
all t : Professor | not (teaches.(t.teaches))  & (enrolled.(t.teaches))
-- div,2
all p : Professor, x : Person | p->x in teaches implies x is not Professor
-- div,3
all p:Professor, c:Course | p->c in teaches implies no enrolled.c.Professor
-- div,1
all t1, t2 : Professor | t1->t2 in teaches.~teaches iff enrolled.(t1.teaches)
-- div,1
all p: Professor, c : Course | p in teaches.c implies  Professor & enrolled.c
-- div,1
all p: Professor, c : Course | p in teaches.c implies  Professor && enrolled.c
-- div,1
all p : Professor, c : p.teaches | no (c.~teaches - p) & (p.teaches - enrolled)
-- div,1
all p : Professor, q : Person | q in p.teaches.~enrolled implies q not Professor
-- div,1
all p: Professor, c : Course | p in teaches.c implies  not Professor & enrolled.c
-- div,1
all p: Professor , cour: p.enrolled , col: teaches.cour | no col.enrolled in cour
-- div,1
all t : Professor , p : Professor | t.teaches  implies p.enrolled not in t.teaches
-- div,1
all p : Professor | all c : Course | p.teaches.c implies no enrolled.c & Professor
-- div,2
all p : Professor, c : Course | no p.teaches.c & enrolled.c implies c in p.enrolled
-- div,1
all p: Professor, c : Course | p in teaches.c implies  no (Professor && enrolled.c)
-- div,1
all disj p1, p2 : Professor | p1.teaches != p2.teaches or (grades.Grade).teaches.p2
-- div,2
all p1, p2: Person | one p1.enrolled in p2.enrolled => p1.teaches not in p2.enrolled
-- div,1
all disj p1, p2 : Professor | p1.teaches != p2.teaches or (p1.teaches & enrolled.p2)
-- div,2
all p1,p2:Professor,c:Course | c in p1.teaches and p1!=p2 implies ~(c in p2.enrolled)
-- div,1
all p : Professor, x : Person, c : Course | p->c in teaches implies x is not Professor
-- div,1
all p1,p2:Professor,c:Course | c in p1.teaches and p1!=p2 implies no (c in p2.enrolled)
-- div,1
all p : Professor | all c : Course | some p.teaches.c implies no enrolled.c & Professor
-- div,1
all p : Professor, c : Course | no p.teaches.Course & enrolled.c implies c in p.enrolled
-- div,1
all p1,p2:Professor,c:Course | no (c in p1.teaches and p1!=p2 implies (c in p2.enrolled))
-- div,1
all p:Professor | all p2:Professor-p | p2 in p.teaches.~teaches implies p2 not in enrolled
-- div,1
all p: Professor |all cour: p.teaches | all col: teaches.cour |  no cour not in col.enrolled
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | no r in enrolled.c
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | no c in enrolled.r
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | r not in enrolled.^c
-- div,1
all p1,p2:Professor | all c1,c2:Course | p1->c1 in teaches and p2->c2 in enrolled implies c1!c2
-- div,1
all t : Professor , p : Person | t.teaches and p in Professor implies p.enrolled not in t.teaches
-- div,1
all p1, p2 : Professor, c : Course | c in p1.teaches + p2.teaches implies none p1 + p2 & enrolled.c
-- div,1
all t : Professor , p : Person | t.teaches and p in Professor implies p not in (t.teaches).enrolled
-- div,1
all p1, p2 : Professor, c : Course | c in p1.teaches + p2.teaches implies none (p1 + p2) & enrolled.c
-- div,1
all p1, p2 : Professor, c : Course | p1 != p2 & p1 in teaches.c and p2 in teaches.c implies (p1 = p2)
-- div,1
all p1,p2:Person,c:Course | p1->c in enrolled and p2->c in teaches implies (p1 or p2) not in Professor
-- div,1
all p : Professor, x : Person, c : Course | p->c in teaches and x->c in enrolled implies x is not Professor
-- div,3
all p1,p2 : Person | all c : Course | p1->c in teaches and p2 -> c implies p1 in Professor and p2 in Student
-- div,1
all p1, p2: Person | some c: Course | c in p1.enrolled && c in p2.enrolled => one p1.teaches not in p2.enrolled
-- div,1
all p1,p2 : Person, c : Course | no ( c & p1.teaches & p2.teaches ) implies (p2.enrolled & c) or  (p1.enrolled & c)
-- div,1
all p : Professor, c : Course | p->c in teaches implies all x : Person | x->c in enrolled implies x is not Professor
-- div,1
all p1,p2 : Person, c : Course | ( c & p1.teaches & p2.teaches ) implies no (p2.enrolled & c) or no (p1.enrolled & c)
-- div,1
all disj p1, p2 : Professor, c : Course | (p1 and p2) in teaches.c implies (all c : p1.teaches | p2 not in enrolled.c)
-- div,1
all t1,t2:Professor, c:Course | c in t1.enrolled and c in t2.enrolled => 
  		no t1->c in teaches and no t2->c in teaches
-- div,1
all p : Professor | all c : Course | all person : Person | c in p.teaches and c in person.enrolled implies person not Professor
-- div,1
all p: Person, c,c1:Course, ps:Professor | p->c in teaches and ps->c1 in teaches implies ps->c not in enrolled and p->c not enrolled
-- div,1
all p1,p2:Professor,c1,c2:Course | c1 in p1.teaches and c1 in p2.teaches implies c1 in p1.teaches and c1 in p2.teaches implies (c2 in p1.teaches implies c2 not in enrolled)
-- div,1
all p1,p2:Professor,c1:Course | c1 in p1.teaches and c1 in p2.teaches implies c1 in p1.teaches and c1 in p2.teaches implies (all c2:Course | c2 in p1.teaches implies c2 not in enrolled)
-- div,1
