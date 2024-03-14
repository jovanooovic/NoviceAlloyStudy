-- equiv pair start,1
some Course.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,3
all s: Student |some Course.grades.s
-- div,2
all x:Student,y:Grade | x->y in enrolled.grades.x
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student |some ~(Course.grades).s
-- div,1
-- equiv pair end
-- equiv pair start,1
grades in Course one -> Student -> Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
all s :Student |some Course.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
Student in Student.enrolled.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: Student | s.enrolled = grades.s.Grade
-- div,1
all s: Student, c: Course |  c in s.enrolled implies some c.grades.s
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | enrolled.c in c.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | s in s.enrolled.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,8
all s:Student | s.(Course.grades) in s.enrolled
-- div,1
all c : Course | all s : Student | s in c.grades.Grade implies (s in c.enrolled)
-- div,1
all c:Course, s:Student, g:Grade | c->s not in enrolled => c->s->g not in grades
-- div,4
all c : Course | all s : Student | all g : Grade | s->g in c.grades implies s in c.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course | c in (c.grades.Grade).enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
one p1 : Person | grades.Grade.p1 in p1.enrolled
-- div,1
one p1 : Person | all c : Course | grades.Grade.p1 in p1.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all s:Student |  no (Course-(s.enrolled)).grades
-- div,1
all s : Student | no (Course-s.enrolled).grades.Grade
-- div,1
all s: Student, c: Course |  some c.grades implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Student,y:Grade | x->y in x.enrolled.grades
-- div,1
-- equiv pair end
-- equiv pair start,1
Student not in (Person-Student).enrolled.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : s.enrolled | grades.Grade.s in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student |  no Course.grades - s.enrolled.grades
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student, c : grades.Grade.s | c not in s.enrolled
-- div,1
all s : Student | no s.(s.enrolled.grades) - Course.grades.Grade
-- div,1
all s : Student | no s.(s.enrolled.grades) - Grade.~(Course.grades)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student | one (Course-s.enrolled).grades & s->Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student | c in (s.enrolled)&((grades.Grade).s)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, c: s.enrolled | no ((Course-c).grades & c.grades)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student, c : Course | some s.(c.grades) <=> c in s.enrolled
-- div,1
all p:Student, c:Course | p in c.grades.Grade iff c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | s in c.grades.Grade implies s in teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : s.enrolled | lone g : Grade | c->s->g in grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course,s:Student | s.grades in c.grades implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student | all c:Course | no Course.grades implies s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | Person -> Grade in c.grades implies c in Person.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | Student -> Grade in c.grades implies c in Person.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | Student -> Grade in c.grades implies c in Student.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | s in Course.grades.Grade iff grades.Grade.s in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | s in Course.grades.Grade iff s.enrolled in grades.Grade.s
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | all s : Student | c in s.enrolled implies s in c.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | s in Course.grades.Grade implies s.enrolled in grades.Grade.s
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | s in Course.grades.Grade implies s.enrolled in grades.s.Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person-Student | p not in (Course.grades.Grade)&(p.enrolled.grades.Grade)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course |  c not in s.enrolled implies c.grades not in s.enrolled.grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | p not in Student implies all c : Course, g : Grade | c->p->g not in grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, c: Course | c not in s.enrolled => no (s.enrolled.grades.Grade & c.grades.Grade)
-- div,1
-- equiv pair end
