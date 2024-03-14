enrolled.Course
-- div,1
enrolled & Student
-- div,1
enrolled in Course
-- div,2
Student.enrolled
-- div,1
enrolled in Student
-- div,3
not Course.enrolled
-- div,1
no enrolled-Student
-- div,1
enrolled  in Student
-- div,1
none enrolled-Student
-- div,1
not enrolled.Professor
-- div,1
not Professor.enrolled
-- div,1
none Professor.enrolled
-- div,1
no enrolled & Professor
-- div,1
grades.Grade in Student
-- div,1
no Professor & enrolled
-- div,1
no Professor in enrolled
-- div,2
no Person-Professor&iden
-- div,1
not enrolled.grades.Grade
-- div,2
no (Person-Professor)&iden
-- div,1
all p: Person | p.enrolled
-- div,1
no Person-Student in Course
-- div,1
Course->enrolled in Student
-- div,1
all s: Student | s.enrolled
-- div,1
Person->enrolled in Student
-- div,1
no Professor.enrolled.Course
-- div,1
no Person-Professor in Course
-- div,1
no enrolled-Professor.teaches
-- div,1
(Person & enrolled) = Student
-- div,1
enrolled.Course & Student
-- div,1
no p : Professor | p.enrolled
-- div,1
no ((Person-Student)-enrolled)
-- div,1
all p : Professor | p.enrolled
-- div,2
no Professor in erolled.Person
-- div,1
no Professor.(enrolled.Course)
-- div,1
all p: Professor | no p.Course
-- div,1
all e: Student | e in e.Course
-- div,2
none (Person-Student).enrolled
-- div,1
no ((Person.Student).enrolled)
-- div,1
no Professor in Course.enrolled
-- div,1
not Professor.enrolled.projects
-- div,1
(Person-Professor).enrolled
-- div,1
no enrolled.Person in Professor
-- div,1
no Professor.enrolled in Person
-- div,1
no enrolled & Professor.teaches
-- div,1
all p : Professor | no p.Course
-- div,2
no Professor in enrolled.Course
-- div,2
all s : Student | s in enrolled
-- div,1
Person-Professor.enrolled
-- div,1
not enrolled & Professor.teaches
-- div,1
enrolled Person some ->  Student
-- div,1
no enrolled & Professor.enrolled
-- div,1
no (Person - Student) & enrolled
-- div,1
no ((Person.Student) & enrolled)
-- div,1
all p: Professor | not p.enrolled
-- div,1
all p: Professor | no p in Course
-- div,2
no (Person - Student) in enrolled
-- div,1
all p: Person | p.enrolled.Course
-- div,1
Person.enrolled.Course in Student
-- div,1
all p : Professor | none p.Course
-- div,1
Person->Course . Course in Student
-- div,1
all c: Course | c.grades-Professor
-- div,2
all e:Student,c:Course| c.enrolled
-- div,1
all p : Professor | not p.enrolled
-- div,1
all p: Person | p.Student.enrolled
-- div,1
all p : Professor | p.enrolled < 1
-- div,1
all p : Professor | none p.enrolled
-- div,4
no Person.Student & enrolled.Course
-- div,1
no Person.enrolled.grades - Student
-- div,1
all p : Professor | Course.~enrolled
-- div,1
(Person.Student) and enrolled.Course
-- div,1
no Person.enrolled.~grades - Student
-- div,1
all s : Student | s.enrolled is none
-- div,1
not (some p: Professor | p.enrolled)
-- div,1
all p: Professor | p not in enrolled
-- div,3
all c : Course | enrolled in Student
-- div,1
all u: Person-Professor | u.enrolled
-- div,1
all p: Person | Student.(p.enrolled)
-- div,1
no (Person.Student) & enrolled.Course
-- div,7
all e: Student | e in e.Course.grades
-- div,1
all p: Person | (p.enrolled).~Student
-- div,1
all s:Student| lone s.enrolled.Course
-- div,1
all p : Professor| not ( p.enrolled )
-- div,1
all p : Professor | p not in enrolled
-- div,2
no Person.Student and enrolled.Course
-- div,3
all p : Professor | p.enrolled & none
-- div,1
no (Person.Student & enrolled.Course)
-- div,1
all e: Student | e in e.Person.grades
-- div,1
all s:Student | s.enrolled in s.Course
-- div,1
all p:Professor , c:Course | grades->p
-- div,1
all p : Professor| none ( p.enrolled )
-- div,1
all p : Professor | p.enrolled is none
-- div,1
no Person-Professor in enrolled.Course
-- div,1
all u: (Person-Professor) | u.enrolled
-- div,1
all p: Person | enrolled.~p in Student
-- div,1
no Person-Professor in Person.enrolled
-- div,1
all p : Person | p.enrolled - Professor
-- div,1
all p: Professor | Course no p.enrolled
-- div,1
no (Person.Student) and enrolled.Course
-- div,1
no ((Person.Student) & enrolled.Course)
-- div,5
(Person-Student) & enrolled.Course
-- div,1
all c:Course | Professor not in enrolled
-- div,1
all c : Course | c.~enrolled - Professor
-- div,1
no Professor.enrolled in Person.enrolled
-- div,1
all p : Professor |  Course.~enrolled & p
-- div,1
all p : Person - Student | not p.enrolled
-- div,1
all p: Professor | p not in Person.Course
-- div,1
all c: Course | c.grades.Person-Professor
-- div,2
all c : Course | no c.~enrolled.Professor
-- div,1
(Person-Professor) & enrolled.Course
-- div,1
all p:Professor , c:Course | not grades->p
-- div,1
Person-Professor & enrolled.Course
-- div,1
all p : Person | no Professor in p.enrolled
-- div,1
all c : Course | none c.~enrolled.Professor
-- div,1
all t: Person | t.teaches => t in Professor
-- div,1
all p: Person | p.enrolled and p in Student
-- div,1
all p : Person |p.enrolled iff p in Student
-- div,1
all c : Course, p : Person | p.c in Student
-- div,1
all p:Person | p.enrolled implies p=Student
-- div,2
all s: Student | some c: Course| s.enrolled
-- div,1
all p : Person, c : Course | p.c iff Student
-- div,1
all p : Person | p.enrolled iff p in Student
-- div,3
no (Person-Student) & Person.enrolled.Course
-- div,1
all p:Professor , c:Course | p not in grades
-- div,1
all e: Student | e in e.Person.grades.Course
-- div,1
all p: Person | p.Student & p.enrolled.Course
-- div,1
all s: Student | some c: Course| s.enrolled.c
-- div,1
all c : Course | c.grades.Grade is in Student
-- div,1
all p:Person | p.enrolled implies (p=Student)
-- div,1
all c : Course | no (c && Professor.enrolled)
-- div,1
all x:Person | x.enrolled implies x in Student
-- div,1
all p:Person | p is enrolled implies p=Student
-- div,1
all p : Person | p.enrolled implies p & Person
-- div,1
all p:Person | p in enrolled implies p=Student
-- div,1
all x: Person | x.enrolled implies x in Student
-- div,1
all p: Person | p.enrolled implies p in Student
-- div,2
all p: Person | enrolled.p implies p in Student
-- div,1
all p : Person | p.enrolled implies p in Person
-- div,1
all s : Student, c : Course | lone s.enrolled.c
-- div,1
all p: Person | set p in p.Student & p.enrolled
-- div,1
all e:Student, p:Person| e in p.enrolled.Course
-- div,1
all p: Professor, c:Course | no p in enrolled.c
-- div,1
all c : Course, p : Professor | no c.~enrolled.p
-- div,1
all p:Person | p in Student or p not in enrolled
-- div,1
all p : Person | p.enrolled implies p in Student
-- div,6
all p: Person | p.enrolled.Course-Student = none
-- div,1
all p: Professor | enrolled-p.teaches = enrolled
-- div,1
all p:Person | p.enrolled implies (p in Student)
-- div,2
all p : Person | p.enrolled implies p is Student
-- div,1
one p1 : Person | all c : Course | c in p1.grades
-- div,2
all p: Person | enrolled not none => p in Student
-- div,1
all a : Professor, b : Course | a not in b.grades
-- div,2
all p:Person | p in enrolled implies p in Student
-- div,1
all p: Professor, d:Person | ~p not in enrolled.d
-- div,1
one p1 : Person | all c : Course | c in grades.p1
-- div,3
all p: Professor | p not in Person.enrolled.grades
-- div,1
all p: Person | (p.enrolled.Course)-Student = none
-- div,1
all p:Person | p in Professor -> p.enrolled = none
-- div,1
all p: Person | p in enrolled implies p in Student
-- div,2
all s : Student, c : Course | lone c in s.enrolled
-- div,1
all a : Professor, b : Course | a not in b.~grades
-- div,1
all x: Person | x in enrolled implies x in Student
-- div,1
all p:Person,c:Course | p -> c implies p in Student
-- div,1
all p: Person | p.enrolled not none => p in Student
-- div,1
all p : Person | Professor.p implies none p.enrolled
-- div,1
all p:Person | p.enrolled implies Professor not in p
-- div,1
all c : Course, p : Professor | c -> p not in grades
-- div,1
all p:Person | enrolled.p implies Professor not in p
-- div,1
all p:Person | p.enrolled.Course implies p in Student
-- div,1
all p : Person | some p.enrolled implies p is Student
-- div,1
all p:Person | p.enrolled in Course implies p.Student
-- div,1
all pro : Professor | all p : Person | p.enrolled-pro
-- div,1
all p: Person ,c: Course| p in Student or not(p -> c)
-- div,1
all p:Person | p.enrolled in Course implies Student.p
-- div,1
all p: Person, c:Course | p.enrolled and  p in Student
-- div,1
one p1 : Person | all c : Course | c in (grades.Grade)
-- div,1
all p : Person ,c : Course | p->c implies p in Student
-- div,1
all p:Person | p.enrolled & Course implies p in Student
-- div,1
all p:Person | p.enrolled in Course implies p & Student
-- div,2
all p: Professor | Person.enrolled-p.teaches = enrolled
-- div,1
all p : Person | p.enrolled in Course implies p.Student
-- div,1
all p: Person | all p1: Professor | no p1 in enrolled.p
-- div,1
one p1 : Person | all c : Course | 
c in (grades.Grade)
-- div,1
all p:Person.enrolled | not one p in Professor.enrolled
-- div,1
all p : Person, c : Course | c in p.enrolled iff Student
-- div,1
all p:Person | p.enrolled in Course implies p is Student
-- div,1
all a : Professor, b : Course | a.Person not in b.grades
-- div,1
all c : Course, p : Person | p -> c implies p in Student
-- div,1
all pr:Person-Student | all c:Course | no pr in enrolled
-- div,1
all p : Person | p.enrolled not null implies p in Student
-- div,1
all p : Person |none p.enrolled  implies p not in Student
-- div,1
all p: Person, c:Course | p.enrolled implies p in Student
-- div,1
all p : Person | p.enrolled not none implies p in Student
-- div,2
one p1 : Person | all c : Course | c in (p1.Grade).grades
-- div,1
all a : Professor, b : Course | a not in b.~grades.Person
-- div,1
one p1 : Person | all c : Course | 
c in (p1.Grade).grades
-- div,1
all p : Person | p.enrolled in Course implies p is Student
-- div,1
one p1 : Person | all c : Course | 
c in (p1.Grade.grades)
-- div,1
one p1 : Person | all c : Course | c in (p1.Person).grades
-- div,1
all p:Person | p.enrolled in Course implies p lone Student
-- div,1
all p : Person | all c : Course | p->c implies p in Student
-- div,1
one p1 : Person | all c : Course | 
c in (p1.Person).grades
-- div,2
all p:Person, c:Course | c in p.Course implies p in Student
-- div,1
all p : Person, c : Course | c in p.enrolled iff ~p=Student
-- div,1
all pr:Person-Student | all c:Course | no pr->c in enrolled
-- div,1
all s:Student | s.enrolled in Course implies s not Professor
-- div,1
all p:Person, c:Course | p->c in enrolled implies Student(p)
-- div,1
all p : Person, c : Course | p.enrolled.c implies p = Student
-- div,1
all p : Person, c : Course | c -> p in grades => p in Student
-- div,1
all p: Person, c: Course | p->c in enrolled implies Student.p
-- div,1
all p : Professor , p2 : Person| none p.enrolled + p2.enroller
-- div,1
all p : Person, c : Course | p.enrolled.c implies p in Student
-- div,1
all s : Student, c : Course | c in s.enrolled

} 
run {Student
-- div,1
all p:Person, c: Course | p->c in Course implies p in Students
-- div,1
all p1 :Person | all c1 : Course | p1->c1 implies p1 in Student
-- div,2
all p1 : Person | all c1 : Course | p1->c1 implies p1 in Student
-- div,2
all c : Course | Student.enrolled in c - Professor.enrolled in c
-- div,1
all c : Course, p : Person | p.c in enrolled implies p in Student
-- div,1
all p : Person, c : Course | no (c & p.enrolled and c & p.teaches)
-- div,1
all a : Course, b : Person | a in b.enrolled implies (b & Student)
-- div,1
all a : Course, b : Person | a in b.enrolled implies b in a.grades
-- div,1
all s: Person, c : Course | s no (Person-Student) & enrolled.Course
-- div,1
all p: Person, c: Course | not (p & Student) implies not p.enrolled
-- div,1
all p : Person, c : Course | ( p & Student ) implies c in p.enrolled
-- div,2
all s: Person, c : Course | s no (Person-Student) && enrolled.Course
-- div,1
all i : univ | i in Student and i!=Professor implies some enrolled.~i
-- div,1
all s : Student | s.enrolled in Course - Professor.enrolled in Course
-- div,1
all c : Course, p : Person | p -> (c in enrolled) implies p in Student
-- div,1
all p:Person, c: Course | no (p & Student) implies c not in p enrolled
-- div,1
all p : Person, c : Course | c & p.teaches implies c not in p.enrolled
-- div,1
all p : Person, c : Course | c & p.teaches implies no (c & p.enrolled)
-- div,1
all c: Course | c.enrolled in Student implies c.enrolled not in teaches
-- div,1
all a : Course, b : Person | a in b.enrolled implies b in Course.grades
-- div,1
all p : Person, c : Course | (c & p.teaches) implies c not in p.enrolled
-- div,2
all p: Person, c: Course | not (p & Student) implies c not in p.enrolled
-- div,1
all p : Professor | all s : Student | all c : Course | no Course.p.enrolled
-- div,1
all s: Person, c : Course | s not in  (Person-Professor) && enrolled.Course
-- div,1
all p : Person, c : Course | no ( p && Student ) implies c not in p.enrolled
-- div,1
all p : Person, c : Course | no ( p and Student ) implies c not in p.enrolled
-- div,1
all s : Student, p : Professor | one c : Course | s in c.grades and p not in c.grades
-- div,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor | p in s & pr not in p
-- div,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s & p != s
-- div,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s & p != pr
-- div,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p in s & p not in pr
-- div,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | (p in s) and (s & pr)
-- div,1
all p : Person, c : Course | c & p.teaches implies c not in p.enrolled

} 
run {Student = Professor
-- div,1
all p : Person, c : Course | no (c & p.teaches) implies c & p.enrolled

} 
run {Student = Professor
-- div,1
all p : Person, c : Course | (c & p.teaches) implies c not in p.enrolled

} 
run {Student = Professor
-- div,2
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | (p in s) and not (s & pr)
-- div,1
all a : Person, b : Course | a in b.^(grades.~Person) implies a in Student
  
  	a in a.^(parent.~hash)
-- div,1
