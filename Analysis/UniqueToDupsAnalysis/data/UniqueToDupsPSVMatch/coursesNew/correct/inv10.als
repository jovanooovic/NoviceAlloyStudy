Course.grades.Grade in Student
-- div,5
Course.grades in Student -> Grade
-- div,2
grades in Course->Student->Grade
-- div,2
no (Person - Student).(Course.grades)
-- div,1
no Course.grades &(Person-Student)->Grade
-- div,4
all c : Course | c.grades.Grade in Student
-- div,1
all p: Course.grades.Grade | p in Student
-- div,4
all c:Course | c.grades in Student->Grade
-- div,1
all c:Course, g:Grade | (c.grades).g in Student
-- div,4
all y:Course, g:Grade | (y.grades).g in Student
-- div,3
all p:(Person-Student) | p not in Course.grades.Grade
-- div,3
all c:Course, s:Person-Student | no c.grades[s]
-- div,1
all p:Person | p in Course.grades.Grade implies p in Student
-- div,2
all x: Course | all p: x.grades.Grade | p in Student
-- div,1
all p: Person - Student | all c: Course | no p.(c.grades)
-- div,2
all p : Person, c : Course | some p.(c.grades) implies p in Student
-- div,4
all x: Person, y: Course | some x.(y.grades) implies x in Student
-- div,3
all c : Course | all p : Person-Student| no p.(c.grades)
-- div,1
all p1 : Person, c : Course |some p1.(c.grades) implies p1 in Student
-- div,1
all p : Person, g : Grade | g in Course.grades[p] implies p in Student
-- div,2
all p: Person, g: Grade | p->g in Course.grades implies p in Student
-- div,3
all p : Person - Student, c : Course, g : Grade | p->g not in c.grades
-- div,1
all x : Person | all y : Course | some y.grades[x] implies x in Student
-- div,3
all p:Person ,c:Course | #p->Grade&c.grades>0 implies p in Student
-- div,2
all p : Person, g : Grade , c : Course | some p.(c.grades) implies p in Student
-- div,1
all p : Person | all g : Grade | p->g in Course.grades implies p in Student
-- div,1
all p : Person, c: Course, g : Grade | g in p.(c.grades) implies p in Student
-- div,1
all c : Course, p : Person, g : Grade | g in c.grades[p] => p in Student
-- div,2
all c:Course,p:Person,g:Grade| p->g in c.grades => p in Student
-- div,8
all p:Person,c:Course,g:Grade|  p->g in c.grades implies p in Student
-- div,4
all p:Person, g:Grade , c:Course | p->g in c.grades => p in Student
-- div,3
all x:Person, c:Course, g:Grade| c->x->g in grades implies x in Student
-- div,3
all c:Course, p:Person, g:Grade | c->p->g in grades implies p in Student
-- div,5
all p:Person, g:Grade, c:Course| c->p->g in grades implies p in Student
-- div,1
all x:Person, g:Grade, c:Course| c->x->g in grades implies x in Student
-- div,4
all u:Person, c:Course, g:Grade| c->u->g in grades implies u in Student
-- div,1
all p:Person, c:Course, g:Grade | c->p->g in grades implies p in Student
-- div,2
all c : Course, st : Person, g : Grade | (st->g in c.grades) implies (st in Student)
-- div,1
all c:Course |(all s:Person,g:Grade | s->g  in c.grades implies s in Student)
-- div,1
all p: Person | all c: Course, g: Grade | p->g in c.grades implies p in Student
-- div,1
all c: Course | all p: Person, g: Grade | p->g in c.grades => p in Student
-- div,31
all p:Person | all g:Grade, c:Course | p->g in c.grades implies p in Student
-- div,3
all c : Course | all g: Grade, p: Person | p->g in c.grades implies p in Student
-- div,3
all c : Course | (all p : Person, g : Grade | c->p->g in grades implies p in Student)
-- div,1
all x: Person| all c: Course| all g: Grade| x in c.grades.g implies x in Student
-- div,1
all c : Course | all g : Grade | all p : Person | p->g in c.grades => p in Student
-- div,1
all g : Grade | all c : Course | all x : Person | x -> g in c.grades implies x in Student
-- div,1
all x: Person | all y:Course | all z:Grade | x->z in y.grades implies x in Student
-- div,1
all x:Person | all z:Course | all y:Grade | x->y in z.grades implies x in Student
-- div,2
all c : Course | all p : Person | all g : Grade | p->g in c.grades implies p in Student
-- div,6
all p : Person | all g : Grade | all c : Course | p->g in c.grades implies p in Student
-- div,1
all x :Person | all c : Course| all g: Grade | x->g in c.grades implies x in Student
-- div,1
all p:Person | all c: Course | all g: Grade | c->p->g in grades => p in Student
-- div,1
all p:Person | all g:Grade | all c1:Course | (c1->p->g in grades) implies (p in Student)
-- div,2
all p1: Person | all c : Course | all g : Grade | p1->g in c.grades implies p1 in Student
-- div,1
all p1 : Person | all c1 : Course | all g1 : Grade|
  	(c1->p1->g1 in grades) implies (p1 in Student)
-- div,3
