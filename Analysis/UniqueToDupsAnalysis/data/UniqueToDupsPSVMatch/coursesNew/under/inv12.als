all s:Student| lone s.enrolled.grades.s
-- div,2
all p : Person | all g : Grade | lone p->g
-- div,1
all s:Student, c:Course| lone s.(c.grades)
-- div,9
all x: Student, y: Course | lone x.(y.grades)
-- div,1
all p : Student | all g : Grade | lone p->g
-- div,1
all s : Student,c:Course | #c.grades.s<2
-- div,1
all s:Student | all c:Course |  lone grades.c
-- div,1
all p : Student, c : p.enrolled | lone p.(c.grades)
-- div,1
all s:Student, c:s.enrolled | lone c.grades[s]
-- div,6
all x: Student, c : x.enrolled | lone c.grades.x
-- div,2
all s : Student |
  		all c : Course |
  			lone s.(c.grades)
-- div,1
all p : Student | all c : Course | lone p.(c.grades)
-- div,1
all s:Student,c:Course| lone (s->Grade & c.grades)
-- div,1
all s : Student,c:Course | #s->Grade&c.grades<2
-- div,3
all s: Student | all c: Course | lone ~(c.grades).s
-- div,2
all s:Student, c:Course, g:Grade| lone s.(c.grades)
-- div,1
all x: Course, y: enrolled.x | lone (y & x.grades.Grade)
-- div,1
all x: Person, c: x.enrolled | lone (x & c.grades.Grade)
-- div,1
all x: Student, c : x.enrolled | lone (x & c.grades.Grade)
-- div,1
all s : Student | all c : s.enrolled | lone s.(c.grades)
-- div,4
all s:Student,c:s.enrolled | #c.grades&s->Grade<2
-- div,1
all s : Student | all c : s.enrolled | #(s.grades.c) <= 1
-- div,2
all x: Person, c: x.enrolled | lone (x & Course.grades.Grade)
-- div,1
all p:Person,g:Grade,c:Course|  lone (p->g & c.grades)
-- div,1
all s : Student | all c : Course | lone c->s->Grade & grades
-- div,2
all s: Student, g: Grade, c: Course | lone s->g & c.grades
-- div,1
all s : Student, c : Course | s->c in enrolled implies lone s.(c.grades)
-- div,1
all x : Student | all c : Course | all g : Grade | lone(x -> g)
-- div,1
all s:Student, c:Course | lone g:Grade| s->g in c.grades
-- div,12
all s : Student, c : Course | lone g : Grade | c->g in c.grades
-- div,1
all s:Student, c:Course | lone g:Grade | c->s->g in grades
-- div,1
all x:Student, c:Course| (lone g:Grade| c->x->g in grades)
-- div,1
all s : Student, g: Grade | all c : s.enrolled | lone c->s->g
-- div,1
all c:Course, x:Student| (lone g:Grade | c->x->g in grades)
-- div,1
all c:Course, p:Student | lone g:Grade | c->p->g in grades
-- div,2
all c : Course, st : Student | lone g:Grade | (st->g in c.grades)
-- div,1
all p:Person, g:Grade, c:Course | p->g in c.grades implies lone p
-- div,1
all st : Student, c : Course | lone g : Grade | st->g in c.grades
-- div,1
all s : Student, c : Course, g : Grade | s->g in c.grades implies lone g
-- div,1
all s:Student, c:s.enrolled | lone g:Grade | s->g in c.grades
-- div,2
all c : Course | all p : Student | all g : Grade | lone c.grades.p
-- div,1
all s: Student | all course: s.enrolled | lone (course.grades).Grade & s
-- div,1
all c : Course | all s : Student | lone g : Grade | s->g in c.grades
-- div,2
all c : Course | all p : Student | lone g : Grade | p->g in c.grades
-- div,2
all x:Student | all y:Course | lone g:Grade | x -> g in y.grades
-- div,1
all s:Student | all c:Course | lone g:Grade |s->g in c.grades
-- div,7
all x : Student | all c : Course | lone g : Grade | x -> g in c.grades
-- div,1
all s: Student | all course: s.enrolled | lone ((course.grades) & s -> Grade)
-- div,1
all x:Student | all y:Course | lone z:Grade | x->z in y.grades
-- div,1
all p : Student | all c : Course |lone g : Grade| p->g in c.grades
-- div,2
all x:Student | all z:Course | lone g:Grade | (x->g)in z.grades
-- div,2
all s:Student | all c:Course | lone g:Grade | c->s->g in grades
-- div,2
all c : Course, st : Student, g:Grade | (st->g in c.grades) implies #st->g <= 1
-- div,1
all s : Student | all g : Grade | all c : Course | lone s->g & c.grades
-- div,2
all p : Person | all c : p.enrolled | lone g : Grade | p->g in c.grades
-- div,2
all c : Course | all p : Student | all g : Grade | lone p->g & c.grades
-- div,3
all s : Student | all c : s.enrolled | lone g : Grade | s->g in c.grades
-- div,1
all p : Student | all c : p.enrolled |all g : Grade | lone p->g & c.grades
-- div,1
all p : Person | all g : Grade | all c : Course | c in p.enrolled implies lone p->g
-- div,1
all s: Student| all c: Course | c in s.enrolled implies (lone g: Grade| s in c.grades.g)
-- div,1
all s:Student  | all c:Course | s in enrolled.c => lone g: Grade | c->s->g in grades
-- div,1
all c:Course, p:Person | lone g:Grade | p->g in c.grades and p in Student and c in p.enrolled
-- div,1
all c:Course, x:Student| (some g,y:Grade | c->x->g in grades and c->x->y in grades implies g = y)
-- div,1
all p1 : Student | all c1 : Course |
  	(p1->c1 in enrolled) implies (lone g1 : Grade | c1->p1->g1 in grades)
-- div,1
all c : Course, p : enrolled.c | ( all g1,g2 : Grade | p->g1 in c.grades and p->g2 in c.grades implies g1 = g2 )
-- div,1
all s : Student | (all c : Course| some g, g1 : Grade | s->g in c.grades && s->g1 in c.grades => g=g1)
-- div,1
all s:Student | all g1,g2: Grade | all c:Course | c->s->g1 in grades and c->s->g2 in grades => g1=g2
-- div,2
all x:Person, c:Course, g,k:Grade| x->c in enrolled and x in Student implies c->x->g in grades and c->x->k in grades implies k=g
-- div,2
all g1,g2:Grade | all s:Student | all c1,c2:Course | (c1 in s.enrolled and c2 in s.enrolled and s->g1 in c1.grades and s->g2 in c2.grades and g1!=g2) implies c1!=c2
-- div,1
