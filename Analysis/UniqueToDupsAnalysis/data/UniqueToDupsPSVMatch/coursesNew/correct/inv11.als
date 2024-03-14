~(grades.Grade) in enrolled
-- div,2
all c:Course | c.grades in enrolled.c->Grade
-- div,1
all c:Course, g:Grade | c.grades.g in enrolled.c
-- div,1
all c: Course, p: c.grades.Grade | p in enrolled.c
-- div,2
all c: Course | all p: (c.grades).Grade | c in p.enrolled
-- div,1
all p: Person, c: Course | some p.(c.grades) => c in p.enrolled
-- div,4
all x : Person | all y : Course | some x.(y.grades) implies x in enrolled.y
-- div,1
all x : Person | all y : Course | some y.grades[x] implies y in x.enrolled
-- div,1
all c:Course,p:Person,g:Grade | p->g in c.grades => c in p.enrolled
-- div,4
all p:Person,g:Grade,c:Course|  p->g in c.grades implies c in p.enrolled
-- div,2
all x:Person, c:Course, g:Grade| c->x->g in grades implies x-> c in enrolled
-- div,2
all c : Course, g : Grade, p : Person | p->g in c.grades implies one (c & p.enrolled)
-- div,1
all p : Person | all g: Grade, c: Course | p->g in c.grades implies c in p.enrolled
-- div,1
all c : Course | ( all g : Grade , p : Person | p->g in c.grades implies p in enrolled.c )
-- div,1
all c: Course | all p: Person, g: Grade | p->g in c.grades => c in p.enrolled
-- div,18
all p: Person | all c: Course, g: Grade | p->g in c.grades implies c in p.enrolled
-- div,1
all c: Course | all p: Person |all g: Grade | p->g in c.grades implies c in p.enrolled
-- div,8
all g : Grade | all c : Course | all x : Person | x -> g in c.grades implies c in x.enrolled
-- div,1
all p : Person | all g : Grade | all c : Course | p->g in c.grades implies c in p.enrolled
-- div,1
