lone Course.grades.Person
-- div,2
lone Course.grades.Student
-- div,2
grades in Course -> Person -> Grade
-- div,1
all s: Course.grades.Grade | lone s
-- div,1
all g: one Person | lone Course.grades.g
-- div,1
all s : Student | lone Course.grades.s
-- div,4
all c:Course,p:Person | lone grades.p
-- div,1
all c : Course | lone (Grade & c.grades.Grade)
-- div,1
all p: Person, c: Course | lone c.grades.p
-- div,1
all s : Person, c: Course | lone c.grades.s
-- div,2
all c:Course,p:Person | lone c.grades.p
-- div,5
all s : Student | lone Course.grades.Grade & s
-- div,1
all s : Student, c : Course | lone c.(s.grades)
-- div,3
all c:Course,s:Student | lone s.(c.grades)
-- div,3
all s:Student, c:Course | lone s.(c.grades)
-- div,20
all s: Student , c : Course| lone c.grades.s
-- div,9
all s : Student, c : Course | lone c.(grades.s)
-- div,1
all c : Course , s : Student | lone c.grades.s
-- div,2
all c : Course | c.grades.Person->Person in iden
-- div,2
all s: Student , c : Course| lone ~(c.grades).s
-- div,3
all s : Person, c: Course | lone c.grades.Person
-- div,1
all s: Student, c: Course | lone grades.Grade.c
-- div,1
all s : Student , c : Course | lone c.grades.Person
-- div,1
all s : Student, c: s.enrolled | lone s.(c.grades)
-- div,10
all p : Student, c : p.enrolled | lone p.(c.grades)
-- div,1
all s: Student, c: s.enrolled | lone c.grades.s
-- div,4
all c : Course | lone c.grades.Grade & ~enrolled.c
-- div,1
all s : Student, c : Course | lone c.grades.(s->Grade)
-- div,1
all s:Student | all c:Course | lone c.grades.s
-- div,2
all s:Student | all c:Course | lone s.(c.grades)
-- div,12
all c : Course, s : Student | lone c.grades.Grade & s
-- div,1
all c:Course | all s:Student | lone s.(c.grades)
-- div,3
all s: Student, c: Course | lone (s & c.grades.Grade)
-- div,1
all c: Course, s: Student | lone (s & c.grades.Grade)
-- div,5
all s:Student , c:Course | lone c.grades & s->Grade
-- div,2
all c: Course, s: Student | lone (s & c.grades.Person)
-- div,1
all s: Student, c: s.enrolled| lone c.grades.Person
-- div,2
all x : Student, y:Course | lone x->Grade & y.grades
-- div,1
all s : Student, c : Course | lone (s->Grade & c.grades)
-- div,2
all s: Student | all c: Course | lone ~(c.grades).s
-- div,1
all c: Course, s: Student | lone (s & ~(c.grades).Person)
-- div,1
all c: Course, s: Student | lone (s & c.~(grades.Person))
-- div,1
all s: Student, c: s.enrolled | lone (c.grades.Grade & s)
-- div,2
all s: Student, c: s.enrolled | lone (s & c.grades.Grade)
-- div,2
all p: Student | all c: p.enrolled | lone ~(c.grades).p
-- div,1
all c : Course | all s : Person | lone c.grades.Grade & s
-- div,1
all c : Course | all s :Student | lone (s & c.grades.Grade)
-- div,1
all c : Course | all p : Student | lone p&c.grades.Grade
-- div,1
all c : Course | all s : Student| lone c.grades.Grade&s
-- div,4
all c : Course | all s : Student | lone (c.grades)&(s->Grade)
-- div,4
all s : Student, c : Course | lone s.enrolled & Grade.~(c.grades)
-- div,1
all s: Student, c: Course | c in s.enrolled => lone s.(c.grades)
-- div,2
all s: Student, c: Course | c in s.enrolled implies lone c.grades.s
-- div,8
all s:Student, c:Course | s->c in enrolled => lone c.grades . s
-- div,2
all s:Student, c:Course | s->c in enrolled => lone s.(c.grades)
-- div,2
all s: Student, c:Course | lone g: Grade | s->g in c.grades
-- div,10
all p : Person, c : Course | c in p.enrolled implies lone ~(c.grades).p
-- div,1
all x: Student, y:Course | lone z:Grade | y->x->z in grades
-- div,2
all s:Student,c:Course | lone g:Grade | c->s->g in grades
-- div,4
all s: Student, c: Course | c in s.enrolled implies lone ~(c.grades).s
-- div,4
all s:Student, c:Course | s->c in enrolled => lone s.~(c.grades)
-- div,3
all c: Course, s: Student | s in c.grades.Grade implies lone c.grades.s
-- div,2
all c: Course, s: Student | s in c.grades.Grade implies lone s.(c.grades)
-- div,1
all c : Course, g : Grade, s : Student | g in c.grades[s] => #g=1
-- div,1
all s: Student, c: s.enrolled | lone g: Grade | s in c.grades.g
-- div,3
all s: Student, c: s.enrolled | lone g : Grade | g in c.grades.s
-- div,1
all s: Student, c: s.enrolled | lone g : Grade | s->g in c.grades
-- div,3
all s:Student, c:s.enrolled | lone g:Grade | c->s->g in grades
-- div,8
all s : Student, c : Course | c in s.enrolled implies lone s & c.grades.Grade
-- div,1
all c: Course, s: Student | c in s.enrolled implies lone (s & c.grades.Grade)
-- div,1
all s : Student | all c : Course | c in s.enrolled implies lone s.(c.grades)
-- div,1
all s: Student, c: s.enrolled | lone g1 : Grade | c->s->g1 in grades
-- div,1
all c : Course | all s : Student  | lone g : Grade | (s->g) in c.grades
-- div,2
all s : Student | all c : Course | lone g : Grade | s->g in c.grades
-- div,1
all s : Person - Professor, c: Course | c in s.enrolled implies lone c.grades.s
-- div,1
all s : Student | all c : Course | lone g : Grade | c->s->g in grades
-- div,1
all p : Person | all c : Course | all g : Grade | lone (p->g & c.grades)
-- div,1
all s : Student | all c : Course | all g : Grade | lone (g & (c.grades).s)
-- div,1
all s: Student, c: Course | s in c.grades.Grade => lone (s & c.grades.Grade)
-- div,1
all s : Person | all c : Course | all g : Grade | lone (s->g & c.grades)
-- div,1
all s : Student | all c : Course | all g : Grade | lone (g & s.(c.grades))
-- div,3
all s : Student | all c : Course | all g : Grade | lone (s->g & c.grades)
-- div,9
all s: Student, c: Course | lone (s & c.grades.Grade) or no (s & c.grades.Grade)
-- div,1
all c : Course | all p : Student | c in p.enrolled implies lone p&c.grades.Grade
-- div,1
all c: Course | all s: Student | c in s.enrolled implies (lone (s & c.grades.Grade))
-- div,1
all s: Student, c:Course | s->c in enrolled implies (lone g: Grade | g in s.(c.grades))
-- div,1
all g1,g2 : Grade | all s : Student |  (g1+g2) in s.enrolled.grades.Grade implies g1 != g2
-- div,1
all p: Person, c: Course | c in p.enrolled implies (lone g: Grade | c->p->g in grades)
-- div,1
all p: Person, c: Course | lone g: Grade | c->p->g in grades and p in enrolled.c
-- div,1
all g1,g2 : Grade | all s : Student |  (g1+g2) in s.enrolled.grades.Person implies g1 != g2
-- div,1
all s: Student, c: Course | c in s.enrolled implies lone g: Grade | c->s->g in grades
-- div,5
all s: Student, c: Course | s -> c in enrolled implies lone g: Grade | c->s->g in grades
-- div,1
all s:Student | all c:Course | c in s.enrolled implies lone g:Grade | s->g in c.grades
-- div,4
all g1,g2 : Grade | all s : Student | all c : Course | (g1 + g2) in c.grades.s implies g1=g2
-- div,1
all g1,g2 : Grade | all s : Student | all c : Course | g1+g2 in s.(c.grades) implies g1=g2
-- div,3
all p:Student, c:Course, g1,g2:Grade | p in c.grades.g1 and p in c.grades.g2 implies g1 = g2
-- div,1
all s:Student| all c:Course| s->c in enrolled implies (lone g:Grade|c->s->g in grades)
-- div,1
all s : Student | all c : Course | all g : Grade | s in enrolled.c implies lone (s->g & c.grades)
-- div,1
all s1 : Student | all c : Course | (s1->c in enrolled) implies (lone g : Grade | c->s1->g in grades)
-- div,1
all s:Student, g1,g2: Grade, c:Course | c->s->g1 in grades and c->s->g2 in grades implies g1=g2
-- div,1
all p: Person, c: Course, g: Grade | c in p.enrolled implies (lone g: Grade | c->p->g in grades)
-- div,1
all g1,g2 : Grade | all c : Course | g1 in c.grades.Person and g2 in c.grades.Person implies g1 != g2
-- div,1
all s:Student, c: Course, g1,g2: Grade | c->s->g1 in grades and c->s->g2 in grades implies g1=g2
-- div,1
all g1,g2 : Grade | all u : Student | all c : Course | (u->g1 + u->g2) in c.grades implies g1=g2
-- div,2
all c:Course, s:enrolled.c, g1,g2:Grade | g1 in s.(c.grades) and g2 in s.(c.grades) implies g1=g2
-- div,1
all s : Student | all g1,g2 : Grade | all c : Course | (s->g1 + s->g2) in c.grades implies g1=g2
-- div,1
all g1,g2 : Grade | all s : Student | all c : Course | (s->g1 + s->g2) in c.grades implies g1=g2
-- div,4
all p1 : Student | all c1 : Course | c1 in p1.enrolled implies (lone g1 : Grade | c1->p1->g1 in grades)
-- div,1
all p1 : Student | all c1 : Course | (p1->c1 in enrolled) implies (lone g1 : Grade | c1->p1->g1 in grades)
-- div,10
all s1: Student | all c1: Course | (s1->c1 in enrolled) implies (lone g1: Grade | c1->s1->g1 in grades)
-- div,2
all c: Course, g1: Grade, g2: Grade, s: Student | s->g1 in c.grades and s->g2 in c.grades implies g1 = g2
-- div,1
all s : Student, c : Course, g1 : Grade, g2 : Grade | c->s->g1 in grades and c->s->g2 in grades implies g1 = g2
-- div,1
all s: Student | all g1,g2 : Grade | all c : Course | s->g1 in c.grades and s->g2 in c.grades implies g1 = g2
-- div,2
all s : Student | all c : Course | all g1,g2 : Grade | s->g1 in c.grades and s->g2 in c.grades implies g1=g2
-- div,2
all s:Student, c:Course, g1,g2: Grade | g1 in c.grades.s and g2 in c.grades.s and c in s.enrolled implies g1=g2
-- div,1
all s:Student, c:Course, g1,g2: Grade | g1 in s.(c.grades) and g2 in s.(c.grades) and c in s.enrolled implies g1=g2
-- div,1
all s: Student | all c: Course | all g1, g2: Grade | c->s->g1 in grades and c->s->g2 in grades implies g1=g2
-- div,3
all s : Student, c : Course, g1 : Grade | c->s->g1 in grades implies all g2 : Grade | c->s->g2 in grades implies g1 = g2
-- div,1
all s:Student, c:Course, g1,g2: Grade | g1 in c.grades.Person and g2 in c.grades.Person and c in s.enrolled implies g1=g2
-- div,1
all s: Student | all g1, g2: Grade | all course: Course | s->g1 in course.grades and s->g2 in course.grades implies g1=g2
-- div,1
all c: Course | all p: Student | all g1: Grade | all g2: Grade |c->p->g1 in grades and c->p->g2 in grades implies g1=g2
-- div,1
all grade1, grade2: Grade | all person: Student | all course : Course | (person->grade1 + person->grade2) in course.grades implies grade1 = grade2
-- div,2
all c : Course | all g: Grade | g in c.grades.Person implies 
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,1
