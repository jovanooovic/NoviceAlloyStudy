enrolled.Course=Student
-- div,8
enrolled . Course in Course
-- div,1
Person.enrolled= Student
-- div,2
Person.enrolled in Student
-- div,5
enrolled = Student -> Course
-- div,1
Course.~enrolled = Student
-- div,3
no Person-Student.enrolled
-- div,1
no Person.enrolled - Student
-- div,1
enrolled in (Student -> one Course)
-- div,1
enrolled in Person some ->  Student
-- div,2
enrolled in (Student -> some Course)
-- div,1
enrolled in Student one -> some Course
-- div,1
enrolled in Student some -> one Course
-- div,2
Person.enrolled = Person - Professor
-- div,1
all p : Person | no p.enrolled
-- div,1
enrolled.Course = Student - Professor
-- div,1
Professor.enrolled not in Person.enrolled
-- div,1
no Person-Student & Course.enrolled
-- div,1
not Professor.enrolled in Person.enrolled
-- div,1
Course.~enrolled = Student - Professor
-- div,3
all c: Course | enrolled.c = Student
-- div,2
all p: Person.enrolled | p = Student
-- div,2
all p: Person.enrolled | p in Student
-- div,1
all p : Person | p.enrolled in Student
-- div,1
all p : Person | no p.enrolled - Student
-- div,2
all p: Person | p.enrolled-Student = none
-- div,1
all p: Person | some enrolled implies p in Student
-- div,1
all c: Course | enrolled.c in Student - Professor
-- div,1
all c : Course, p : Person | p.enrolled in Student
-- div,1
all p: Person, c:Course | p.enrolled in Student
-- div,1
all p:Person | p.enrolled in Course implies p = Student
-- div,3
all p:Person | enrolled.p in Course implies p in Student
-- div,1
all p:Person | p.enrolled in Course => p in Student
-- div,17
all p : Person |p in enrolled.Course iff p in Student
-- div,2
all x : Person | x in enrolled.Course <=> x in Student
-- div,1
all p: Person | p not in Student => p.enrolled not in Course
-- div,1
all p:Person  | all c:Course | c not in p.enrolled
-- div,1
one p1 : Person | all c : Course | c in grades.p1.Grade
-- div,3
all c : Course, p: Person | c in p.enrolled => p = Student
-- div,1
one p1 : Person | all c : Course | c in grades.p1.Person
-- div,1
all p : Person, c : Course | c in p.enrolled implies p = Student
-- div,1
all p: Person, c: Course | c in p.enrolled implies c in Student
-- div,1
all p: Person, c:Course | p = Student and p->c in enrolled
-- div,1
all p:Person | p.enrolled in Course implies p not in (Person-Student)
-- div,1
all p : Person, c : Course | c in p.enrolled iff p in Student
-- div,1
all p: Person, c:Course | p  in Student and p->c in enrolled
-- div,2
all c: Course | enrolled.c in Student and enrolled.c not in Professor
-- div,2
all p : Person, c : Course | c not in p.enrolled iff no ( p & Student )
-- div,2
all p: Person | p.enrolled-((Course.grades.Grade)&Student) = none
-- div,1
all p: Person | some p.enrolled iff p in Student and p not in Professor
-- div,1
all c: Course | all p: Person | c in p.enrolled implies p=Student
-- div,2
all p:Person | all c:Course | p->c in enrolled implies p=Student
-- div,1
all c : Course | all p : Person | p->c in enrolled implies p = Student
-- div,1
all c : Course | all p : Person | p->c in enrolled iff p = Student
-- div,1
all p : Person | p in enrolled.Course implies p in Student and p not in Professor
-- div,2
all p : Person | p.enrolled in Course implies (p in Student and p not in Professor)
-- div,1
all p: Professor | no p.enrolled
	all p: Person | p in Professor or p in Student
-- div,1
all p: Student&Professor | no p.enrolled
	all p1: Person-Student | no p1.enrolled
-- div,1
all x: Course, y : Person-Professor | y->x not in enrolled
  no (Person - Student) & enrolled.Course
-- div,1
all c : Course | c.grades.Grade in Student
   all p : Person | some p.enrolled implies p in Student
-- div,1
all course: Course | all person: Person | course in person.enrolled implies (person in Student and person not in Professor)
-- div,1
all c: Course | all p: Person | c in p.enrolled implies p=Student
	all p: Person | p.enrolled in Course implies p=Student
-- div,1
