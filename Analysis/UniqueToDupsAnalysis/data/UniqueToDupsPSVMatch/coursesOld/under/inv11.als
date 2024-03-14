all s :Student |no Course.grades.s
-- div,1
no Student.((Course-Student.enrolled).grades)
-- div,2
all s:Student | (grades.Grade).s in Course
-- div,1
all p : ~(Course.grades).Person | p in Grade
-- div,1
no (Person-Student) & Course.grades.Grade & Course
-- div,1
all s:Student | grades.Grade.s in s.enrolled
-- div,27
all s:Student | Grade.(grades.s) in s.enrolled
-- div,2
all s:Student | grades.s.Grade in s.enrolled
-- div,7
all s:Student | s.grades.Grade in s.enrolled
-- div,1
all s : Student | no grades.Grade.s - s.enrolled
-- div,3
all s :Student |no (Course-(s.enrolled)).grades.s
-- div,1
all s:Student | no s.((Course-s.enrolled).grades)
-- div,1
all s:Student | grades.Grade.Course in (s.enrolled)
-- div,1
all s: Student |no ~((Course-s.enrolled).grades).s
-- div,1
all s : Student, c : grades.Grade.s | c in s.enrolled
-- div,2
all p : Student | p not in (Course-(p.enrolled)).grades.Grade
-- div,1
all s : Student | s not in (Course-s.enrolled).grades.Grade
-- div,2
all s: Student | no (Course-(s.enrolled)).grades.Grade & s
-- div,1
all s:Student | no (Course-s.enrolled).grades & s->Grade
-- div,2
all c: Course, s: Student | (grades.Grade).s in s.enrolled
-- div,1
all s : Student | no s->Grade & (Course-s.enrolled).grades
-- div,3
all x : Student | no x->Grade & (Course-x.enrolled).grades
-- div,1
all s : Student, c : Course - s.enrolled | no c.grades.s
-- div,2
all s : Professor | no s->Grade & (Course-s.enrolled).grades
-- div,1
all s:Student | (grades.Grade).s in {Grade: Course}
-- div,1
all s:Student | no Course.grades.Grade & (Course-s.enrolled)
-- div,1
all s:Student | no (Course-s.enrolled) & Course.grades.Grade
-- div,1
all p : Person-Student | p not in (Course-p.enrolled).grades.Grade
-- div,2
all s : Student, c : Course - (s.enrolled) | s not in c.grades.Grade
-- div,1
all s : Student, c : Course - (s.enrolled) | c not in c.grades.Grade
-- div,1
all p : Person-Professor | p not in (Course-(p.enrolled)).grades.Grade
-- div,1
all s:Student, c:Course | c not in s.enrolled implies no s.(c.grades)
-- div,1
all s : Student | no s.enrolled.grades.s - Grade.~(Course.grades)
-- div,2
all c:Course, s:Person, g:Grade | g.(c.grades) in s.enrolled
-- div,2
all c : Course, s : Student | some s.(c.grades) implies c in s.enrolled
-- div,1
all s: Student, c: Course |  some c.grades.s implies c in s.enrolled
-- div,2
all s : Student, c : Course | some s.(c.grades) => c in s.enrolled
-- div,4
all c:Course, s:Student, g:Grade | g.(c.grades) in s.enrolled
-- div,2
all s: Student, c: Course | s in c.grades.Grade => c in s.enrolled
-- div,7
all c: Course, s: Student | s in c.grades.Grade implies c in s.enrolled
-- div,3
all p:Student, c:Course | p in c.grades.Grade implies c in p.enrolled
-- div,1
all s:Student, c:Course | s in c.grades.Grade implies s in enrolled.c
-- div,3
all c:Course, s:Person, g:Grade | Course.grades.s in s.enrolled
-- div,2
all s: Student, c: Course | c not in s.enrolled => s not in c.grades.Grade
-- div,2
all c:Course, s:Person, g:Grade | Course.grades.Person in s.enrolled
-- div,1
all c:Course | all s:Student | some s.(c.grades) implies c in s.enrolled
-- div,4
all p: Person - Student, c: Course | some c.grades.p implies c in p.enrolled
-- div,1
all s : Student, c : Course | no (s.enrolled & c) implies no (s->Grade & c.grades)
-- div,2
all p : Student | all c: Course | p in c.grades.Grade implies c in p.enrolled
-- div,1
all c : Course | all s : Student | s in c.grades.Grade implies c in s.enrolled
-- div,3
all c : Course | all p : Student | p in c.grades.Grade implies c in p.enrolled
-- div,2
all p:Person,c:Course,g:Grade | (g in c.grades.p) implies (c in p.enrolled)
-- div,2
all s: Student | all c: Course | s in c.grades.Grade implies c in s.enrolled
-- div,2
all p : Person-Student | p not in (Course.grades.Grade)-(p.enrolled.grades.Grade)
-- div,1
all c : Course, g : Grade, s : Student | g in c.grades[s] => c in s.enrolled
-- div,1
all c:Course,s:Student,g:Grade | g in s.(c.grades) implies (c in s.enrolled)
-- div,1
all s: Student, c: Course, g: Grade | s in c.grades.g implies s in enrolled.c
-- div,1
all c: Course | all s: Student | s -> Grade in c.grades implies c in s.enrolled
-- div,1
all p: Student, c: Course, g: Grade | p in c.grades.g implies c in p.enrolled
-- div,3
all s : Student, c : Course, g : Grade | s->g in c.grades implies c in s.enrolled
-- div,2
all c : Course | all s : Student | c not in s.enrolled implies s not in c.grades.Grade
-- div,3
all s: Student, c: Course, g: Grade | c->s->g in grades implies c in s.enrolled
-- div,1
all s: Student, g: Grade, c: Course | c->s->g in grades implies s->c in enrolled
-- div,1
all s:Student, c:Course, g:Grade | c->s->g in grades => s->c in enrolled
-- div,10
all c: Course, pessoa: Student| pessoa in c.grades.Grade implies c in pessoa.enrolled
-- div,1
all x:Student, y:Course, z:Grade | x->y not in enrolled implies y->x->z not in grades
-- div,2
all s : Student, c : Course, g : Grade | (g in c.grades.Person) implies c in s.enrolled
-- div,1
all p:Person,c:Course,g:Grade | g in c.grades.Grade implies g in c.grades.Grade
-- div,1
all s: Student,p:Person, c: Course |  s = p and some c.grades.p implies c in s.enrolled
-- div,1
all c:Course,s:Student | (some g:Grade | c -> s -> g in grades) implies s -> c in enrolled
-- div,1
all s:Student, c:Course | s->c not in enrolled implies all g:Grade | c->s->g not in grades
-- div,2
all p:Person, c:Course, g:Grade | p in Student and c in grades.g.p implies p in enrolled.c
-- div,2
all c : Course | all s : Student | all g : Grade | s->g in c.grades implies s in enrolled.c
-- div,1
all s:Student | all c:Course | all g:Grade | s -> g in c.grades implies c in s.enrolled
-- div,4
all s : Student | all c : Course | all g : Grade | c->s->g in grades implies c in s.enrolled
-- div,1
all s : Student | all g : Grade | all c : Course | s->g in c.grades implies s->c in enrolled
-- div,1
all c: Course | all p: Student | all g: Grade | c->p->g in grades implies p->c in enrolled
-- div,1
all s:Student| all c:Course| all g:Grade| c->s->g in grades implies s->c in enrolled
-- div,4
all s : Student | all c : Course | all g : Grade | s->c->g in grades implies s->c in enrolled
-- div,1
all p1 : Student | all c1 : Course | all g1 : Grade|
  	(c1->p1->g1 in grades) implies (p1->c1 in enrolled)
-- div,7
all s1: Student | all c1: Course | all g1: Grade | (c1->s1->g1 in grades) implies s1->c1 in enrolled
-- div,1
all person : Student | all course : Course | all grade : Grade | (person->grade in course.grades) implies course in person.enrolled
-- div,2
all student: Student | all course: Course | all grade: Grade | student->grade in course.grades implies course in student.enrolled
-- div,2
