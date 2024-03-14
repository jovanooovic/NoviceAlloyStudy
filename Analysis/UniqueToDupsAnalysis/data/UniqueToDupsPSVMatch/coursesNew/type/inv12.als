lone (grades.Grade in ~(grades.Grade))
-- div,1
all x : Student | lone x.x.enrolled.grades
-- div,1
all s: Student, c: Course | lone s & c.grades
-- div,6
all s : Student, c : Course | lone s.c.grades
-- div,1
all s : Student | one c : Course | c.grades[s]
-- div,1
all x: Student, c : x.enrolled | lone c.x.Grade
-- div,1
all s : Student, c : s.enrolled  | lone c.Grade
-- div,1
all s : Student | lone (s in s.enrolled.grades)
-- div,1
all s : Student, c : s.enrolled  | lone s.c.grades
-- div,3
all s: Student| all c: Course | one s in c.grades.g
-- div,1
all x : Student | all y: x.enrolled | some x.y.grades
-- div,1
all c:Course, p:Person,g:Grade | lone p->g in c.grades
-- div,1
all p : Student , c : p.enrolled | lone c.Grade.grades
-- div,1
all s:Student,g:Grade,c:Course | lone s->g in c.grades
-- div,1
all p : Student | lone Course.grades.Grade in Course.p
-- div,1
all p:Person,g:Grade,c:Course|  lone(p->g in c.grades)
-- div,1
all s : Student, c : Course | one g:Grade | c.grades[s]
-- div,1
all p:Person,g:Grade,c:Course|  lone (p->g in c.grades)
-- div,1
all s:Student,g:Grade,c:Course | lone (s->g in c.grades)
-- div,1
all c:Course, p:Person,g:Grade | lone (p->g in c.grades)
-- div,1
all s : Student, enrol : s.enrolled | lone s.enrol.grades
-- div,1
all s : Student, enrol : s.enrolled | lone enrol.s.grades
-- div,1
all x: Person | all y: Course | one g: Grade | y.grades(x)
-- div,1
all s:Student, c:enrolled | one g:Grade | s->g in c.grades
-- div,1
all s: Student, g: Grade, c: Course | lone s->g in c.grades
-- div,1
all s : Student, c : Course, g : Grade | one s->g in c.grades
-- div,1
all s : Student, c : Course, g : Grade | one g in c.grades[s]
-- div,1
all c: Course, p: Student, g: Grade | lone (p->g in c.grades )
-- div,1
all s : Student, enrol : s.enrolled | lone s in enrol.grades.s
-- div,1
all c: Course | all p: Person| lone g: Grade | g in p.c.grades
-- div,1
all c : Course, st : Student, g:Grade | lone (st->g in c.grades)
-- div,1
all s : Student, enrol : s.enrolled | lone enrol.grades.Grade = s
-- div,1
all c : Course | all p : Student | all g : Grade | p->g & c.grades
-- div,1
all s: Student| all c: Course | all g: Grade| some s in c.grades.g
-- div,1
all s : Student, enrol : s.enrolled | lone s in enrol.grades.Grade
-- div,1
all s : Student | (all c : Course, g : Grade | one s->g in c.grades)
-- div,1
all s : Student | (all c : Course, g : Grade | one (s->g in c.grades))
-- div,1
all c : Course | all g : Grade | all s : Person | lone(s->g in c.grades)
-- div,1
all s: Student | all course: s.enrolled | lone (course.grades) & s.Grade
-- div,1
all c : Course | all g : Grade | all s : Student | lone(s->g in c.grades)
-- div,1
all s : Person | all c : Course | all g : Grade | lone (s->g in c.grades)
-- div,1
all s : Student | all c : Course | all g : Grade | lone (s->g in c.grades)
-- div,2
all x : Student | all c : Course | all g : Grade | lone(x -> g in c.grades)
-- div,1
all s : Student |  all c : Course | all g : c.grades | lone s->g & c.grades
-- div,1
all x : Student | all c : Course | all g : Grade | #(x -> g in c.grades) = 1
-- div,1
all c:Course, p:Person,g:Grade | c in p.enrolled implies lone p->g in c.grades
-- div,1
all p : Person | lone g : Grade | all c : Course | c in p.enrolled implies p->g
-- div,1
all x: Person | all y: Course | some g: Grade | g in y.grades(x) && x in Students
-- div,1
all x : Person | all y : Course | one z : Grade | x in enrolled.y and z in y.grades
-- div,1
all s : Student, c : Course, g : Grade | c in s.enrolled implies lone s->g in c.grades
-- div,1
all x : Person | all y : Course | one z : Grade | (x in enrolled.y) and (z in y.grades)
-- div,1
all s : Student, c : Course, g : Grade | c in s.enrolled implies (lone s->g in c.grades)
-- div,1
all s : Student |  all c : Course | all g : c.grades | lone s->g
-- div,1
all s:Student | all g1,g2: Grade | all c:Course | c->s->g1 in grades and c->s->g2 => g1=g2
-- div,1
all c : Course | all p : Person | all g : Grade | c in p.enrolled implies #(p->g in grades)=1
-- div,1
all x:Person, c:Course, g:Grade| x->c in enrolled and x in Student implies one c->x->g in grades
-- div,1
all c : Course | all p : Person | all g : Grade | c in p.enrolled implies     #(p->g)=1 in grades
-- div,1
all c : Course | all p : Person | some g : Grade | #(p->g in c.grades)=0 or #(p->g in c.grades)=1
-- div,1
all x:Student|all y:Course|one z:Grade | y in x.enrolled implies (x->z in y.Course or x->z not in y.Course)
-- div,1
all s : Student |  all c : Course | all g : c.grades |all g2 : Grade | lone s->g2 & c.grades
-- div,1
