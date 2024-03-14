-- equiv pair start,21
grades in Course -> Person -> lone Grade
-- div,5
all c : Course | c.grades in Person -> lone Grade
-- div,5
all c : Course | all s : Person | lone (s.(c.grades))
-- div,1
all p: Person, c: Course | lone g: Grade | p in c.grades.g
-- div,1
all c:Course, p:Person | lone g:Grade | c->p->g in grades
-- div,2
all c: Course, p:Person, g1, g2:Grade | c->p->g1 in grades and c->p->g2 in grades => g1 = g2
-- div,2
all p : Person | all c : Course | all g1,g2 : Grade | (p->g1 + p->g2) in c.grades implies g1=g2
-- div,2
all g1,g2:Grade | (some c:Course,p:Person | c->p->g1 in grades and c->p->g2 in grades) implies g1=g2
-- div,1
all p,c,g1,g2 : univ | p in Person and c in Course and g1 in Grade and g2 in Grade and c->p->g1 in grades and c->p->g2 in grades implies g1=g2
-- div,2
-- equiv pair end
