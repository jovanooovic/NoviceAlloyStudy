all c: Course, p:Person| lone p.(c.grades)
-- div,1
all p : Person, c : Course | lone p.(c.grades)
-- div,3
all x : Person | all y : Course | lone y.grades[x]
-- div,3
all p:Person,c:Course|lone g:Grade|  p->g in c.grades
-- div,1
all s : Person, c : Course | lone g : Grade | s->g in c.grades
-- div,1
all c:Course, p:Person| lone g:Grade | p->g in c.grades
-- div,5
all p:Person, c:Course| lone g:Grade| c->p->g in grades
-- div,2
all c: Course | all p: Person| lone g: Grade | p->g in c.grades
-- div,41
all course:Course | all p:Person | lone g:Grade | p->g in course.grades
-- div,2
all u:Person, c:Course, g,x:Grade| c->u->g in grades and c->u->x in grades implies g=x
-- div,1
all x:Person, c:Course, g,u:Grade| c->x->g in grades and c->x->u in grades implies g=u
-- div,2
all c : Course, p : Person | ( all g1,g2 : Grade | p->g1 in c.grades and p->g2 in c.grades implies g1 = g2 )
-- div,3
all x : Person | all y : Course | lone x.(y.grades)
  all p : Person, c : Course | lone p.(c.grades)
-- div,1
