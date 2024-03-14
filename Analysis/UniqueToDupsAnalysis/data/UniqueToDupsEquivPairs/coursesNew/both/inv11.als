-- equiv pair start,4
no (grades.Grade).Student
-- div,1
no Student.(Course.grades)
-- div,1
all s: Student, g: Grade, c: Course | s->g in c.grades implies s in c
-- div,1
all s:Student, c:Course, g:Grade | s->g in c.grades implies s in c.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
one Person.(Course.grades)
-- div,1
-- equiv pair end
-- equiv pair start,5
Course.grades.Grade in Student
-- div,2
all c:Course, p:Person, g:Grade | c->p->g in grades implies p in Student
-- div,2
all c : Course | (all p : Person, g : Grade | p->g in c.grades => p in Student)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student | no (Course - s.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:(Person-Student) | no p.teaches.grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Student | p in p.enrolled.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student | some (s.grades).(s.enrolled.grades)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Person - Student | all c : x.enrolled | no c.grades
-- div,1
-- equiv pair end
-- equiv pair start,3
all st :Student, c:st.enrolled, g : Grade | st->g in c.grades
-- div,1
all s: Student| all c: Course| all g: Grade| c in s.enrolled implies s in c.grades.g
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | c.grades[s] in Grade implies s in c.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student | {c : Course, p : Person | some c.grades}.s in s.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Student | all c : Course| lone p.(c.grades) implies c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student | all c : s.enrolled | ( some g : Grade | s->g in c.grades)
-- div,2
-- equiv pair end
-- equiv pair start,1
all s: Student| all c: Course| all g: Grade| c in s.enrolled implies s in g.grades.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | some c : Course | all g : Grade | s -> g in c.grades implies c in s.enrolled
-- div,1
-- equiv pair end
