all s:Student | s.enrolled.grades
-- div,1
all s:Student | grades in s.enrolled
-- div,2
all s: Student |some Course.~grades.s
-- div,1
all s:Student | s.Grade in s.enrolled
-- div,2
all s:Student | s. Grade in s.enrolled
-- div,1
all s:Student | grades.s in s.enrolled
-- div,2
all s:Student | s.grades in s.enrolled
-- div,3
all s: Student | s.enrolled = grades.s
-- div,1
all s: Student | grades.s in s.enrolled
-- div,1
all s:Student | grades.(Person -> Grade)
-- div,1
all s : Student | grades.s in s.enrolled
-- div,1
all s:Student | (grades.s) in s.enrolled
-- div,2
all s:Student | Grade.grades in s.enrolled
-- div,1
all s:Student | (s -> Grade) in s.enrolled
-- div,1
all s:Student | grades.Grade in s.enrolled
-- div,1
all s:Student | Course.grades in s.enrolled
-- div,1
all s : Student | grades.Grade in s.enrolled
-- div,1
all s:Student | (grades.s) in {Grade: Course}
-- div,1
all s: Student | Grade.s.~grades in s.enrolled
-- div,1
all s:Student |  (no Course-s.enrolled).grades
-- div,1
all x:Student,y:Grade | x->y in enrolled.grades
-- div,1
all s:Student | (s->Grade).grades in s.enrolled
-- div,1
all s:Student | grades.(s->Grade) in s.enrolled
-- div,1
all s:Student | grades.(s -> Grade) in s.enrolled
-- div,1
all s:Student | grades.Grade.s implies s.enrolled
-- div,1
all c : Course , s : c.grades.Grade | s.enrolled.c
-- div,1
all s : Student | no s.enrolled - (s->Grade).~grades
-- div,1
all s:Student | grades.Grade.s.Person in (s.enrolled)
-- div,1
all s:Student | no Course.grades & (Course-s.enrolled)
-- div,1
all c : Course | some c.grades.Grade implies enrolled.c
-- div,1
all c : Course | (c.grades).Grade in Student.enrolled.c
-- div,1
all c:Course, s:Person, g:Grade | c.~grades in s.enrolled
-- div,1
all c:Course, s:Student, g:Grade | no s.enrolled.c.grades
-- div,2
all c:Course, s:Person, g:Grade | g.~grades in s.enrolled
-- div,1
all c:Course, s:Student, g:Grade | (c.grades) in s.enrolled
-- div,1
all s : Student | no s in (Course-(s.enrolled)).grades.Grade
-- div,1
all c: Course, s: Student | c in (s.enrolled)&(grades.Grade)
-- div,1
all c : Course | c.grades.Grade in ((c.enrolled) in Student)
-- div,1
all s:Student | no Course.~grades.Grade & (Course-s.enrolled)
-- div,1
all c:Course, s:Person, g:Grade | (c.g).~grades in s.enrolled
-- div,1
all s:Student | no Course.^grades.Grade & (Course-s.enrolled)
-- div,1
all c:Course, s:Person, g:Grade | (s.g).~grades in s.enrolled
-- div,1
all c:Course, s:Person, g:Grade | (s.c).~grades in s.enrolled
-- div,1
all c:Course, s:Person, g:Grade | (s->g).~grades in s.enrolled
-- div,3
all c:Course,s:Student | s in c.grades implies c in s.enrolled
-- div,1
all s : Student | no s.enrolled.grades - Grade.~(Course.grades)
-- div,2
all s: Student, c: Course |  c.grades.s implies c in s.enrolled
-- div,1
all p:Person,c:Course,g:Grade | g in grades implies g in grades
-- div,1
all x:Student, g:Grade | g in x.grades implies x.enrolled.grades
-- div,2
all c:Course, s:Person, g:Grade | (s->g) in c.grades in s.enrolled
-- div,1
all p:Person,c:Course,g:Grade | g in c.grades implies g in c.grades
-- div,1
all c:Course | all s:Student | s.(c.grades) implies c in s.enrolled
-- div,1
all s:Student,c:Course,g:Grade | g in s.grades implies g in s.grades
-- div,1
all s : Student, C : Course, g : Grade | s->g implies c in s.enrolled
-- div,1
all s : Student, C : Course, g : Grade | s->g implies c in a.enrolled
-- div,1
all s:Student, c:Course | grades.Grade.s implies enrolled.c in Student
-- div,1
all c : Course , p : Person | p in c.grades.Grade implies p.enrolled.c
-- div,2
all p:Person,c:Course,g:Grade | c.p.g in grades implies c.p.g in grades
-- div,1
all c : Course , p : Student | p in c.grades.Grade implies p.enrolled.c
-- div,2
all s:Student, c:Course | c.grades.s.Grade implies enrolled.c in Student
-- div,1
all p:Person,c:Course,g:Grade | (g in c.p.grades) implies (c in p.enrolled)
-- div,2
all p:Person,c:Course,g:Grade | (g in p.c.grades) implies (c in p.enrolled)
-- div,1
all p:Person,c:Course,g:Grade | (g in p.g.grades) implies (c in p.enrolled)
-- div,1
all s : Student, C : Course, g : Grade | s->g implies c in a.enrolled.grades
-- div,1
all s : Student, C : Course, g : Grade | s->g implies c in s.enrolled.grades
-- div,1
all p : Person-Student | p not in (Course.grades.Grade)-(enrolled.grades.Grade)
-- div,1
all s: Student, c: Course | some g: Grade | c in s.enrolled implies g in c.grades
-- div,1
all s:Student,c:Course,g:Grade | g in s.enrolled.grades implies g in s.enrolled.grades
-- div,1
all s:Student,c:Course,g:Grade | g in s.enrolled.Course implies g in s.enrolled.Course
-- div,1
all s : Student, g: Grade, c : Course | s->g in grades && c->s in grades implies s->c in enrolled
-- div,1
all s : Student, g: Grade, c : Course | s->g in grades && c->g in grades implies s->c in enrolled
-- div,2
one p1 : Person | all c : Course | (c in (grades.Grade.p1)) in s.enrolled
	all c:Course, s:Person, g:Grade | (s->g).~grades in s.enrolled
-- div,2
