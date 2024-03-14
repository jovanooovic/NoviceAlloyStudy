-- equiv pair start,2
Course = Professor
-- div,2
-- equiv pair end
-- equiv pair start,30
Course in Professor
-- div,1
teaches.Person = Course
-- div,2
Course = teaches.Course
-- div,1
Course in teaches.Course
-- div,2
Course in teaches.Person
-- div,1
all c: Course | some c.teaches
-- div,3
all c : Course | c in teaches.Person
-- div,1
all c : Course | c in teaches.Professor
-- div,1
all c: Course | no univ - c.~teaches
-- div,2
all c : Course | not lone c & (Person - Student).teaches
-- div,1
all c:Course | some p:Professor | c in teaches.p
-- div,2
all c: Course | some p: Professor | p in c.teaches
-- div,1
all x: Course | some p: Professor | x->p in teaches
-- div,1
all c: Course | some p:Professor | c->p in teaches
-- div,6
all c1 : Course | one p1 : Professor | c1->p1 in teaches
-- div,1
all c : Course | not lone p : Professor | c -> p in teaches
-- div,1
all c : Course | some p : Person- Student | p in c.teaches
-- div,1
all x: Course | some y: Person | y in Professor and x in x.teaches
-- div,1
all c : Course | some p : Professor | p->c in teaches
  	teaches.Course & Course = Course
-- div,1
-- equiv pair end
-- equiv pair start,2
some Course.teaches
-- div,1
some Professor & Course
-- div,1
-- equiv pair end
-- equiv pair start,199
Professor.teaches = Course
-- div,6
Course = Professor.teaches
-- div,1
Course in Professor.teaches
-- div,14
Professor.teaches&Course = Course
-- div,1
all c:Course | c in Professor.teaches
-- div,35
all x : Course | x in Professor.teaches
-- div,1
all c:Course | some Professor&teaches.c
-- div,4
all c: Course | some (c & Professor.teaches)
-- div,2
all course: Course | course in Professor.teaches
-- div,1
all x:Course | some y : Professor | x in y.teaches
-- div,2
all c:Course | some p:Professor | p in teaches.c
-- div,9
all a : Course | some b : Professor | a in b.teaches
-- div,1
all c: Course | some t: Professor | c in t.teaches
-- div,1
all c:Course|some p:Professor | c in p.teaches
-- div,27
all c:Course| some p:Professor | p->c in teaches
-- div,57
all x:Course | some y:Professor | y->x in teaches
-- div,8
all c:Course | some t:Professor | t->c in teaches
-- div,5
all c : Course | some p : Professor | p in c.~teaches
-- div,1
all c1: Course | some p1: Professor | p1->c1 in teaches
-- div,11
all x: Course | some y: Person | y in Professor and x in y.teaches
-- div,4
all c : Course | some p : Person | p->c in teaches and p in Professor
-- div,2
all c : Course | some p : Professor | c in Course implies p->c in teaches
-- div,1
all course: Course | some professor: Professor | course in professor.teaches
-- div,1
all c : Course | some p : Professor | p->c in teaches
  	no Professor.teaches - Course
-- div,2
all c : Course | some p : Professor | p->c in teaches
  	no Course - Professor.teaches
-- div,1
all c : Course | some p : Professor | p->c in teaches
  	Professor.teaches & Course = Course
-- div,1
-- equiv pair end
-- equiv pair start,18
teaches in Professor some->Course
-- div,15
all c:Course | some p: Professor | p -> c in teaches
  teaches in Professor some -> Course
-- div,2
all x : Course | some y : Professor | y->x in teaches
  	no (Person - Professor) & teaches.Course
-- div,1
-- equiv pair end
-- equiv pair start,11
teaches in Person one -> set Course
-- div,1
all c:Course | one teaches.c
-- div,8
all c:Course | one p:Person | p->c in teaches
-- div,2
-- equiv pair end
-- equiv pair start,8
all c:Course | one Professor&teaches.c
-- div,1
all c : Course | one p : Professor | c in p.teaches
-- div,2
all c:Course| one p: Professor | p->c in teaches
-- div,2
all c:Course | one t:Professor | t->c in teaches
-- div,1
all c1 : Course | one p1 : Professor | p1->c1 in teaches
-- div,1
all c : Course | one p : Professor | some c & p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
teaches in Professor one -> set Course
-- div,2
-- equiv pair end
-- equiv pair start,1
teaches in Professor one -> lone Course
-- div,1
-- equiv pair end
-- equiv pair start,1
teaches in Professor some -> some Course
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | some (enrolled.c & teaches.c)
-- div,1
-- equiv pair end
-- equiv pair start,7
all c : Course | c in (Person - Student).teaches
-- div,1
all c : Course | one c & (Person - Student).teaches
-- div,1
all c : Course | some c & (Person - Student).teaches
-- div,3
all c : Course | some p : Person- Student | p in teaches.c
-- div,1
all c:Course | some p:Person-Student | p->c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | some p : Student | c in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
some p : Professor |all c : Course | c in p.teaches
-- div,2
-- equiv pair end
-- equiv pair start,2
all c: Course | not lone p : Professor | p in teaches.c
-- div,1
all c: Course | not lone p : Professor | p -> c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Course| one p: Professor | p->c in teaches and p->c not in enrolled
-- div,2
-- equiv pair end
-- equiv pair start,2
all x : Course | some y : Professor | y->x in teaches
  	some Professor & teaches.Course
-- div,2
-- equiv pair end
-- equiv pair start,2
all c:Course| one p: Professor | p->c in teaches
  
  all r:Course , x: Professor | x->r not in enrolled
-- div,1
all c:Course | one p: Professor | p->c in teaches
  all c:Course | all p: Professor | p->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : univ | x in Course implies some y : univ | y in Professor and not y in Student and y->x in teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : univ | x in Course implies some y : univ | y in Professor and not y->x in enrolled and y->x in teaches
-- div,1
-- equiv pair end
