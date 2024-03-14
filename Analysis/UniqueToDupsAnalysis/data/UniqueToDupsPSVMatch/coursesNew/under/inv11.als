~(Person.grades) in enrolled
-- div,1
(grades.Grade).Student in Course
-- div,1
all s : Student | (grades.Grade).s in s.enrolled
-- div,1
all x:Student | x.grades in x.enrolled.grades
-- div,1
all s: Student | no (Course - s.enrolled).(s.grades)
-- div,1
all s:Student | no (Course-s.enrolled).grades[s]
-- div,1
all p : Student | p not in (Course-(p.enrolled)).grades.Grade
-- div,1
all c: Course | all grade: c.grades.Person | no univ
-- div,1
all s:Student | no s->Grade & (Course-s.enrolled).grades
-- div,1
all p: Person, c: Course | some c.(p.grades) => c in p.enrolled
-- div,1
all p: Person, c: Course | some c.grades.p => c in p.enrolled
-- div,1
all x: Student, y: Course | some x.(y.grades) implies y in x.enrolled
-- div,2
all p: Student, c: Course | some p.(c.grades) => c in p.enrolled
-- div,1
all s : Student, c : Course | some s.(c.grades) implies c in s.enrolled
-- div,1
all s : Student, c : Course | s in c.grades.Grade => c in s.enrolled
-- div,10
all p : Student | all c : Course| one p.(c.grades) implies c in p.enrolled
-- div,1
all p : Student | all c : Course| some p.(c.grades) implies c in p.enrolled
-- div,2
all s : Student |
  		all c : Course |
  			some s.(c.grades) implies c in s.enrolled
-- div,1
all s : Student,c:Course | #s->Grade&c.grades>0 implies c in s.enrolled
-- div,2
all c : Course | all s : Student |  s in c.grades.Grade implies c in s.enrolled
-- div,1
all s: Student | all c: Course | s in c.grades.Grade implies c in s.enrolled
-- div,2
all x: Course | all y: Student | (y in x.grades.Grade) => x in y.enrolled
-- div,1
all s : Student, g : Grade, c : Course| g in c.grades[s] implies c in s.enrolled
-- div,6
all c: Course, s: Student, g: Grade | s in (c.grades).g implies s in enrolled.c
-- div,5
all s : Student, c : Course , g : Grade | g in s.(c.grades) implies c in s.enrolled
-- div,1
all s:Student,c:Course,g:Grade | s->g in c.grades => c in  s.enrolled
-- div,5
all g : Grade, s : Student, c : Course | s->g in c.grades implies c in s.enrolled
-- div,1
all c: Course, p: Student, g: Grade | p->g in c.grades => c in p.enrolled
-- div,2
all s : Student | all c : Course | c->s->Grade in grades implies c in s.enrolled
-- div,3
all s:Student, g:Grade, c:Course | s->g in c.grades => c in s.enrolled
-- div,4
all s : Student, c : Course, g : Grade | c->s->g in grades implies c in s.enrolled
-- div,1
all p:Person,g:Grade|  p->g in Course.grades implies p->g in p.enrolled.grades
-- div,1
all x:Student, g:Grade, c:Course| c->x->g in grades implies x->c in enrolled
-- div,1
all s : Student, c : Course, g : Grade | c not in s.enrolled implies s->g not in c.grades
-- div,1
all x:Student, c:Course, g:Grade| c->x->g in grades implies x->c in enrolled
-- div,1
all c : Course, st : Student, g:Grade | (st->g in c.grades) implies (c in st.enrolled)
-- div,1
all st :Student, c:Course, g : Grade | st->g in c.grades implies c in st.enrolled
-- div,1
all c:Course |(all s:Student, g:Grade | s->g in c.grades implies c in s.enrolled)
-- div,1
all s:Student | all g:Grade , c:Course | s->g in c.grades implies c in s.enrolled
-- div,1
all c: Course | (all p: Student, g: Grade | p->g in c.grades implies c in p.enrolled)
-- div,1
all p : Student | all g: Grade, c: Course | p->g in c.grades implies c in p.enrolled
-- div,1
all s : Student | (all c : Course, g : Grade | s->g in c.grades implies c in s.enrolled)
-- div,1
all c: Course, p:Person-Professor, g: Grade | p->g in c.grades implies c in p.enrolled
-- div,1
all s : Student | all c : Course | c->s->Grade in grades implies c in s.enrolled + s.teaches
-- div,1
all s: Student| all c: Course| all g: Grade| s in c.grades.g implies c in s.enrolled
-- div,1
all x:Student | all y:Course | all z:Grade| x->z in y.grades implies y in x.enrolled
-- div,1
all x : Student | all c : Course | all g : Grade | x -> g in c.grades implies c in x.enrolled
-- div,1
all c : Course | all g : Grade | all s : Student | s->g in c.grades => c in s.enrolled
-- div,1
all s : Student | all g : Grade | all c : Course | s->g in c.grades implies c in s.enrolled
-- div,1
all s: Student | all c : Course | all g : Grade | s->g in c.grades implies c in s.enrolled
-- div,3
all s : Student | all c : Course | some g : Grade | s->g in c.grades implies c in s.enrolled
-- div,1
all x:Person, g:Grade, c:Course| c->x->g in grades and x in Student implies x->c in enrolled
-- div,2
all s:Student | all g: Grade | all c:Course | c->s->g in grades => s in enrolled.c
-- div,2
all s:Student | all g:Grade | all c:Course | (c->s->g in grades) implies c in s.enrolled
-- div,2
all x:Student | all y:Course | all g:Grade| y not in x.enrolled implies x->g not in y.grades
-- div,2
all p1 : Student | all c1 : Course | all g1 : Grade|
  	(c1->p1->g1 in grades) implies (p1->c1 in enrolled)
-- div,1
