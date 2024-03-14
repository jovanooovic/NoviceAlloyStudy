-- equiv pair start,380
teaches.Course in Professor
-- div,67
teaches in Professor->Course
-- div,17
Course.~teaches in Professor
-- div,3
Professor <: teaches = teaches
-- div,1
no(Person-Professor).teaches
-- div,34
no teaches.Course-Professor
-- div,5
no Course.~teaches - Professor
-- div,3
no teaches.Course & (Person-Professor)
-- div,1
no (Person-Professor) & teaches.Course
-- div,14
all p : teaches.Course | p in Professor
-- div,2
all c:Course | teaches.c in Professor
-- div,21
all c: Course | c.~teaches in Professor
-- div,4
all x : Person - Professor | no x.teaches
-- div,1
all p : Person-Professor| no p.teaches
-- div,1
all p : Person - Professor | p.teaches = none
-- div,3
all x: Person | some x.teaches implies x in Professor
-- div,1
all p : Person | some p.teaches => p in Professor
-- div,20
all x, y : univ | x->y in teaches implies x in Professor
-- div,1
all profs: Person-Professor | #profs.teaches = 0
-- div,1
all p: Person | p in teaches.Course => p in Professor
-- div,6
all x : Person | x in teaches.Course => x in Professor
-- div,1
all p:Person-Professor, c:Course | c not in p.teaches
-- div,4
all x:Course, y:Person-Professor | y->x not in teaches
-- div,2
all x:Person-Professor, y:Course | x->y not in teaches
-- div,2
all p : Person - Professor, c : Course | not p -> c in teaches
-- div,1
all p:Person,c:Course | p in teaches.c implies p in Professor
-- div,12
all x:Person, c:Course | x in teaches.c implies x in Professor
-- div,1
all a : Person, b : Course | b in a.teaches implies a in Professor
-- div,1
all p : Person, c : Course | c in p.teaches => p in Professor
-- div,22
all c: Course, p: Person | c in p.teaches implies p in Professor
-- div,2
all x: Person, y: Course | y in x.teaches implies x in Professor
-- div,5
all p:Person, c:Course | p->c in teaches => p in Professor
-- div,29
all x : Person, y: Course | x->y in teaches implies x in Professor
-- div,1
all x: Person, c: Course | x->c in teaches implies x in Professor
-- div,1
all c:Course, p:Person | p->c in teaches implies p in Professor
-- div,8
all p:Person, c:Course | p in Professor or p->c not in teaches
-- div,1
all c: Course, p: Person | p in c.~teaches implies p in Professor
-- div,2
all p : Person, c : Course | p not in Professor implies p->c not in teaches
-- div,1
all p: Person , c: Course| p in Professor or not(p -> c in teaches)
-- div,2
all c:Course, p:Person | no (p & Professor) implies c not in p.teaches
-- div,1
all p:Person, c:Course |no(p & Professor) implies c not in p.teaches
-- div,11
all c:Course | not some p:Person-Professor | p->c in teaches
-- div,1
all p: univ | all c: Course | p->c in teaches implies p in Professor
-- div,1
all p : Person | all c : Course | p in teaches.c implies p in Professor
-- div,1
all p : Person | all c : Course | c in p.teaches => p in Professor
-- div,16
all p : Person | all t : Course | t in p.teaches implies p in Professor
-- div,1
all c : Course | all p : Person | c in p.teaches implies p in Professor
-- div,1
all p:Person|all c:Course| p->c in teaches implies p in Professor
-- div,11
all c : Course | all p : Person | p->c in teaches implies p in Professor
-- div,7
all p : Person | (some c: Course | p -> c in teaches) => (p in Professor)
-- div,3
all p:Person | all c1:Course | p->c1 in teaches implies p in Professor
-- div,1
all p1: Person | all c1: Course | p1->c1 in teaches implies p1 in Professor
-- div,8
not some p:Person | some c:Course | p not in Professor and p->c in teaches
-- div,1
all p,c : univ | p in Person and c in Course and p->c in teaches implies p in Professor
-- div,2
all p, c : univ | p in Person and p not in Professor and c in Course implies p->c not in teaches
-- div,1
all course: Course | all person: Person | course in person.teaches implies person in Professor
-- div,1
all person: Person | all course: Course | course in person.teaches implies person in Professor
-- div,2
all p : Person, c : Course | p->c in teaches => p in Professor
  	teaches.Course in Professor
-- div,1
all x: Course, y : Person-Professor | y->x not in teaches
  no (Person - Professor) & teaches.Course
-- div,3
all p : univ | p in Person and p not in Professor implies all c : univ | c in Course implies p->c not in teaches
-- div,1
all c : Course, p : Person | p->c in teaches implies p in Professor
  	all c : Course | teaches.c in Professor
-- div,1
-- equiv pair end
