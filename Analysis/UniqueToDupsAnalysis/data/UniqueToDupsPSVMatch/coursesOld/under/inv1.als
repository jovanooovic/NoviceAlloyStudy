no enrolled.Professor
-- div,4
enrolled.Person in Student
-- div,5
Course.enrolled in Student
-- div,2
enrolled . Student in Course
-- div,1
no Professor & Course.enrolled
-- div,1
Student.enrolled = Person.enrolled
-- div,3
Person.enrolled = Student.enrolled
-- div,1
all x : Professor | no enrolled.x
-- div,1
all p: Professor | no enrolled.p
-- div,3
all p : Professor | none in p.enrolled
-- div,1
all p: Person | enrolled.p in Student
-- div,2
all c: Course | c.enrolled in Student
-- div,4
all s : Student | s.enrolled in Course
-- div,3
all p: Professor | p not in Person.enrolled
-- div,1
all p : Professor | p not in enrolled.Person
-- div,2
all p: Person | enrolled.Person in Student
-- div,2
all c : Course | c.grades.Grade in Person
-- div,1
not (some p: Professor | p in Person.enrolled)
-- div,1
all p : Person | no p.enrolled & Professor
-- div,1
all p: Person | p.enrolled & p in Student
-- div,1
all p : Professor | p not in ~enrolled.Person
-- div,1
all p : Person - Student | p not in p.enrolled
-- div,1
all p: Professor-Student | no enrolled.p
-- div,1
all p : Person | p in Course implies p in Student
-- div,1
all e:Student,c:Course| enrolled.e in c
-- div,1
all p:Person | p.enrolled in Student.enrolled
-- div,1
all p:Person.enrolled | p in Student.enrolled
-- div,4
all p : Person | p in Course implies p not in Professor
-- div,1
all s:Student | s.enrolled in Person.enrolled
-- div,1
all p:Person | p in p.enrolled implies p=Student
-- div,1
all p: Professor, d:Person | p not in enrolled.d
-- div,3
all p: Professor, c:Course | p not in c.enrolled
-- div,2
all p: Person | p in enrolled.p implies p in Student
-- div,1
all p: Professor, d:Person | p not in d.enrolled
-- div,1
all p: Person | p.enrolled - Professor = p.enrolled
-- div,1
all c : Course, p : Person | p in c implies p in Person
-- div,1
all p:Person | p in Person.enrolled implies p in Student
-- div,2
all c : Course, p : Person | p in c implies p in Student
-- div,1
all p : Person | p in Course.enrolled implies p in Student
-- div,1
all p: Person | p in Project.enrolled implies p in Student
-- div,1
all s:Student| no (Person-Student) & enrolled.Course
-- div,1
all c : Course, p : Professor | c -> p not in grades.Person
-- div,1
all c : Course, p : Professor | c -> p not in Person.grades
-- div,1
all p : Student, c : Course | no p implies c not in p.enrolled
-- div,1
all a : Professor, b : Course | a not in b.~(grades.Person)
-- div,1
all x : Person | x in Professor-Student implies no x.enrolled
-- div,1
all p : Person | all t : Professor| no (p.enrolled & t)
-- div,1
all pro : Professor | all p : Person | pro not in p.enrolled
-- div,2
all p : Person | all c : Course | p in c implies p in Student
-- div,2
all p: Person, c: Course | p not in Student implies no c.enrolled
-- div,1
all p: Person, c: Course | p in c.enrolled implies p in Student
-- div,2
all p:Person, c:Course | c in enrolled.p implies p in Student
-- div,3
all p : Person | p in Course implies (p in Student and p not in Professor)
-- div,2
all p : Student, c : Course | p -> c in enrolled => p in Student
-- div,1
all p : Person | all c : Course | p in c implies p not in Professor
-- div,1
all p : Student, c : Course | no ( p & Student ) implies c not in p.enrolled
-- div,1
all person : Person| person in person.enrolled implies person not in Professor
-- div,2
all p: Person | all c: Course | p.enrolled=c implies p in Student
-- div,1
all c: Course | all p: Person | p in c.enrolled implies p not in Professor
-- div,1
all p : Student, c : Course | p -> c in enrolled => p not in (Person-Student)
-- div,1
all p : Person, p2 : Person | p -> p2 in enrolled implies p in Student and p2 in Student
-- div,1
