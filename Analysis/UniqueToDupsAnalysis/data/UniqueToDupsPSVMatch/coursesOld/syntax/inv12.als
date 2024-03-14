all
-- div,3
lone Course.grade
-- div,1
all s : Student |
-- div,1
all c : Curse | lone c.grades
-- div,1
c : Course | one c.grades.Grade
-- div,1
all s.Student | s.enrolled.grades
-- div,1
all s : Student | all c : Course |
-- div,2
lone (Student & Couse.grades.Grade)
-- div,1
lone (Course.grades.Grade & Students)
-- div,1
all c:Course,g:Garde | lone c.grades.g
-- div,1
/all s : Student | lone grades.Grade.s
-- div,1
/grades in Course -> Student ->  Grade
-- div,1
all s:Student | lone (s.Courses).grades
-- div,1
grade in Course -> Student -> lone Grade
-- div,1
all s: Student | one (c.grades.Grade & s)
-- div,1
all c : Course | lone ((Course.grades).s)
-- div,1
all c : Course | lone (s & c.grades.Grade)
-- div,1
all s : Person, c: Course | lone c.grades.p
-- div,1
all s : Student, c : Course | lone c.grade.s
-- div,1
all p: Person, c: Course | lone c.grades.Name
-- div,1
all s : Student, c : Course | one s(c.grades)
-- div,4
all c : Course , s : Student | lone (c.grades.s
-- div,1
all s:Student | all c:Course | lone p.(c.grades)
-- div,1
all c : Course | c.grades in lone Person -> Grade
-- div,1
all c: Course | lone (Students & (c.grades.Grade))
-- div,1
all s: Student, c: s.enrolled | lone (s & c.grades
-- div,1
all s:Student | all c:Course | lone course.grades.s
-- div,1
all p: Person, c: Course | lone (c.grades.Grades-p)
-- div,1
all s: Student, all c: Course | c.grades lone grades.s
-- div,1
all disj s1,s2:Student | lone s1.projetcs & s2.projects
-- div,1
all s : Student , c : s.enrolled| lone c.grades.grade.s
-- div,1
all s:Student,c:Course,g:Grade | c->s-> one g in grades
-- div,1
all p: Person, c: Course, lone g: Grade | p in c.grades.g
-- div,1
all s : Student | all c : Course | lone (p->s & c.grades)
-- div,1
all s : Student | all c : Course | lone (s.course.grades)
-- div,1
all s: Student, all c: Course | c.grades lone grades.Grade
-- div,1
all s : Student | all c : Course | lone g : Grade | c->s->h
-- div,1
all c : Course, s : Student, one g:Grade | one g in c.grades[s]
-- div,1
all s: Student, c: s.enrolled | lone g : Grade | g1 in c.grades.s
-- div,2
all s: Student, c: Course | c in s.enrolled implies lone c.grade.s
-- div,1
all s : Student, c: Course | p in s.enrolled implies one c.grades.s
-- div,1
all s : Student, c : s.enrolled, lone g : Grade | c->s->g in grades
-- div,2
all s: Students, c: Course | c in s.enrolled implies lone c.grade.s
-- div,1
all s : Student, c: s.enrolled | lone g : Grade | c->s->g in Grades
-- div,1
all s : Student, c : s.enrolled | lone g : Grade | c->p->g in grades
-- div,1
all s: Student, c: s.enrolled | lone g1 : Grade | c1->p1->g1 in grades
-- div,1
all s : Student | all c : Course | all g : Grade | lone (x->g & c.grades)
-- div,1
all c: Course, all s: Student | c in s.enrolled => lone (s & c.grades.Grade)
-- div,1
all c: Course, s: Student | c in s.enrolled implies one (s & g.grades.Grade)
-- div,1
all s: Students, c: Course | c in s.enrolled implies lone g: Grade | c->s->g in grades
-- div,1
all s: Student | all g1, g2: Grade | all course: Course | lone s->grade in course.grades
-- div,1
all s: Student, c: Course |
        s in c.enrolled implies 
        lone g: c.grades[s]
-- div,1
all s : Student | all c:Course | all g,g1:Grade| (s->g1 + s->g2) in c.grades implies g=g1
-- div,1
all s : Student | all c : Course | c in s.enrolled implies lone g : Grade s->g in c.grades
-- div,1
all c: Course, p:Person, g1, g2:Grade | c->p->g in grades and c->p->g in grades => g1 = g2
-- div,1
all s : Student | all c:Course | all g,g1:Grade| (s->g1 + s->g2) in c.grades implies g1=g2
-- div,1
all s : Studdent | one c : Course | all g : Grade | c in s.enrolled implies s->g in c.grades
-- div,1
all s : Studdent | all c : Course | lone g : Grade | c in s.enrolled implies s->g in c.grades
-- div,1
all g1,g2:grade,s:Student,c:Course | g1 in s.enrolled.c.grades implies g1 in s.enrolled.c.grades
-- div,1
all s : Student | all g1,g2 : Grades | all c : Course | (s->g1 + s->g2) in c.grades implies g1=g2
-- div,1
all s : Student, c : s.enrolled | lone g : Grade | c->s->g in grades
-- div,1
all s : Students | all g1,g2 : Grades | all c : Course | (s->g1 + s->g2) in c.grades implies g1=g2
-- div,1
all s1, s2 : Student, c : Course , g: Grade | s1->g in c.grades and s2->g in c.grades implies c1!=c2
-- div,1
all s: Student | all c: Course | all g1, g2: Grade | c->p->g1 in grades and c->p->g2 in grades implies g1=g2
-- div,1
all s1,s2 : Student | all g1,g2 : Grade | all c : Course | s1->_ in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,1
all c: Course | all p: Student | all g1: Grade | all g1: Grade |c->p->g1 in grades and c->p->g2 in grades implies g1=g2
-- div,1
all c: Course | all p: Student | all g1: Grade | all g1: Grade |c->p->g1 in grades and c->p->g2 in grades implies g1=g2
}
-- div,1
all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s.enrolled
-- div,1
all Person : p | all g : Grade | p->g in Course.grades
	all s1,s2 : Person | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,1
all Person: p | all g : Grade | p->g in Course.gradesn
	all s1,s2 : Person | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,1
all Person : p | all g : Grade | p->g in Course.gradesn
	all s1,s2 : Person | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,1
all s:Student, c:Course, p1,p2:Project | p1 in s.projects and p2 in s.projects and c in s.enrolled and p1 in c.projects and p2 in c.projects implies p1=p2
-- div,1
all s:Student, c:Course, p1,p2:Project | p1 in s.projects and p2 in s.projects and c in s.enrolled and p1 in c.projects and p2 in c.projects implies p1=p2
	
	all s:Student, c:Course, g1,g2: Grade | g1 in c.grades.Person and g2 in c.grades.Person and c
-- div,1
