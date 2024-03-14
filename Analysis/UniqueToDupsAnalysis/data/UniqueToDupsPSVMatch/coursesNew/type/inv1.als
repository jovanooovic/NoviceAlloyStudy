enrolled = Student
-- div,1
none Teacher.enrolled
-- div,1
not Professor.enrolled
-- div,1
enrolled in  (Student)
-- div,1
none Professor.enrolled
-- div,2
no enrolled in Professor
-- div,1
all x : Student | Course.x
-- div,1
all s: Student | s.enrolled
-- div,1
no Professor.enrolled.Course
-- div,1
all s : Student | enrolled.s
-- div,1
no (Course.grades - Student)
-- div,1
none (Person-Student).enrolled
-- div,1
enrolled.Course implies Student
-- div,1
all p : enrolled | p in Student
-- div,1
projects in (Student -> Project)
-- div,2
Person.enrolled.Course in Student
-- div,1
all c:Course| c.grades in Student
-- div,1
all x:Person-Professor| enrolled.x
-- div,1
all c:Course | enrolled.c & Student
-- div,1
all s:Person-Professor | s.enrolled
-- div,1
not one Professor.enrolled in Course
-- div,1
all c : Course | grades.c in Student
-- div,1
all p : Person-Professor | p.enrolled
-- div,2
all p : Professor | p not in enrolled
-- div,1
all x: Person - Professor| x.enrolled
-- div,1
all p:Person-Student |  not p.enrolled
-- div,1
all x: Person - Professor | x.enrolled
-- div,2
all c : Course | enrolled c in student
-- div,1
all p:Person-Student | p.enrolled = {}
-- div,1
all x: Person-Professor| x in enrolled
-- div,2
all c : Course | enrolled c in Student
-- div,1
all p : Person - Professor | p.enrolled
-- div,2
all x : Person . Student | no x.enrolled
-- div,1
all p: Person - Student | p not enrolled
-- div,1
all c: Course | all p: Person | p in p.c
-- div,1
all p : Person, s : Student | s.enrolled
-- div,1
all p : Person, s : Student | p.enrolled
-- div,1
all c:Course| c.grades->Person in Student
-- div,1
all x: Person - Student | none x.enrolled
-- div,1
all c: Course | Student => Person.enrolled
-- div,1
all p: Person | p in Student => #p.Course=1
-- div,1
all p : Person | p.enrolled => p in Student
-- div,1
all c:Course |	
  		no Professor.enrolled.c
-- div,1
all x : Person | some x.enrolled in Student
-- div,1
all c: Course | Student => Student.enrolled
-- div,2
all p: Person | p in Student => one p.Course
-- div,1
all p : Person - Student | p not in enrolled
-- div,1
Person.enrolled in Course -> Person = Student
-- div,1
all c:Course, p:Person | enrolled.c & Student
-- div,1
all p: Person | p in Student => p in enrolled
-- div,2
all p:Person | p.enrolled implies p in Student
-- div,4
all x: Person | x.enrolled implies x in Student
-- div,2
all p: Person | p.enrolled implies p in Student
-- div,1
all p:Person.enrolled in Course |
  		p.Student
-- div,1
all p:Person.enrolled in Course|
  		p->Student
-- div,1
all p : Person | p in enrolled and p in Student
-- div,1
all s : Person | s.enrolled implies s & Student
-- div,1
all  p : Person.Professor | p not in enrolled.p
-- div,1
all s : Person | s.enrolled implies s in Student
-- div,1
all c:Course |	
  		not one c.Professor.enrolled
-- div,1
all a : Person | a.enrolled implies a in Student
-- div,1
all p : Person | p.enrolled implies p in Student
-- div,1
all p : Person | p.enrolled implies p is Student
-- div,1
all c:Course |	
  		not one Professor.enrolled.c
-- div,2
all p : Person | p in Professor => not p.enrolled
-- div,1
all p:Person.enrolled in Course |
  		p = Student
-- div,1
all p : Person | (p & Student) => some p.enrolled
-- div,1
all p: Person | p in enrolled implies p in Student
-- div,1
all p:Person, c:Course | c in p.enrolled implies p
-- div,1
all c:Course |	
  		not one Professor.enrolled in c
-- div,2
all p : Person | some p.enrolled implies p is Student
-- div,1
all c: Course | Student => Student in Person.enrolled
-- div,1
all p:Person | p.enrolled not {} implies p in Student
-- div,1
all p : Person | (p & Student) implies some p.enrolled
-- div,2
all p:Person, c:Course | (c in p.enrolled) & (Student)
-- div,1
all p:Person, c:Course | c in p.enrolled & p in Student
-- div,1
all p : Person, c : Course | p.enrolled => p in Student
-- div,1
all x: Person | some x in enrolled implies x in Student
-- div,1
all p : Person, s : Student | s.enrolled implies p in s
-- div,1
all p : Professor | all c : Course | no c in p.enrolled
-- div,1
all p : Person |p not in Student implies not p.enrolled
-- div,1
all c: Course | all p: Person | p in p.c => p in Student
-- div,1
all p : Person | (p & Professor) implies none p.enrolled
-- div,1
all x: Person | (x not in Student) implies not x.enrolled
-- div,1
all  p : Professor | all c : p.enrolled | not p.teaches.c
-- div,1
Person.enrolled
  	no Person.teaches
  	no Person.proects
-- div,1
all p : Person, c : Course | p in enrolled => p in Student
-- div,1
all x: Person | (x not in Student) implies x not x.enrolled
-- div,1
all c: Course | all p: Person | p in c.grades => p in Student
-- div,1
all  p : Person | all c : Course | c in p.enrolled -> p.Student
-- div,1
all p : Person | all c : Course | p.enrolled implies p & Student
-- div,1
all  p : Person | all c : Course | c in p.enrolled -> p = Student
-- div,1
all p : Person | all c : Course | p.enrolled implies p in Student
-- div,2
all  p : Person | all c : Course | c in p.enrolled -> p is Student
-- div,1
all e : Person | all c: Course | c in e.enrolled implies c & Student
-- div,1
all p: Person | all c: Course | p in Professor implies no c in p.enrolled
-- div,1
all p1 : Person | all c1 : Course | p1.enrolled(c1) implies p1 in Student
-- div,1
all p: Person | all c: Course | p in Professor implies (no c in p.enrolled)
-- div,3
all p: Person | all c: Course | p in Professor implies (no p in enrolled.c)
-- div,2
all p1 : Person | all c1 : Course | p1 in c1 in enrolled implies p1 in Student
-- div,1
all x: Person - Student | no x.enrolled
  all x: Person - Professor| x.enrolled
-- div,1
all p:Person | (p in Student implies set p.enrolled) and (p in Professor implies no p.enrolled)
-- div,1
all p: Person | all c: Course | p in Professor implies (c not in p.enrolled) or p in Student implies some c in p.enrolled
-- div,1
all p: Person | all c: Course | (p in Professor implies (no c in p.enrolled)) and (p in Student implies (c in p.enrolled))
-- div,1
all p: Person | all c: Course | p in Professor implies (c not in p.enrolled)
    all s: Person | all c: Course | s in Student implies (some c in p.enrolled)
-- div,1
