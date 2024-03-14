all c: Course |
-- div,1
all s : Student
-- div,1
no Professor.enroled
-- div,1
enrolled.c in Student
-- div,1
enroled.Course in Student
-- div,2
Person-Professor.enorlled
-- div,1
enrolled.Couse in Student
-- div,1
enrolled.Coruse in Student
-- div,1
enrolled.Course in Studenr
-- div,1
not enrolled.grades.Grades
-- div,1
Course.~enroled in Student
-- div,1
enrolled.Course in students
-- div,1
enrolled.Person in Students
-- div,1
no Professor.enrolled.Couse
-- div,1
enrolled.Course in Studente
-- div,1
enrolled . Studen in Course
-- div,1
no Course.~enrolled - Sutdent
-- div,1
no enrolled.Course - Students
-- div,1
no Professot & enrolled.Course
-- div,1
all s : Student | s : enrolled
-- div,1
forall s : Student | s : enrolled
-- div,1
enrolled in Student all -> Course
-- div,1
Person.enrolled = Studen.enrolled
-- div,1
all c: Course : c.grades-Professor
-- div,1
all e:Student, p:Person| c.enrolled
-- div,1
all p : Professor | zero p.enrolled
-- div,1
enrolled in (Student -> Course some)
-- div,1
all c : Curso | enrolled.c = Student
-- div,1
all c: course | c.enrolled in Student
-- div,1
Course.grades.Grade - Students = none
-- div,1
all p: Person | enrolled.c in Student
-- div,1
NO (Person-Student) & enrolled.Course
-- div,1
all c:Course | Students in enrolled.c
-- div,1
Courses.grades.Grade - Students = none
-- div,1
all c: Course | c.enrolled in Student
}
-- div,1
all s : Student | s.enrolled in Courses
-- div,1
all Person.enrolled in Student.enrolled
-- div,2
all c : Course | enrolled.c in Students
-- div,1
all c: Courses | c.~enrolled in Student
-- div,1
all p: Professor | Courses no p.enrolled
-- div,1
Professor.enrolled no in Person.enrolled
-- div,1
all c : Course | c.~enrolled in Students
-- div,1
all p:Photo | one u:User | u->p in posts
-- div,1
all c : Courses | enrolled.c in Students
-- div,1
all p : Professor | none in p.enrolled )
-- div,1
all p:Professor | p no in Person.enrolled
-- div,1
all c:Course, p:person | p->c in enrolled
-- div,1
all (Person.enrolled in Student.enrolled)
-- div,1
all p: Photo | one u:User | u->p in posts
-- div,1
all c : Courses | c.grades.Grade in Person
-- div,1
all c:Course | enrolled.c not in Prodessor
-- div,1
all c : Course | all c.grades.Grade in Person
-- div,1
all Professor.enrolled not in Person.enrolled
-- div,1
all x:Person | x:enroled implies x in Student
-- div,1
all p : Person - Students | p.enrolled = none
-- div,1
all x:Person | x.enroled implies x in Student
-- div,1
all p: Person | set p in Student & p.enrolled
-- div,1
all p:Person | p.enrolled in Students.enrolled
-- div,1
all p: Person | no p1: Professor in enrolled.p
-- div,1
p : Person | p not in Student => no p.enrolled
-- div,1
all p:Person.enrolled | p in Students.enrolled
-- div,1
all s : Student, p : Professor | one c : Course
-- div,1
all p:Professor, c:Course | c not in s.enrolled
-- div,1
all P:Person | p in Student or p not in enrolled
-- div,1
all P:person | p in Student or p not in enrolled
-- div,1
all p: Person | p.enrollled implies p in Student
-- div,1
all profs: Personen-Student | #profs.enrolled = 0
-- div,1
all p:Person.enrolled | all p in Student.enrolled
-- div,1
all p : Person | iff p is Professor no p.enrolled
-- div,1
all s:Student | all s.enrolled in Person.enrolled
-- div,2
all p: Person | set (p in p.Student & p.enrolled)
-- div,1
all c : Courses | c.grades.Grade - Student = none
-- div,1
all p:Person | s:Student | p.enrolled = s.enrolled
-- div,1
all p:Professor | p.enrolled no in Person.enrolled
-- div,1
all a : Professor, b : Course | a not in b~.grades
-- div,1
all p:Person | s:Student | p.enrolled in s.enrolled
-- div,1
all p: Person c: Course| p in Studen or not(p -> c)
-- div,1
all x:Course, y:Person-Studet | y not in enrolled.x
-- div,1
all c: Course | p = enrolled.c implies p in Student
-- div,1
all p:Person | no (Person-Studant) & enrolled.Course
-- div,1
all c: Course | c in s.enrolled implies s in Student
-- div,1
all p: Person ,c: Course| p in Studen or not(p -> c)
-- div,1
all c: Course | x in c.~enrolled implies x in Student
-- div,1
all p: Person | set p in p.Student & p.enrolled.Course
-- div,1
all p: Person | p not in Student implies no c.enrolled
-- div,1
all p : Person | p.enrolled in Course iff p == Student
-- div,1
all p: Person | set p in p.Student & p.Course.enrolled
-- div,1
all p : Person | (some p.enrolled implies p in Student
-- div,1
all p : Person | no not p.enrolled implies p in Student
-- div,1
all p:Person.enrolled | not p in one Professor.enrolled
-- div,1
all p : Person | s.enrolled in Courses implies p.Student
-- div,1
all p : Person | p.enrolled in Courses implies p.Student
-- div,1
all p:Person | p.enrolled in Courese implies p in Student
-- div,1
all p : Person | p.enrolled in Couse implies p is Student
-- div,1
all p : Person |p in enrolled.Course iif p not in Student
-- div,1
not some p:Person | p->c in enrolled and p not in Student
-- div,1
all p : Person | p in enroled.Course implies p in Student
-- div,1
all p: Person, c: Course | p->c in enroled => p in Student
-- div,1
all p : Person | p in enrroled.Course implies p in Student
-- div,1
one p1 : Person | all c : Course | c in (p1.Grades).grades
-- div,1
all c:course | not some p:Person-Student | p->c in enrolled
-- div,1
all p:Person.enrolled | pr: Professor.enrolled | pr not in p
-- div,1
all c: Course, u: User | c in u.enrolled implies u in Student
-- div,1
all c:Course, p:person | p->c in enrolled implies p in Student
-- div,1
all p:Person.enrolled | pr: Professor.enrolled | pr not in p.^
-- div,1
all p : Person | all Course in p.enrolled implies p in Student
-- div,1
all p : Professor, s : Student, all c : Course | no p.enrolled
-- div,1
all s : Student, c : Course | c in s.enrolled
-- div,1
all p:Person, c: Course | p->c in Cpurse implies p in Students
-- div,1
all p : Professor | all s : Course | p.enrolled = c - p.teaches
-- div,1
all p: Person, c:Course | p not in Student and p->c in enroleed
-- div,1
all a : Course, b : Person | a in b.enrolled implies b~.Student
-- div,1
all p : Person c:Course | p->c in enrolled implies p in Student
-- div,1
all c: Course | p: Person | p = enrolled.c implies p in Student
-- div,1
all p:Person, c: Course | p->c in enrolled implies p in Students
-- div,1
all p:Person, c:Course | s -> c in enrolled implies p in Student
-- div,1
all p : Person | c : Courses | c in p.enrolled implies Student.p
-- div,1
all x: Person, c: courses | x->c in courses implies x in Student
-- div,1
all p : Professor | all s : Courses | p.enrolled = c - p.teaches
-- div,1
all p : Person c : Course | p->c in enrolled implies p in Student
-- div,1
all p : Student, c : Course | p -> c in enrolled => p in Student)
-- div,1
all p1 : Person | all c1 : Courses | p1->c1 implies p1 in Student
-- div,1
all p : Person | some p.enrolled implies p in Student
-- div,9
all c : Course | Student.enrolled in c not Professor.enrolled in c
-- div,1
all p.Person | all c:Course | c in p.enrolled implies p in Student
-- div,1
all p : Person | all s : Student | all c : Course | c in s.erolled
-- div,1
all p : Person | c : Course | c in p.enrolled implies p in Student
-- div,2
all p : Person - Student | some c : Corse | not p -> c in enrolled
-- div,1
all c : Courses, p : Person | p->c in enrolled implies p in Student
-- div,1
all p : Person | c : Courses | c in p.enrolled implies p in Student
-- div,1
all s,p : Person | pr : Professor | s != pr implies s in p.enrolled
-- div,1
all p1 in Person | all c1 in Courses | p1->c1 implies p1 in Student
-- div,1
all p : Person, c : Couse | (p->c in enrolled) implies p in Student
-- div,1
all s : Student | s.enrolled in Course - Professor.enroled in Course
-- div,1
all p : Person, c : Couser | (p->c in enrolled) implies p in Student
-- div,1
all u : User | all c : Course | c in u.enrolled implies u in Student
-- div,1
all s : Student | s.enrolled in Course - Professor.enroleed in Course
-- div,1
all p : Person | Course in p.enrolled implies p in Student
-- div,1
all p : Professor | all s : Student | s == p implies p.enrolled = none
-- div,2
all c:Courses, p:Person | no (p & Student) implies not c in  p.enrolled
-- div,1
all p : Pearson | all c : Course | c in p.enrolled implies p in Student
-- div,1
all p : Professor, s : Student, c : Course | c not in p.enrolled.object
-- div,1
all person : Person | professor : Professor | person-professor in Course
-- div,1
all p:Person, c:Course | s -> c in enrolled implies ( s:Student | p = s)
-- div,1
all p : Person - Student, c : Course | c in p.enrolled | c not in Course
-- div,1
all p : Person c : Course | p not in Student implies p->c not in enrolled
-- div,1
all p : Person - Students, c : Course | c in p.enrolled | c not in Course
-- div,1
all person : Person | professor : Professor | person - professor in Course
-- div,1
all p : Person - Students, c : Courses | c in p.enrolled | c not in Courses
-- div,1
all p : Person , c : Course | no (p & Students) implies c not in p.enrolled
-- div,1
all p : Person | all s : Student | all c : Course | c in p.enrolled iff p == s
-- div,1
all person : Person | professor : Professor | person - professor in p.enrolled
-- div,1
all person : Person | professor : Professor | person - professor in person.enrolled
-- div,1
all p : Professor | s : Student | c : Course | p.enrolled = none and c in s.enrolled
-- div,1
all person : Person | professor : Professor | (person - professor) in person.enrolled
-- div,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor | p in s | pr not in p
-- div,1
all p : Person, p2 : Person | p -> p2 in enrolled implies p1 in Student and p2 in Student
-- div,1
all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | p in s & s!= pr
-- div,1
all i : univ | i in Student and i!=Professor implies some enrolled.i and implies ~teaches.i
-- div,1
all i : univ | i in Student and i!=Professor implies some enrolled.i and implies !teaches.i
-- div,1
all p : Person | all c : Course | c in p.enrolled implies p in Student
-- div,4
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s | p != s
-- div,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s | p != pr
-- div,1
all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | (p in s) & (s!= pr)
-- div,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s | pr not in p
-- div,1
all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | s != implies (p in s)
-- div,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p in s | p not in pr
-- div,1
all p : Person, c : Course | c not in p.enrolled and c in s.enrolled

} 
run {Student = Professor
-- div,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p in s | pr not in p
-- div,1
all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | (p in s) and (s != pr)
-- div,1
all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | s != pr implies (p in s)
-- div,1
all x: Course, y : Person-Professor | y->x not in enrolled
  no (Person - Professor) & enrrolled.Course
-- div,1
all p : Professor , p2 : Person, s : student| no p.enrolled + p2.enrolled and no p.teaches & p.enrolled
-- div,1
all p : enrolled.Course | p in Student
	all p: Person | all c: Course | p.enrolled=u implies p in Student
-- div,1
pred inv1 {
    all c: Course | c.enrolled in Student
}
	
}

pred inv1{
	
  	pred inv1 {
    all c: Course | c.enrolled in Student
}
-- div,1
all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | s != pr implies (p in s)
-- div,1
