one Course.grades.Grade
-- div,1
lone Course.grades.Grade
-- div,3
grades in Course -> Student ->  Grade
-- div,1
grades in Course -> Person one -> Grade
-- div,1
grades in Course -> Person lone -> Grade
-- div,1
lone Student.enrolled.grades.Grade
-- div,1
lone (Student & Course.grades.Grade)
-- div,1
lone (Course.grades.Grade & Student)
-- div,1
all s : Student | lone grades.Grade
-- div,1
all c : Course | one c.grades.Grade
-- div,1
all g: one Grade | lone Course.grades.g
-- div,1
all c : Course | lone c.grades.Grade
-- div,2
all s: Student | lone grades.Grade.s
-- div,3
all s:Student | lone s.(Course.grades)
-- div,3
all s:Student | lone (s.enrolled).grades
-- div,1
all s:Student | lone s.(enrolled.grades)
-- div,1
all s: Student | lone ~(Course.grades).s
-- div,2
all p: Student | lone ~(Course.grades).p
-- div,1
all s:Student | lone s.((s.enrolled).grades)
-- div,1
all p : Student | lone p.(p.enrolled.grades)
-- div,1
all s : Person, c: Course | lone c.projects
-- div,1
all c : Course | c.grades in Person lone -> Grade
-- div,1
all c:Course,g:Grade | lone c.grades.g
-- div,3
all c : Course | lone c.grades.Grade & Student
-- div,1
all s : Student, c : Course | one c.grades.s
-- div,1
all c : Course | lone (Student & c.grades.Grade)
-- div,3
all s:Student, c:Course | one s.(c.grades)
-- div,3
all c : Course | c.grades.Grade in Student.iden
-- div,1
all c : Course | c.grades.Grade->Person in iden
-- div,2
all x : Student | lone x->Grade & Course.grades
-- div,1
all c:Course,p:Person | lone c.grades.Grade
-- div,1
all c : Course | lone c.grades.Grade & enrolled.c
-- div,1
all s : Student , c : Course | lone grades.Grade.s
-- div,1
all s : Student , c : Course | lone c.grades.Grade
-- div,1
all s : Student | lone grades.Grade.s & s.enrolled
-- div,3
all s : Student, c : s.enrolled | one s.(c.grades)
-- div,2
all c : Course | lone c.grades.Grade & c.~enrolled
-- div,1
all c : Course, s : Student | one s & c.grades.Grade
-- div,1
all p: Person, c: Course | lone (c.grades.Grade-p)
-- div,1
all s: Student, c: Course | one (c.grades.Grade & c)
-- div,1
all s: Student, c: Course | one (c.grades.Grade & s)
-- div,2
all disj s1,s2:Student | lone s1.projects & s2.projects
-- div,1
all s: Student, c: s.enrolled | lone c.grades.Grade
-- div,4
all s : Student | all c : s.enrolled | lone c.grades
-- div,1
all p: Person, c: Course, g: Grade | p->g in c.grades
-- div,1
all c : Course | lone p : Student | p in c.grades.Grade
-- div,1
all c : Course, s : Student | lone c.grades.Grade & Student
-- div,1
all s: Student | lone g: Grade | s->g in Course.grades
-- div,1
all s : Student | all c : Course | lone (s.enrolled.grades)
-- div,1
all c : Course | all s : Person | one c.grades.Grade & s
-- div,1
all c : Course | all s : Student| one c.grades.Grade & s
-- div,2
all c: Course, s: Student | one (s.enrolled & c.grades.Grade)
-- div,1
all s: Student, c: s.enrolled, g: one Grade | g in c.grades.g
-- div,1
all s: Student, c: Course | c in s.enrolled implies lone c.grades
-- div,2
all c: Course | some s: Student | lone (s & (c.grades.Grade))
-- div,1
all s : Student, c: Course | c in s.enrolled implies one c.grades.s
-- div,1
all s : Student, c : Course | c in s.enrolled and lone c.grades.s
-- div,1
all s: Student, c: s.enrolled, g: one Grade | g in c.grades.Person
-- div,1
all x: Student, y:Course | one z:Grade | y->x->z in grades
-- div,1
all s:Student,c:Course | one g:Grade | c->s->g in grades
-- div,1
all s : Student, c : Course | c in s.enrolled and lone ~(c.grades).s
-- div,1
all p: Person, c: Course | one (c.grades.Grade & p) implies p in Student
-- div,1
all c: Course, s: Student | c in s.enrolled implies one (s & c.grades.Grade)
-- div,1
all c: Course, s: Student | one (s.enrolled & c.(grades.Grade.~enrolled))
-- div,1
all s:Student, c:Course | s->c in enrolled => c.grades in s one -> Grade
-- div,1
all s:Student, c:Course | s->c in enrolled => c.grades in s lone -> Grade
-- div,1
all c : Course | lone g : Grade | all s : Student | (s->g) in c.grades
-- div,1
all c : Course | all s : Student | c in s.enrolled implies one c.grades.Grade
-- div,1
all s : Student | all c : Course | one g1 : Grade | s->g1 in c.grades
-- div,1
all c : Course, g : Grade, s : Student | g in c.grades[s] => #c.grades=1
-- div,8
all s : Student | all c : Course | all g : Grade | no (s->g & c.grades)
-- div,2
all s : Student | all c : Course | all g : Grade | one (s->g & c.grades)
-- div,2
all p: Person, c: Course | p in (c.grades.Grade) implies (c.grades.Grade)-p = none
-- div,1
all c : Course | all p1,p2 : Student | p1+p2 in c.grades.Grade implies p1!=p2
-- div,2
all p: Person, c: Course, g: Grade | c in p.enrolled implies lone c.grades.Grade-p
-- div,1
all s : Student, c: Course | lone g: Grade | c in s.enrolled implies g in c.grades.s
-- div,1
all s : Student, c: Course | lone g: Grade | c in s.enrolled implies c->s->g in grades
-- div,1
all p: Person, c: Course, g: Grade | p->g in c.grades implies (c.grades.Grade - p = none)
-- div,1
all s: Student, c1, c2: Course | c1=c2 => s in c1.grades.Grade && s not in c2.grades.Grade
-- div,1
all s1, s2: Student, c: Course | s1 in c.grades.Grade && s2 in c.grades.Grade => s1!=s2
-- div,1
all s: Student, c1, c2: Course | c1=c2 => s not in c1.grades.Grade || s not in c2.grades.Grade
-- div,1
all p:Person, c:Course, g:Grade | p in Student and c in grades.g.p implies p in enrolled.c
-- div,1
all s : Student | one c : Course | one g : Grade | c in s.enrolled implies s->g in c.grades
-- div,1
all c : Course | lone g : Grade | all s : Student | c in s.enrolled implies (s->g) in c.grades
-- div,1
all s : Student | all c : Course | lone g : Grade | c in s.enrolled implies s->g in c.grades
-- div,2
all s : Student | lone grades.Grade.s & s.enrolled
  
  	all s : Student | lone grades.Grade.s
-- div,1
all s:Student| all c:Course| one g:Grade| s->c in enrolled implies (c->s->g in grades)
-- div,1
all s1, s2: Student, c: Course | s1+s2 in c.grades.Grade && s2 in c.grades.Grade => s1!=s2
-- div,1
all s:Student| all c:Course| lone g:Grade| s->c in enrolled implies (c->s->g in grades)
-- div,1
all c : Course | lone g : Grade | all s : Student | c in s.enrolled and g in c.grades.Grade
-- div,1
all c : Course | all s : Student  | lone g : Grade | c in s.enrolled implies g in c.grades.Grade
-- div,1
all s1, s2 : Student, c : Course , g: Grade | s1->g in c.grades and s2->g in c.grades implies s1!=s2
-- div,1
all u1,u2 : Student | all c : Course | u1 in c.grades.Grade and u2 in c.grades.Grade implies u1=u2
-- div,1
all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1=s2
-- div,1
all u1,u2 : Student | all c : Course | u1 in c.grades.Grade and u2 in c.grades.Grade implies u1!=u2
-- div,1
all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1!=s2
-- div,8
all p: Person, c: Course | p in (c.grades.Grade) and c in p.enrolled implies (c.grades.Grade)-p = none
-- div,1
all s : Student | all c : Course | lone g : Grade | s in enrolled.c implies lone (s->g & c.grades)
-- div,1
all u1,u2 : Student | all g : Grade | all c : Course | (u1->g + u2->g) in c.grades implies u1=u2
-- div,1
all u1,u2 : Student | all g : Grade | all c : Course | (u1->g + u2->g) in c.grades implies u1!=u2
-- div,1
all g1,g2 : Grade | all u : Student | all c : Course | (u->g1 + u->g2) in c.grades implies g1!=g2
-- div,1
all p1 : Student | all c1 : Course |
  	(p1->c1 in enrolled) implies (one g1 : Grade | c1->p1->g1 in grades)
-- div,2
all p1 : Student | all c1 : Course |
  	(p1->c1 in enrolled) implies (some g1 : Grade | c1->p1->g1 in grades)
-- div,1
all s1, s2 : Student, c : Course , g1, g2: Grade | s1->g1 in c.grades and s2->g2 in c.grades implies s1!=s2
-- div,1
all p: Person, c: Course, g: Grade | c in p.enrolled and p->g in c.grades implies (c.grades.Grade - p = none)
-- div,1
all s : Student | lone grades.Grade.s & s.enrolled
  
  	all s : Student, c : s.enrolled | lone c.grades.Grade
-- div,1
all s : Student | lone grades.Grade.s & s.enrolled
  
  	all s : Student, c : s.enrolled | lone grades.Grade.s
-- div,1
all s1,s2 : Student | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,3
all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled
-- div,1
all s : Student | some c : Course, g1 : Grade | c->s->g1 in grades implies all g2 : Grade | c->s->g2 in grades implies g1 = g2
-- div,1
all c : Course | all s : Student | one (c.grades)&s->Grade
	all c : Course | all s : Student | one (c.grades.Grade)&s
-- div,1
all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled and c in s2.enrolled
-- div,2
all c : Course |  c.grades.Grade != none
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,1
all c : Course | all p : Student | c in p.enrolled implies p in c.grades.Grade
	all c : Course | all p1,p2 : Student | p1+p2 in c.grades.Grade implies p1!=p2
-- div,2
all c : Course | c.grades.Person != none implies c.grades.Grade != none
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,1
all c : Course | all p : Person | all g : Grade | p->g in c.grades
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,1
all s : Student | all c : Course | c in s.enrolled implies s in c.grades.Grade
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,1
all s: Student | all g : Grade | s->g in Course.grades
	all s1,s2 : Student | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,2
all p: Student | all g : Grade | p->g in Course.grades
	all s1,s2 : Student | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,1
all c : Course | all g: Grade | g in c.grades.Person implies c.grades.Grade != none
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,1
all c : Course | all p : Person | all g : Grade | p->g in c.grades implies p!=none
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,1
all p: Student | all g : Grade | g != none implies p->g in Course.grades
	all s1,s2 : Student | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,1
all c : Course | all s: Student| all g: Grade | s->g in c.grades
	all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled and c in s2.enrolled
-- div,1
all c : Course | all s: Student| all g: Grade | c in s.enrolled implies s->g in c.grades 
	all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled and c in s2.enrolled
-- div,3
all c : Course | all s: Student| all g: Grade | s->g in c.grades implies c in s.enrolled
	all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled and c in s2.enrolled
-- div,1
all c : Course | all s : Student | all g : Grade | c in s.enrolled implies s->g in c.grades
  all s1, s2 : Student | all c : Course | (s1 in c.grades.Grade) and (s2 in c.grades.Grade) implies (s1 != s2 and s1 in c.enrolled and s2 in c.enrolled)
-- div,1
