~(grades.Grade) in enrolled
-- div,1
grades.Grade in ~enrolled
-- div,2
all c : Course | c.grades.Grade in enrolled.c
-- div,4
all c:Course | c.(grades.Grade) in enrolled.c
-- div,1
all c : Course | c.grades.Grade in c.~enrolled
-- div,6
all p1 : Person | grades.Grade.p1 in p1.enrolled
-- div,1
all c : Course, s : c.grades.Grade | c in s.enrolled
-- div,2
all p : Person | p not in (Course-(p.enrolled)).grades.Grade
-- div,1
all p : Person, c : Course | c not in p.enrolled implies no ~(c.grades).p
-- div,2
all c : Course, p:Person | p in c.grades.Grade implies p in enrolled.c
-- div,2
all p: Person, c: Course | p in (c.grades.Grade) implies c in p.enrolled
-- div,1
all p : Person, c : Course | c not in p.enrolled implies p not in c.grades.Grade
-- div,1
all p : Person | all c : Course | p in c.grades.Grade implies c in p.enrolled
-- div,1
all p:Person,c:Course,g:Grade | g in p.(c.grades) implies (c in p.enrolled)
-- div,2
all p: Person, c: Course, g: Grade | p in c.grades.g implies p in enrolled.c
-- div,1
all p:Person,c:Course,g:Grade | (p->g in c.grades) implies (c in p.enrolled)
-- div,5
all c:Course, p:Person, g:Grade | c->p->g in grades => c in p.enrolled
-- div,3
all p: Person, c: Course, g: Grade | c->p->g in grades implies p in enrolled.c
-- div,1
all p:Person,c:Course,g:Grade | (c->p->g in grades) implies (c in p.enrolled)
-- div,1
all c: Course, p:Person, g:Grade | c->p->g in grades => p->c in enrolled
-- div,2
all p:Person,c:Course,g:Grade | (c->p->g in grades) implies (p->c in enrolled)
-- div,1
all c:Course,p:Person,g:Grade | c->p->g in grades implies c->p in ~enrolled
-- div,1
all p: Person | all g: Grade | all c: Course | c->p->g in grades implies p->c in enrolled
-- div,1
all c: Course | all p: Person | all g: Grade | c->p->g in grades implies p->c in enrolled
-- div,1
all p,c,g : univ | p in Person and c in Course and g in Grade and c->p->g in grades implies p->c in enrolled
-- div,2
