Person.(grades)
-- div,1
grades in enrolled
-- div,1
~grades in enrolled
-- div,1
no Student.Course.grades
-- div,1
all x: Person, y : Course | x in grades
-- div,1
all x: Person, y : Course | x in grades.y
-- div,1
all s : Student | s.enrolled.Grade.grades
-- div,1
Course.grades.Grade in Student.enrolled.grades
-- div,1
all x: Person, y : Course | x in enrolled.grades.y
-- div,1
all s: Student | no (Course - s.enrolled).s.grades
-- div,1
all p: Person, c: Course | some c.p.grades => c in p.enrolled
-- div,1
all x: Student | all c: Course | c.grades.x => c in x.enrolled
-- div,1
all c: Course | all grade: c.grades | no univ
-- div,1
all s:Student, g:Grade, c:Course | s->g in c => c in s.enrolled
-- div,1
all x: Student | all c: Course | c.grades(x) => c in x.enrolled
-- div,1
all x: Person, y : Course | x in y.grades implies x in enrolled.y
-- div,1
all x: Person, y : Course | x in grades.y implies x in enrolled.y
-- div,1
all x: Student | all c: Course | c in (grades.x) => c in x.enrolled
-- div,1
all x:Student, g:Grade | g in x.grades implies (x.enrolled.grades).g
-- div,6
all p:Person,g:Grade|  p->g in Grade implies p->g in p.enrolled.grades
-- div,2
all c: Course | all grade: c.grades | no grade.Grade
-- div,1
all s : Student | all c : Course | (c in s.enrolled => s.grades != none)
-- div,1
all s : Student | all c : Course | c->s in grades implies c in s.enrolled
-- div,1
all c:Course, p:Person, g:Grade | (g in p.enrolled.c) implies p in Student
-- div,1
all c : Course | all p: Person, g : Grade | c->p->g implies c in p.enrolled
-- div,1
all c : Course | all g: Grade, p: Person | p->g in c.grades implies p.enrolled
-- div,1
all x: Person | all c: Course | x in Student && c.grades(x) => c in x.enrolled
-- div,1
all s : Student, g : Grade, c : Course | g in grades[s] implies c in s.enrolled
-- div,1
all p: Person, c: Course | (c in p.enrolled <=> c in {c: Course | c in p.grades})
-- div,1
all x: Student | all c: Course | some n: Grade | n in c.grades(x) => c in x.enrolled
-- div,1
