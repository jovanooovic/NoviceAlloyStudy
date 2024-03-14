all s : Student |
-- div,1
all student: Student | all course: Course
-- div,1
all s:Student | Grade.grade in s.enrolled
-- div,1
all s:Student | Grades.grade in s.enrolled
-- div,1
all s : Student, | implies s in enrolled.c
-- div,2
all s:Student | (s -> Grades) in s.enrolled
-- div,1
all s:Student | (grades.s) in {Grade, Course}
-- div,1
all c.Course | c.(grades.Grade) in enrolled.c
-- div,1
all c : Course | c.grades.Grade in enrolled.C
-- div,1
all s:Student | (grades.p).Grade in s.enrolled
-- div,2
all s:Student | p.(Course.grades) in s.enrolled
-- div,1
all s :Student |no (Course-(s.enroled)).grade.s
-- div,1
all c: Course | c in (s.enrolled)&(grades.Grade)
-- div,1
all s:Student | (s->Grades).grades in s.enrolled
-- div,1
all s :Student |no (Course-(s.enrolled)).grade.s
-- div,1
all c:Grade all s:Student | g.s.grades in s.enrolled
-- div,1
all s:Student | no Course.grade & (Course-s.enrolled)
-- div,1
all c : Course | some c.grades.Grade implies s.enrolled.c
-- div,1
all s: Student, c: s.enrolled | no ((Course-c). & c.grades)
-- div,1
all c:Course, s:Person, g:Grade | g.(c.grades) in p.enrolled
-- div,1
all c : Course | some s : c.grades.Grade implies s.enrolled.c
-- div,1
one p1 : Person | all c : Course | grades.Grade.p1 in s.enrolled
-- div,1
all s : Student, c : Course | s in c.grades.Grades => c in s.enrolled
-- div,1
all s:Student, c:Course | s in c.grades.Grades implies s in teaches.c
-- div,1
all c: Course, p: person | p in c.grades.Grade implies c in p.enrolled
-- div,1
all s: Student, c: Course,  |  c in s.enrolled implies some c.grades.s
-- div,1
all c: courses, s: students | s in c.grades.Grade implies c in s.enrolled
-- div,1
all s:Student, c:Course |  s in c.grades.Grade implies ( s in enrollec.c)
-- div,1
all p:Person,c:Course,g:Grade | (g in p.(c.grades) implies (c in p.enrolled)
-- div,1
all s : Student | all c: Course | p in c.grades.Grade implies c in p.enrolled
-- div,1
all s : Students, C : Course, g : Grade | s->g implies c in a.enrolled.grades
-- div,1
all s : Student, c : Course, g : Grade | c->s->g in grades => p->c in enrolled
-- div,1
all c: Course, pessoa: Student| p in c.grades.Grade implies c in pessoa.enrolled
-- div,1
all s : Student, C : Course, g : Grade | s->g in c.grades implies c in s.enrolled
-- div,1
all s : Student, c : Courses, g : Grade | s->g in c.grades implies c in s.enrolled
-- div,1
all s: Student, c: Course,  | some g: Grade | c in s.enrolled implies g in c.grades.s
-- div,1
all p:Person, c:Course, g:Grade | p in Student c in grades.g.p implies p in enrolled.c
-- div,2
all s : Student | all Course | all g : Grade | c->s->g in grades implies c in s.enrolled
-- div,1
all c:Course,s:Students | (some g:Grade | c -> s -> g in grades) implies s -> c in enrolled
-- div,1
all s: Student, c: Course | c not in s.enrolled => no (.enrolled.grades.grade & c.grades.grade)
-- div,1
all s : Student | all c : Course| all g : Grade | (c->s->g in grades) implies (p->c in enrolled)
-- div,1
all s: Student, c: Course | c not in s.enrolled => no (s.enrolled.grades.grade & c.grades.grade)
-- div,1
all s : Student | all c : Course| all g : Grade | (c->p->g in grades) implies (p->c in enrolled)
-- div,1
all s : Student | all c : Courses | all g : Grade | (c->p->g in grades) implies (p->c in enrolled)
-- div,1
all c : Course | all s : Student | all g : Grade | (s->grade in c.grades) implies (s in c.enrolled)
-- div,1
all s1: Student | all c1: Course | all g1: grade | (c1->s1->g1 in grades) implies s1->c1 in enrolled
-- div,1
all s1: Student | all c1: Course | all g1: grade | (c1->s1->g1 in grades) implies (s1->c1 in enrolled)
-- div,1
all s: Student, c: Course | c not in s.enrolled => no (student.enrolled.grades.grade & c.grades.grade)
-- div,1
all s: Student, c: Course, g: Grade | s->p->g in grades implies (s->c in enrolled and c->p in projects)
-- div,1
all s: Student, c: Course, g: Grade | c->s->g in grades implies (s->c in enrolled and c->p in projects)
-- div,1
all s: Student, c: Course, g: Grades | s->p->g in grades implies (s->c in enrolled and c->p in projects)
-- div,1
all s: Student, c: Courses, g: Grades | s->p->g in grades implies (s->c in enrolled and c->p in projects)
-- div,1
