teaches != none
-- div,1
teaches.Course
-- div,1
Course some Pofessor
-- div,1
Course some Professor
-- div,1
all c:Course | teaches.c
-- div,1
some Professor in Person
-- div,1
all x:Course | teaches.x
-- div,2
all c:Course | c.teaches
-- div,1
all c: Course | teaches.c
-- div,1
Professor->Course != none
-- div,1
all c : Course | teaches.c
-- div,2
all c : Course | c.teaches
-- div,1
all c: Course | c.~teaches
-- div,2
all c : Course | c.~teaches
-- div,1
all c: Course | c in teaches
-- div,1
all p : Professor | p.teaches
-- div,5
Course & teaches.Professor
-- div,1
Course & Professor.teaches
-- div,1
teaches.Person in grades.Course
-- div,1
some teaches.Course in Professor
-- div,2
some Professor in Person.teaches
-- div,1
some Professor in teaches.Course
-- div,1
some Course.~teaches in Professor
-- div,1
all t:Professor| lone t in Course
-- div,1
all c : Course | Professor.teaches
-- div,1
all p : Professor | p => p.teaches
-- div,1
all kurs: Course | kurs in teaches
-- div,1
some (teaches.Course in Professor)
-- div,1
all c: Course | one Professor in c
-- div,1
all c: Course | some Professor in c
-- div,1
all c:Course | some Person.teaches.c
-- div,2
all c : Course | Professor.teaches.c
-- div,1
all c : Course | c.Professor.teaches
-- div,1
all c : Course | some Person.teaches.c
-- div,1
all c : Course | c & Professor.teaches
-- div,2
all c:Course, p:Professor |  p.teaches
-- div,1
all c: Course, p: Person | c implies p
-- div,1
all c : Course | c && Professor.teaches
-- div,1
all p : Person, c : Course| p.teaches.~c
-- div,2
all c:Course, p:Person |  teaches.Course
-- div,1
all c : Course | c->teaches in Professor
-- div,1
all x : Course | some Professor.teaches.x
-- div,2
all c : Course | c implies some Professor
-- div,1
all c : Course | some Professor.teaches.c
-- div,4
all c : Course | one (Person - Student).c
-- div,1
all c:Course | some (c in Person.teaches)
-- div,1
all c:Course | one Professor in teaches.c
-- div,1
all c : Course | some c in Person.teaches
-- div,1
all c : Course | some c.projects.~projects
-- div,1
all c : Course | some (Professor.teaches).c
-- div,1
all c: Course | lone teaches.c in Professor
-- div,1
all c:Course | some c.~teaches in Professor
-- div,1
all c : Course | some Professor.(teaches.c)
-- div,1
all c : Course | some Professor in teaches.c
-- div,1
all c: Course | some  Professor in c.teaches
-- div,1
all c : Course | some teaches.c in Professor
-- div,1
all c : Course | some p : Professor | p -> c
-- div,1
all  t:Professor, c:Course | some c.teaches.t
-- div,1
all c:Course, p:Person | some p->c in teaches
-- div,1
all c:Course | some c.(~teaches) in Professor
-- div,1
all  t:Professor, c:Course | some t.teaches.c
-- div,1
all p : Person, c : Course| some p.teaches.~c
-- div,1
all c : Course | c implies not lone Professor
-- div,1
all p : Person, c : Course| c in p.teaches.~c
-- div,1
all c: Course, p: Person | c implies p.teaches
-- div,1
all c : Course | some p : Professor | p.teaches
-- div,1
all p : Professor | some p.~(Professor<:Course)
-- div,2
all p : Person, c : Course| some c in p.teaches
-- div,2
all c: Course, p: Person | some p->c in teaches
-- div,1
all c : Course, p : Professor | some p.teaches.c
-- div,1
all c: Course, p: Person | some(p->c in teaches)
-- div,1
all t : Professor | some c : Course| t implies c
-- div,1
all c : Course, p : Professor | lone p.teaches.c
-- div,1
all c : Course | some p : Professor | c implies p
-- div,2
all c : Course | c implies some Professor.teaches
-- div,1
all c:Course | Person.Professor in c.grades.Grade
-- div,2
all p : Person, c : Course| c not in p.teaches.~c
-- div,1
all c : Course | some p : Professor | p.teaches.c
-- div,1
all c : Course | some t : Professor | t.teaches.c
-- div,1
all p : Professor | some p in p.~(Person<:Course)
-- div,1
all c:Course, p:Professor | some (p->c in teaches)
-- div,1
all c : Course | c implies not lone Professor -> c
-- div,1
all p : Professor, c : Course | some (p.teaches.c)
-- div,1
all c : Course | some (Person - Student).teaches.c
-- div,1
all p : Person, c : Course| c not in p.(teaches.~c)
-- div,1
all c : Course, p : Professor | some c in p.teaches
-- div,2
all c:Course | no (Person-Student) in c.grades.Grade
-- div,2
all c : Course | some c in (Person - Student).teachs
-- div,1
all p : Professor | some p in p.~(Professor<:Course)
-- div,3
all c: Course, p: Person | c implies (p & Professor)
-- div,1
all c : Course | some c in (Person - Student).teaches
-- div,1
all c : Course, p : Professor | some p -> c in teaches
-- div,1
all p : Person , c : Course | c implies p in Professor
-- div,1
all t : Professor | some c : Course| t -> c in t.teaches
-- div,1
all c:Course |some p:Person | p->c implies p in Professor
-- div,1
all c:Course, p:Person | some teaches.Course in Professor
-- div,1
all c : Course | not lone p : Professor | c -> p & teaches
-- div,1
all c : Course, p : Professor | some c.~(Professor<:Course)
-- div,1
all c:Course, p:Person |  p.teaches->c implies p in Professor
-- div,1
all c : Course | not lone p : Professor | c implies p & teaches
-- div,1
all p : Person | p in Professor implies some p.~(Person<:Course)
-- div,1
all p : Person | p.~(Person<:Course) implies some p in Professor
-- div,1
all c : Course | not lone p : Professor | c implies p in teaches
-- div,1
all c: Course, p: Person | (p & Professor) implies c in p.teaches
-- div,1
all c: Course | some enrolled.c implies (some Professor.teaches.c)
-- div,1
all p : Person | p in Professor implies some p.~(Professor<:Course)
-- div,1
all c: Course | some enrolled.c implies (some teaches.c in Professor)
-- div,1
all c : Course, p : Person | p -> c in teaches => (some p in Professor)
-- div,1
all p : Professor | some p in p.~(Person<:Course) implies p in Professor
-- div,1
all c : Course, p : Person | (p -> c in teaches) implies some p in Professor
-- div,1
all p : Person, c : Course | p in c.grades.Grade~teaches implies p in Professor
-- div,1
all course: Course | all person: Professor | course implies course in person.teaches
-- div,1
all x : Course | some y : Professor | y->x in teaches
  	some Professor in teaches.Course
-- div,1
all course: Course | some professor: Professor | course implies course in professor.teaches
-- div,1
all c:Course | some p:Person | no (p & Student) implies (p & Professor) and c not in p.teaches
-- div,1
