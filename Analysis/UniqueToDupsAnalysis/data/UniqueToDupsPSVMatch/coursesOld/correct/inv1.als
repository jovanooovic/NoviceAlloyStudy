enrolled.Course in Student
-- div,89
enrolled in Student->Course
-- div,23
Course.~enrolled in Student
-- div,3
Student <: enrolled = enrolled
-- div,2
no enrolled.Course-Student
-- div,5
no(Person-Student).enrolled
-- div,46
no Course.~enrolled - Student
-- div,2
no (Person-Student) & enrolled.Course
-- div,15
all p : enrolled.Course | p in Student
-- div,4
all c:Course | enrolled.c in Student
-- div,35
all y : Course | enrolled.y in Student
-- div,1
all c: Course | c.~enrolled in Student
-- div,5
all x : Person - Student | no x.enrolled
-- div,2
all p : Person-Student| no p.enrolled
-- div,2
all p : Person-Student| p.enrolled = none
-- div,5
all c:Course | c not in (Person - Student).enrolled
-- div,1
all p : Person | no Course.~enrolled - Student
-- div,1
all p : Person | some p.enrolled => p in Student
-- div,17
all x: Person | some x.enrolled implies x in Student
-- div,1
all s : Person | some s.enrolled implies s in Student
-- div,1
all p : Person | not no p.enrolled implies p in Student
-- div,1
all x, y : univ | x->y in enrolled implies x in Student
-- div,1
all c : Course, p : Person | enrolled.c in Student
-- div,1
all p: Person | #p.enrolled > 0 implies p in Student
-- div,2
all profs: Person-Student | #profs.enrolled = 0
-- div,1
all x : Person | x in enrolled.Course => x in Student
-- div,2
all p: Person | p in enrolled.Course => p in Student
-- div,6
all p:Person | no (Person-Student) & enrolled.Course
-- div,1
all x:Course, y:Person-Student | x not in y.enrolled
-- div,1
all x:Course, y:Person-Student | y not in enrolled.x
-- div,1
all p:Person-Student, c:Course | c not in p.enrolled
-- div,4
all x : Person | x in (Person-Student) implies no x.enrolled
-- div,2
all x:Person-Student, y:Course | x->y not in enrolled
-- div,2
all x:Course, y:Person-Student | y->x not in enrolled
-- div,2
all c: Course, s: Person | c in s.enrolled implies s in Student
-- div,1
all c: Course, p: Person | c in p.enrolled implies p in Student
-- div,3
all p : Person, c : Course | c in p.enrolled => p in Student
-- div,32
all p:Person,c:Course | p in enrolled.c implies p in Student
-- div,10
all x:Person, c:Course | x in enrolled.c implies x in Student
-- div,2
all p : Person, c : Course | some p.enrolled => p in Student
-- div,1
all a : Person, b : Course | b in a.enrolled implies a in Student
-- div,1
all x: Person, y:Course | y in x.enrolled implies x in Student
-- div,5
all x : Person, y: Course | x->y in enrolled implies x in Student
-- div,1
all p:Person, c:Course | p->c in enrolled => p in Student
-- div,44
all c:Course, p:Person | p->c in enrolled implies p in Student
-- div,29
all x: Person, c: Course | x->c in enrolled implies x in Student
-- div,2
all p:Person, c:Course | p in Student or p->c not in enrolled
-- div,2
all c: Course, p: Person | p in c.~enrolled implies p in Student
-- div,2
all p : Person ,c : Course | p not in Student implies p->c not in enrolled
-- div,4
all p: Person ,c: Course| p in Student or not(p -> c in enrolled)
-- div,2
all p:Person, c:Course |no(p & Student) implies c not in p.enrolled
-- div,18
all c:Course, p:Person | no (p & Student) implies c not in p.enrolled
-- div,1
all p : Person - Student | all c : Course | not p -> c in enrolled
-- div,1
all c:Course, p:Person | no (p & Student) implies not c in  p.enrolled
-- div,1
all c:Course | not some p:Person-Student | p->c in enrolled
-- div,1
all p : Person, c : Course | no(p & Student) implies not c in p.enrolled
-- div,2
all p: univ | all c: Course | p->c in enrolled implies p in Student
-- div,1
all c: Course | all p: Person | c in p.enrolled implies p in Student
-- div,3
all p : Person | all c : Course | p in enrolled.c implies p in Student
-- div,1
all u : Person | all c : Course | c in u.enrolled implies u in Student
-- div,1
all p : Person | all c : Course | c in p.enrolled => p in Student
-- div,29
all p:Person|all c:Course| p->c in enrolled implies p in Student
-- div,15
all c : Course | all p : Person | p->c in enrolled implies p in Student
-- div,3
all s : Person | all c :  Course | s->c in enrolled implies s in Student
-- div,1
all p:Person | (some c:Course | c in p.enrolled) implies p in Student
-- div,3
all p : Person | (some c: Course | p -> c in enrolled) => (p in Student)
-- div,2
all p:Person | all c1:Course | p->c1 in enrolled implies p in Student
-- div,1
all p1 : Person | all c1 : Course | c1 in p1.enrolled implies p1 in Student
-- div,1
all p1 : Person | all c1 : Course | p1->c1 in enrolled implies p1 in Student
-- div,14
not some p:Person | some c:Course | p not in Student and p->c in enrolled
-- div,1
all p,c : univ | p in Person and c in Course and p->c in enrolled implies p in Student
-- div,2
all p, c : univ | p in Person and p not in Student and c in Course implies p->c not in enrolled
-- div,1
enrolled.Course in Student
  all p : Person | p in enrolled.Course implies p in Student
-- div,1
all course: Course | all person: Person | course in person.enrolled implies person in Student
-- div,2
all person: Person | all course: Course | course in person.enrolled implies person in Student
-- div,2
all x: Course, y : Person - Student | y->x not in enrolled
  no (Person - Student) & enrolled.Course
-- div,3
all p : univ | p in Person and p not in Student implies all c : univ | c in Course implies p->c not in enrolled
-- div,3
all p : enrolled.Course | p in Student
	all p: Person | all c: Course | p.enrolled=c implies p in Student
-- div,1
