-- equiv pair start,1
no Student.teaches
-- div,1
-- equiv pair end
-- equiv pair start,17
no Professor.enrolled
-- div,17
-- equiv pair end
-- equiv pair start,1
some Student.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
Course.enrolled = Student
-- div,1
enrolled.Person=Student
-- div,1
Student in Course.enrolled
-- div,1
all p : Professor, s : Student, c : Course | c not in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
Student in enrolled.Course
-- div,1
all s:Student | some s.enrolled
-- div,1
all s : Student | s.enrolled != none
-- div,1
-- equiv pair end
-- equiv pair start,4
teaches.Course in Professor
-- div,2
all c:Course, s:Student | c->s in enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Person| no p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
(Person-Professor) in Course
-- div,1
-- equiv pair end
-- equiv pair start,1
teaches in Person -> Student
-- div,1
-- equiv pair end
-- equiv pair start,7
Person-Student not in Course
-- div,1
all p:Person | p->Course in enrolled implies p in Student
-- div,1
all p: Person | some p.enrolled implies p in (Person-Professor)
-- div,1
all a : Person, b : Course |a in Student implies a in b.~(grades.Person)
-- div,4
-- equiv pair end
-- equiv pair start,3
Person not in enrolled.Course
-- div,1
all p: Person | p.enrolled & p=Student
-- div,1
all p: Person, c: Course | p in c.grades.Grade implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,3
no (Person-Professor).enrolled
-- div,3
-- equiv pair end
-- equiv pair start,7
no Professor & enrolled.Course
-- div,6
all p : Professor | no p.enrolled & Course
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Student| lone s.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
Course.grades.Grade in Student
-- div,1
-- equiv pair end
-- equiv pair start,21
all p:Professor | no p.enrolled
-- div,18
all p: Person | p in Professor implies no p.enrolled
-- div,2
all c: Course | all p: Person | p in enrolled.c implies p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
Professor not in enrolled.Course
-- div,2
-- equiv pair end
-- equiv pair start,3
no (Person & Professor).enrolled
-- div,1
all p: Professor | p not in enrolled.Course
-- div,2
-- equiv pair end
-- equiv pair start,1
all i : Student | some enrolled.i
-- div,1
-- equiv pair end
-- equiv pair start,3
all x : Professor | no x.enrolled
-- div,3
-- equiv pair end
-- equiv pair start,1
all s:Student | s not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Professor | no ~enrolled.p
-- div,1
all p : Professor | no p.enrolled & Course
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | p.enrolled = 0
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | one p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Professor | lone p.enrolled
-- div,1
all e:Student, p:Person| e in enrolled.p
-- div,1
all e:Student, c:Course| e in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | some p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | s.enrolled = none
-- div,1
-- equiv pair end
-- equiv pair start,1
Professor = Person - enrolled.Course
-- div,1
-- equiv pair end
-- equiv pair start,2
enrolled.Course = Person - Professor
-- div,2
-- equiv pair end
-- equiv pair start,2
some (Course.grades.Grade & Student)
-- div,1
all p : Professor | all s : Student | all c : Course | no (p.enrolled & c) and c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Course | Student in enrolled.c
-- div,3
-- equiv pair end
-- equiv pair start,1
Course.grades.Grade - Student = none
-- div,1
-- equiv pair end
-- equiv pair start,2
all x:Course | Student->x in enrolled
-- div,1
all s : Student | all c :  Course | s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student | s in enrolled.Course
-- div,1
-- equiv pair end
-- equiv pair start,3
all e: Student | e in e.grades.Course
-- div,2
all s:Student | one c:Course | c -> s in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
no (Person.teaches & Person.enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course | c.enrolled = Student
-- div,1
-- equiv pair end
-- equiv pair start,8
all p : Professor | p.enrolled = none
-- div,8
-- equiv pair end
-- equiv pair start,1
all p : Person | Student in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | Student.enrolled in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person&Professor | no p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all e:Student,c:Course| e.enrolled in c
-- div,2
-- equiv pair end
-- equiv pair start,1
no p : Professor | p.enrolled in Course
-- div,1
-- equiv pair end
-- equiv pair start,3
(Person-Student) not in enrolled.Course
-- div,2
no Professor.enrolled
  	no Student.teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all e:Student, p:Person| e in p.enrolled
-- div,1
all p:Person | p in Person.enrolled iff p in Student
-- div,1
all s:Student | one c:Course | c -> s in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all e:Student, c:Course| c in e.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Student&Professor | no p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all e:Student, c:Course| c in enrolled.e
-- div,1
-- equiv pair end
-- equiv pair start,2
all profs: Student | #profs.enrolled = 0
-- div,1
all p : Professor | all c : Course | p.enrolled = c - p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all e:Student, c:Course| e in c.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,5
all e:Student, c:Course| e->c in enrolled
-- div,1
all p : Person, c : Course | p in Student implies p->c in enrolled
-- div,3
all p : Person, c : Course | (c in p.teaches implies c not in p.enrolled) iff p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | c.grades.Grade = Student
-- div,1
-- equiv pair end
-- equiv pair start,4
all p : Person| no p.teaches & p.enrolled
-- div,3
all p : Person, c : Course | c in p.teaches implies c not in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all profs: Professor | #profs.enrolled = 0
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course | Student in c.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Course | Professor not in enrolled.c
-- div,2
-- equiv pair end
-- equiv pair start,5
all c : Course | c.grades.Grade in Student
-- div,3
all p:Person.enrolled | all s:Student.enrolled | p in s
-- div,2
-- equiv pair end
-- equiv pair start,1
all c:Course, s:Student | s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course | enrolled.c not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person| p.teaches not in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Professor | p.enrolled not in Course
-- div,2
-- equiv pair end
-- equiv pair start,3
no t:Professor, c:Course | t->c in enrolled
-- div,1
all p: Professor, c:Course | no p & enrolled.c
-- div,1
all p : Professor | all s : Student | all c : Course | c in s.enrolled iff p = s
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | no Course.~enrolled & p
-- div,1
-- equiv pair end
-- equiv pair start,7
all c : Course | no (c & Professor.enrolled)
-- div,5
all p: Professor, c: Course | p->c not in enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Professor | no p.enrolled & p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Student - Professor | some enrolled.i
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | Professor not in c.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all s:Student | Person.enrolled in s.enrolled
-- div,1
all a : Person, b : Course |a in Student implies a in b.~(grades.Grade)
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course, p : Person |  c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student, c : Course | c in s.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,8
all s : Student, c : Course | lone enrolled.c
-- div,1
all s:Student, c:Course | s->c in enrolled
-- div,4
one p:Person | p.enrolled in Course implies p in Student
-- div,1
all p : Person | some c : Course | p->c in enrolled => p in Student
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Student, c : Course | lone p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,5
all p : Professor | p not in Course.~enrolled
-- div,2
all p:Professor  | all c:Course | c not in p.enrolled
-- div,3
-- equiv pair end
-- equiv pair start,2
no Professor.enrolled
  	some Student.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,2
all c : Course, p : Student |  c in p.enrolled
-- div,1
all s : Student | all c :  Course | s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Course | Professor not in c.grades.Grade
-- div,2
-- equiv pair end
-- equiv pair start,8
all p:Professor, c:Course | c not in p.enrolled
-- div,1
all t:Professor, c:Course | t->c not in enrolled
-- div,1
all s:Student | one c:Course| c in s.enrolled
-- div,3
all p:Professor  | all c:Course | c not in p.enrolled
-- div,3
-- equiv pair end
-- equiv pair start,3
all p: Professor, c:Course | p not in enrolled.c
-- div,2
all p: Professor, c:Course | no p & enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,3
all c: Course | c.projects in Person - Professor
-- div,1
all s:Student | one c:Course | s -> c in enrolled
-- div,1
all p:Person, c:Course | p in Professor => p->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | c.grades.Grade - Student = none
-- div,2
-- equiv pair end
-- equiv pair start,1
all x:Professor, y:Course | x->y not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course | (Person-Professor)->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, p:Person | s.enrolled = p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Person | no (Professor & enrolled.Course)
-- div,1
-- equiv pair end
-- equiv pair start,1
some p:Person | some(p.enrolled) iff p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all c : Course | c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student | all c : Course | s.enrolled in c
-- div,1
all p:Person, c:Course | p in Professor => p->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, p:Person | p.enrolled in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course, p : Professor | no (c & p.enrolled)
-- div,1
all c : Course | Student in c.grades.Grade and Professor not in c.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Person | not p.enrolled in Professor.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,2
all i : univ | i in Student implies some enrolled.i
-- div,1
all a : Course , b : Student, c : Professor | a in b.enrolled implies b != c
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Professor | not p.enrolled in Person.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: (Person-Professor), c:Course | c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,5
all x : Person | x in Professor implies no x.enrolled
-- div,2
all t:Professor, c:Course | t->c not in enrolled
-- div,1
all p:Person.enrolled | not p in Professor.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,6
all p:Person | not (Professor.enrolled in p.enrolled)
-- div,1
all s:Student | one c:Course | c -> s in enrolled
-- div,1
all i : univ | i in Student implies some x : univ | i->x in enrolled
-- div,3
all p: Person, c: Course | p in c.grades.Grade implies p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
some p:Person | some(p.enrolled) implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,4
all p:Person.enrolled | all s:Student.enrolled | s = p
-- div,2
all p:Person.enrolled | all s:Student.enrolled | p in s
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Person | all s:Student | p.enrolled in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person.enrolled | all s:Student.enrolled | s in p
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | p in Student or p->Course not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
all p: Professor | p not in Person.enrolled.grades.Grade
-- div,2
all p: Person | some enrolled implies p in (Person-Professor)
-- div,1
all s : Student | all c : Course | no (s.enrolled & s.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person |p in enrolled.Course iff p not in Student
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Course| all s:(Person-Professor) | s->c in enrolled
-- div,1
all s:Person-Professor | all c:Course | s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Course | c.grades.Grade-Professor = c.grades.Grade
-- div,2
-- equiv pair end
-- equiv pair start,3
all p : Person | p in Professor implies p.enrolled = none
-- div,1
all s : Student | all p : Professor | all c : Course | no (s.enrolled & s.teaches)
-- div,1
all s: Student, p:Professor, c: Course, pe: Person | s -> c in enrolled and p -> c not in enrolled and pe -> c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
one p1 : Person | all c : Course | c->p1 in (grades.Grade)
-- div,1
all p : Professor, s : Student, c : Course | c not in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
all p : Professor, s : Student, c : Course | no p.enrolled
-- div,1
all p : Person, c : Course | c in p.teaches implies c not in p.enrolled
-- div,1
all p: Person, c: Course | p in c.grades.Grade implies p in Student
-- div,1
all p : Person - Student | some c : Course | not p -> c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | Course in p.enrolled implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,2
one p1 : Person | all c : Course | 
c in (grades.Grade.p1)
-- div,1
all p : Professor , p2 : Person| no p.enrolled + p2.enrolled and no p.teaches & p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor , p2 : Person| no p.enrolled + p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | one c: Course | p in Student => p.enrolled=c
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Student | p.enrolled in Course implies p != Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person, c:Course | p.enrolled in c implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student.enrolled | all pr:Professor.enrolled | s-pr = s
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Person |p in enrolled.Course  implies p not in Student
-- div,1
all p:Person.enrolled | all s:Student.enrolled | p in s
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Person, c:Course | p not in Student or p->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | one c: Course | c in p.enrolled => p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person, c:Course | p not in Student and p->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | one c: Course | p.enrolled in c => p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | one c: Course | p in Student => p.enrolled in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | p.enrolled in Course implies p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person, s : Student | p.enrolled in Course implies p = s
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Person | lone c: Course | c in p.enrolled => p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | all c : Course | c - p.teaches in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | lone c: Course | p.enrolled in c => p in Student
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Student | p.enrolled in Course implies p not in Professor
-- div,1
all p:Professor  | some c:Course | c not in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | all s : Student | all c : Course | c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p:Person | some c:Course | c in p.enrolled implies p in Student
-- div,3
-- equiv pair end
-- equiv pair start,1
all p:Person | p.enrolled in Course implies p in (Person-Professor)
-- div,1
-- equiv pair end
-- equiv pair start,3
all i : univ | i in Student and i!=Professor implies some enrolled.i
-- div,3
-- equiv pair end
-- equiv pair start,1
all p : Professor | all s : Student | all c : Course | no p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Person | all c: Course | p.enrolled in c implies p in Student
-- div,2
-- equiv pair end
-- equiv pair start,3
all c : Course | all p : Person | p in c.grades.Grade => p in Student
-- div,3
-- equiv pair end
-- equiv pair start,1
all p: Person, c: Course | c in p.enrolled implies p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : univ | i in Student implies some x : Course | i->x in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | s -> c in enrolled implies s not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | all p : Person | p in c.grades.Grade implies p=Student
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Person | all c: Course | c in p.enrolled implies p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | some c : Course | p in Student implies p -> c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | all s : Student | all c : Course | no (p.enrolled & c)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Course | all p: Person | c in p.enrolled implies p in Person-Student
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Professor | no p.enrolled
  	all p: Professor&Student | no p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1 : Person | all c1 : Course | p1->c1 in teaches implies p1 in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
no Professor.enrolled
  	all p: Professor | p in Student implies no p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all course: Course | all person: Person - Professor | course in person.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all p : Professor | all c : Course | c in s.enrolled iff s != p
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | s-pr = s
-- div,1
-- equiv pair end
-- equiv pair start,4
all s: Student, p:Professor, c: Course | s -> c in enrolled and p -> c not in enrolled
-- div,3
all p : Professor | all s : Student | all c : Course | p.enrolled = none and c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | lone c: Course | c in p.enrolled => (p in Student && p not in Professor)
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : univ | i in Student and i != Professor  implies some x : univ | i->x in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
no Professor.enrolled
  	some Student.enrolled
  	all s:Student, p:Professor | s not in p
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | some c:Course | c in p.enrolled implies p in Student and p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
one c : Course | all s : Student , p : Professor | c in s.enrolled and c not in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor , p2 : Person| no p.enrolled + p2.enrolled and no p.teaches & p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Professor, ps: Professor&Student, c: Course | p->c not in enrolled and ps->c not in enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all x: Course, y : Person-Professor | y->x not in enrolled
  no (Person - Professor) & enrolled.Course
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all p : Professor | all c : Course | c in s.enrolled iff no (s.enrolled & s.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : univ | i in Person and i = Student and i != Professor  implies some x : univ | i->x in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | all s : Student | all p : Person-Student | s in c.grades.Grade and p not in c.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
no Professor.enrolled
  	no Student.teaches
  	all p:Professor, s:Student | p not in Student and s not in Professor
-- div,1
-- equiv pair end
