Course.grades
-- div,5
Professor->Grade
-- div,1
no Professor in Grades
-- div,1
no grades.Grade-Student
-- div,1
Course.grades.Grade
-- div,1
grades.Grade in Student
-- div,1
all c:Course | c.grades
-- div,1
Course.grades in Student
-- div,2
grades in Student->Grade
-- div,1
grades.Course in Student
-- div,1
Person.grades in Student
-- div,2
none grades.Grade-Student
-- div,1
grades in Student -> Grade
-- div,1
grades.Grade-Student = none
-- div,1
no Professor & Course.grades
-- div,1
no Professor->Grade & grades
-- div,1
Professor not in grades.Grade
-- div,1
Professor not in Person.grades
-- div,1
all c:Course | c.grades.Person
-- div,1
Professor->Grade not in grades
-- div,1
no grades & (Professor->Grade)
-- div,1
no Course.(Person-Student).grades
-- div,2
no (Person-Student).Course.grades
-- div,2
Grade.(~grades).Course in Student
-- div,1
all g: Grade | grades.g in Student
-- div,1
all c:Course, p:Person | c.grades.p
-- div,1
all p : Course.~grades | p in Grade
-- div,1
no Course.(Person - Student).grades
-- div,1
set Course.grades & Student->grades
-- div,1
no (Person-Student) & Course.grades
-- div,1
all p : grades.Grade | p in Student
-- div,1
no (Course.grades & Person-Student)
-- div,1
Grade.~(grades).enrolled in Student
-- div,1
all c : Course | c.grades in Student
-- div,3
all p : Grade.~grades | p in Student
-- div,1
(Person-Student).(Course.grades)
-- div,1
all c:Course | grades.Person&Student
-- div,1
all g:Grade | g in enrolled.grades.g
-- div,2
Course.grades.(Person-Student)
-- div,1
all c : Course | Student in c.^grades
-- div,1
all c:Course | grades.Grade.c&Student
-- div,2
all c:Course | c.grades.Grade&Student
-- div,2
all c:Course | grades.Person.c&Student
-- div,1
all c : Course | (c.grades) in Student
-- div,1
all c:Course, p:Person | p in c.grades
-- div,1
all g:Grade | enrolled.grades.g&Student
-- div,2
all p : Course.~grades.Grade | p in Grade
-- div,1
all x : Professor | x->Grade not in grades
-- div,1
all x : Professor | no grades & (x->Grade)
-- div,1
all c : Course | Grade.c.grades in Student
-- div,1
all p : Professor | none ~(Course.grades).p
-- div,1
all c : Course | Student in c.grades.~Grade
-- div,1
no Course.grades & (Person-Student)->grades
-- div,2
all u : Person-Student| none u.grades.Grade
-- div,1
all c : Course | c.grades.~Grade in Student
-- div,1
all c : Course | Course.c.grades in Student
-- div,1
all c : Course | Student in c.^grades.Person
-- div,1
all c : Course | Student in c.grades.~Person
-- div,1
all p:Person | p.grades implies p in Student
-- div,1
all p : Person - Student, c : Course | no c.p
-- div,1
all g:Grade | enrolled.grades.Person.g&Student
-- div,1
all x:Person | x in grades implies x in Student
-- div,1
all x: Person-Student | x-> Grade not in grades
-- div,1
all c : Course | all p : c.grades | p in Student
-- div,1
all c : Course | Grade.Course.c.grades in Student
-- div,1
all x:Person-Student, y:Grade | x->y not in grades
-- div,1
all p: Person, g: Grade | p->g implies p in Student
-- div,1
no Professor & (all p : Person | p in Course.grades)
-- div,1
all p : Professor | all g : Grade | p*g not in grades
-- div,1
all p : Professor | all g : Grade | p.g not in grades
-- div,1
all p: Student, g: Grade | Course.grades implies p->g
-- div,1
all c : Course | Grade.(Course.(c.grades)) in Student
-- div,1
all p: Person | Course.grades[p] implies p in Student
-- div,1
all c : Course | all p : grades->Person | p in Student
-- div,1
all p : Professor | all g : Grade | p->g not in grades
-- div,1
all p: Person | p in grades.Grade implies p in Student
-- div,1
all p:Person | p in Course.grades implies p in Student
-- div,1
all p: Person | p in Grade.grades implies p in Student
-- div,2
all p: Person | p in Grade.Person implies p in Student
-- div,1
all c : Course | Student.(Course.(c.grades)) in Student
-- div,1
all p:Person | some p.Course.grades implies p in Student
-- div,1
all p : Person - Student, c : Course | p not in c.grades
-- div,1
all c : Course | all p : c.grades->Person | p in Student
-- div,1
all p : Person | p.enrolled.grades => p not in Professor
-- div,1
all p : Person - Student, c : Course | c.grades not in p
-- div,1
all c:Course, p:Person, g:Grade | c->p->g => p in Student
-- div,2
all p : Person - Student , c : Course | p not in c.grades
-- div,1
all c : Course, p : Person | p in c.grades => p in Student
-- div,1
all p:Person,c:Course | c->p in grades implies p in Student
-- div,1
all u : univ | u not in Student implies grades.Grade = none
-- div,1
all p:Person, g:Grade | p->g in grades implies p in Student
-- div,1
all p:Person, c:Course | p in grades.c implies (p in Student)
-- div,1
all p:Person, c:Course | p in c.grades implies (p in Student)
-- div,1
all p:Person, c:Course | c in grades.p implies (p in Student)
-- div,1
all p: Person, g: Grade | p->g in grades implies p in Student
-- div,1
all p:Person , c:Course | p->c in grades implies p in Student
-- div,1
all c: Course, p: Person | p in  c.grades implies p in Student
-- div,1
all p : Person, c : Course | no ( p & Student ) implies no c.p
-- div,1
all p: Person, c: Course | p->c in grades implies p in Student
-- div,1
all u : Person-Student| u not in teaches implies u not in Grade
-- div,1
all p:Person | p in Course.grades & Person implies p in Student
-- div,1
all p:Person | all c:Course | p in c.grades implies p in Student
-- div,2
all p : Person, c : Course | c->p in grades implies p in Student
-- div,1
all p: Person, c: Course, g: Grade | c->p->g implies p in Student
-- div,1
all p : Person, c : Course | no ( p & Student ) implies p not c.p
-- div,1
all c:Course, p:Person | p in c.grades implies p not in Professor
-- div,3
all c:Course, p:Person | c -> p grades implies p not in Professor
-- div,1
all c : Course | all p : Person | p in grades implies p in Student
-- div,1
all p: Person | some g: Grade | p->g in grades implies p in Student
-- div,1
all c : Course, p : Person | some p.c.grades <=> p not in Professor
-- div,1
all c : Course | all p : Person | p in c.grades implies p in Student
-- div,3
all c:Course, p:Person | c -> p in grades implies p not in Professor
-- div,1
all p : Person | all c : Course | p in c.grades implies p in Student
-- div,1
all p : Person | all c : Course | p->c in grades implies p in Student
-- div,1
all p : Person, c : Course | c->p.Grade in grades implies p in Student
-- div,1
all p : Person, c : Course | no ( p & Student ) implies no c.p->grades
-- div,1
all p : Person, c : Course | c->Grade.p in grades implies p in Student
-- div,1
all p : Person, c : Course | no ( p & Student ) implies not c.p->grades
-- div,1
all p: Person, c: Course, g: Grade | p in c.grades implies p in Student
-- div,2
all p:Person | p in Professor implies p not in  Person <: Course.grades
-- div,1
all p : Person, c : Course | no (p & Student) implies p not in c.grades
-- div,1
all p: Person, g: Grade, c: Course | p->g in grades implies p in Student
-- div,1
all p1 : Person | all c : Course | c->p1 in grades implies p1 in Student
-- div,1
all p1 : Person | all c : Course | p1->c in grades implies p1 in Student
-- div,1
all c:Course, p:Person, g:Grade | c -> p in g implies p not in Professor
-- div,1
all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
-- div,2
all p1:Person | all c1: Course |
  	c1->p1 in grades implies p1 in Student
-- div,1
all c : Course | all p : Person | p in c.grades.~Grade implies p in Student
-- div,1
all p : Person, c : Course | no ( p & Student ) implies p not in c.p->grades
-- div,1
all c : Course | all p : Person | p in c.grades.~Person implies p in Student
-- div,1
all p : Person | all g : Grade | g in p.enrolled.grades implies p in Student
-- div,2
all p : Person | all g : Grade | g in p.enrolled->grades implies p in Student
-- div,1
all p : Person | all c : Course | c in p.enrolled.grades implies p in Student
-- div,1
all p : Person, c : Course, g : Grade | (g in p.c.grades) implies p in Student
-- div,2
all p : Person, c : Course, g : Grade | (g in c.p.grades) implies p in Student
-- div,2
all g: Grade | all c: Course| g in c.grades implies c.grades.Person in Student
-- div,2
all p1 : Person | all c1 : Course |
  	(c1->p1 in grades) implies (p1 in Student)
-- div,2
all g: Grade | all c: Course| g in c.grades implies c.grades -> Person in Student
-- div,1
all c:Course, p:Person,g:Grade | g in p.enrolled.grades implies p not in Professor
-- div,2
all c:Course, p:Person,g:Grade | g in p.(enrolled.grades) implies p not in Professor
-- div,1
all c:Course, p:Person,g:Grade | g in p.enrolled -> grades implies p not in Professor
-- div,1
all p : Person, c : Course, g : Grade | (g in p.enrolled.grades) implies p in Student
-- div,2
all s:Student, c:Course | s->c not in enrolled implies all g:Grade | s->g not in grades
-- div,1
all p : Person | all c : Course | all g : grades |p->c->g in grades implies p in Student
-- div,1
all g: Grade | all c: Course| g in c.grades implies c.grades.(Person -> Grade) in Student
-- div,1
all p1 : Person | all c1 : Course | all g1 : Grade|
  	(c1->p1->g1 in grades) implies (p1 in Student)
  	all c:Course, p:Person | c.grades.p
-- div,1
