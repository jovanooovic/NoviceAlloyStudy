no Student.teaches.Course
-- div,1
no Course in Student.teaches
-- div,1
no (Person-Student) & teaches
-- div,1
all p : Professor | p in p.Course
-- div,1
no Person-Professor.teaches.Course
-- div,1
Person->teaches = Professor->Course
-- div,1
(Person-Student) & enrolled.teaches
-- div,1
no Course in Person-Professor.teaches
-- div,1
no (Person-Student) & enrolled.teaches
-- div,2
(Person-Student) & teaches.Course
-- div,1
teaches.Course & (Person-Professor)
-- div,1
all p : Person | p in Professor implies p.teaches
-- div,2
all p : Person | p.teaches implies p in Professor
-- div,1
all p:Person,c:Course | p->c implies p in Professor
-- div,1
all x : Person | x in enrolled.teaches => x in Professor
-- div,1
all p: Person, c: Course | p->c teaches => p in Professor
-- div,1
all p : Professor, t:teaches | p -> p in teaches
-- div,1
all p:Person, c:Course | p->c teaches implies p in Professor
-- div,4
all p : Person, c: Course| p.teaches.c implies p in Professor
-- div,1
all p: Person | p in Course.grades.Grade implies not p.teaches
-- div,1
all p : Person | some c: Course| p.teaches.c implies p in Professor
-- div,1
all p : Person | all c : Course | p->c teaches implies p in Professor
-- div,1
all p: Person, c: Course | no (p && Professor) implies c not in p.teaches
-- div,1
no Course in Student.teaches
	all p:Person-Professor, c:Course | c not in p.teaches
-- div,1
