-- equiv pair start,8
all p: Person, c: Course | one p.(c.grades)
-- div,2
all x : Person | all y : Course | one x.(y.grades)
-- div,1
all c: Course, p: Person | one g: Grade | p->g in c.grades
-- div,1
all s : Person, c : Course | one g : Grade | s->g in c.grades
-- div,1
all p:Person, c:Course| one g:Grade| c->p->g in grades
-- div,1
all c: Course | (all p: Person| one g: Grade | p->g in c.grades)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Person, c : Course | one (c.grades).p
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, p:Person| lone Person.(c.grades)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:Person, c:Course|one g:Grade| c->u->g in grades and u in Student
-- div,1
all x:Person, c:Course| one g:Grade| c->x->g in grades and x in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Person, c:Course|one g:Grade| x->c in enrolled and x in Student implies c->x->g in grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all c1,c2 : Course | all p : Person | all g1,g2 : Grade | 
  (p->g1 in c1.grades and p->g2 in c2.grades) implies c1!=c2
-- div,1
-- equiv pair end
