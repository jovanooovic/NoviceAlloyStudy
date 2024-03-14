all p : Person | p
-- div,1
lone Grade in Course.grades
-- div,1
grades Course -> Person -> Grade
-- div,1
all s:Student | s.enrolled.grades
-- div,1
all s:Student, c:Course | c.grades
-- div,1
all s:Student | s.enrolled.grades.s
-- div,1
all s:Student | s.enrolled.grades.~s
-- div,1
all s: Student | lone Course.Grade.s
-- div,1
all s:Student | s.(s.enrolled.grades)
-- div,1
lone (Course.grades in Student->Grade)
-- div,1
all s:Student, c:Course | s.(c.grades)
-- div,1
all c : Course | c.grades.Grade in iden
-- div,1
all s:Student | s.((s.enrolled).grades)
-- div,1
all c:Course,g:Grade | lone c.(~grades)
-- div,1
all c:Course,g:Grade | lone c.~grades.g
-- div,2
all c:Course,g:Grade | lone c.(~grades.g)
-- div,1
all c:Course,g:Grade | lone c.(~grades).g
-- div,1
all c:Course,g:Grade | lone c.(^grades.g)
-- div,1
all c: Course, s: Student | c.grades.Grade
-- div,1
all s : Student , c : Course | c.grades.Grade
-- div,1
all c:Course,p:Person | lone c.grades.Grade.p
-- div,1
all s : Student , c : Course | c.enrolled.Grade
-- div,1
all c : Course | lone grades.Grade & enrolled.c
-- div,1
all s : Student , c : Course | c.grades.Grade.s
-- div,1
all s : Student, c: s.enrolled | lone s.c.grades
-- div,1
all s : Student , c : Course | c.enrolled.Grade.s
-- div,1
all s: Student, c: Course | lone c.grades.Grade.s
-- div,1
all s:Student | all c:Course | lone (c.grades).~s
-- div,1
all p: Person, c: Course | lone (c.grades.Grade).p
-- div,1
all p: Person, c: Course | lone (c.grades.Grade.p)
-- div,1
all s : Student , c : Grade | lone c.grades.Grade.s
-- div,1
all s: Student, c: s.enrolled | lone (s & c.grades)
-- div,1
all s: Student, c: Course | lone (c.grades.Grade).s
-- div,1
all s: Student, c: s.enrolled | lone (c.grades & s)
-- div,1
all s : Student , c : Course | lone c.grades.s.Grade
-- div,1
all s:Student , c:Course | lone c->grades & s->Grade
-- div,1
all s : Student , c : Course | lone c.grades.Grade.s
-- div,4
all s : Student , c : Course | lone c.grades.Person.s
-- div,1
all s: Student, c: s.enrolled, g: one Grade | g in c.g
-- div,1
all s : Student , c : s.enrolled| lone c.grades.Grade.s
-- div,1
all c : Course | c.grades.Grade->Student in Student.iden
-- div,1
all s : Student , c : s.enrolled | lone c.grades.Grade.s
-- div,1
all s : Student | all c : Course | lone g : Grade | c->s->g
-- div,2
all s : Student | all c : Course | #(s in c.grades.Grade)=1
-- div,2
all s : Student, c : s.enrolled | lone (s in c.grades.Grade)
-- div,1
all s:Student, c:Course | s->c in enrolled => lone s.c.grades
-- div,1
all c : Course, g : Grade, s : Student | one g in c.grades[s]
-- div,1
all s: Student, c: s.enrolled | lone (c.grades.Grade in Grade)
-- div,1
all s: Student, c: s.enrolled | lone (Grade in c.grades.Grade)
-- div,1
all c : Course, s : Student| one g:Grade | one g in c.grades[s]
-- div,1
all s : Student, c: Course | c in s.enrolled implies c.grades.s
-- div,1
all c: Course, s: Student | s.enrolled & c.grades.Grade.~grades
-- div,1
all c : Course, s : Student | one g:Grade | one g in c.grades[s]
-- div,1
all s : Student, c : Course | c in s.enrolled and  ~(c.grades).s
-- div,1
all s : Student, c : Course | lone s.enrolled & grades.(s->Grade)
-- div,1
all c: Course, s: Student | s.enrolled & c.(grades.Grade.~grades)
-- div,1
all s : Student, c : Course | lone s.enrolled & grades.(s-> Grade)
-- div,1
all c: Course, s: Student | s.enrolled & c.(grades.Grade.~enrolled)
-- div,1
all s : Student | all c : Course | all g : Grade | (s->g & c.grades)
-- div,1
all s: Student, c: Course | c in s.enrolled => one s in c.grades.Grade
-- div,1
all c: Course, s: Student | s in c.grades.Grade implies lone s.c.grades
-- div,1
all s : Student | all c : Course | all g : Grade | lone (g & (s.c.grades))
-- div,1
all s: Student, c: Course | s in c.grades.Grade => lone (s in c.grades.Grade)
-- div,1
all g1,g2 : Grade | all c : Course | c.grades.g1 and c.grades.g2 implies g1 != g2
-- div,1
all p: Person, c: Course, g: Grade | c in p.enrolled implies lone p->g in c.grades
-- div,1
all s1,s2 : Person | all c : Course | c.grades.s1 and c.grades.s2 implies s1 != s2
-- div,1
all c : Course | all p : Student | c in p.enrolled implies lone p in c.grades.Grade
-- div,1
all s1,s2 : Student | all c : Course | c.grades.s1 and c.grades.s2 implies s1 != s2
-- div,2
all c : Course | all s : Student | c in s.enrolled implies lone(s in c.grades.Grade)
-- div,1
all c : Course | lone g : Grade | all s : Student | c in s.enrolled and g in c.grades
-- div,1
all s : Student, c: Course, g: Grade | c in s.enrolled implies lone c->s->g in grades
-- div,1
all p: Person, c: Course, g: Grade | p->g in c.grades implies (c.grades - p->g = none)
-- div,1
all s : Student | all g1,g2 : Grade | all c : s.enrolled | c.g1 and c.g2 implies g1=g2
-- div,1
all s: Student | all grade: Grade | all course: Course | lone s->grade in course.grades
-- div,3
all s : Student, c: Course, g: Grade | c in s.enrolled implies lone (c->s->g in grades)
-- div,1
all g1,g2 : Grade | all c : Course | g1 in c.grades and g2 in c.grades implies g1 != g2
-- div,1
all p: Person, c: Course, g: Grade | p->g in c.grades implies (c.grades - (p->g) = none)
-- div,1
all g1,g2 : Grade | all s : Student | all c : Course | g1+g2 in s.c.grades implies g1=g2
-- div,1
all s: Student, c: s.enrolled, g: lone Grade | g in c.grades.Person
-- div,1
all g1,g2:Grade,s:Student,c:Course | g1 in s.enrolled.c.grades implies g1 in s.enrolled.c.grades
-- div,1
all s : Student | all c : Course | all g1,g2 : Grade | c->s->g1 in grades and c->s->g2 implies g1 = g2
-- div,1
all s : Student | lone grades.Grade.s & s.enrolled
  
  	all s : Student, c : s.enrolled | lone c.grades.Grade.s
-- div,1
all s1,s2 : Person | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades.Grade implies s1 != s2
-- div,1
all s : Student | all g1, g2 : Grade | all c : Course | s->g1 in c.grades.Grade and s->g2 in c.grades.Grade implies g1 = g2
-- div,1
all g : Grade | g in Course.grades.~Person
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1!=s2
-- div,1
all g : Grade | g in Course.^(grades.~Person)
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1!=s2
-- div,1
all c : Course | all g: Grade | g in c.grades
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,1
all c : Course | c.grades.Person implies c.grades.Grade
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,1
all s1: Student | all g1, g2: Grade | all c1: Course |
  	((s1->g1 in grades) and (s1->g2 in grades) and (c1->g1 in grades) and (c1->g2 in grades)) imples g1=g2
-- div,1
all s1: Student | all g1, g2: Grade | all c1: Course |
  	((s1->g1 in grades) and (s1->g2 in grades) and (c1->g1 in grades) and (c1->g2 in grades)) implies g1=g2
-- div,1
all p: Student | all g : Grade | p->g implies p->g in Course.grades
	all s1,s2 : Student | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,1
all c : Course | all g: Grade | g in c.grades.~Person 
	all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled and c in s2.enrolled
-- div,1
all c : Course | all g: Grade | g in c.grades.*Person 
	all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled and c in s2.enrolled
-- div,1
all c : Course | all g: Grade | g in c.grades.^Person 
	all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled and c in s2.enrolled
-- div,1
all c : Course | all s: Student| all g: Grade | g in c.grades implies c in s.enrolled
	all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled and c in s2.enrolled
-- div,1
