-- equiv pair start,25
Person.teaches in Course
-- div,3
teaches.Person in Course
-- div,2
teaches in Person->Course
-- div,1
Professor.teaches in Course
-- div,1
teaches.Professor in Course
-- div,1
all c : Course | teaches.c in Person
-- div,1
all c:Course | c.teaches in Professor
-- div,1
all c:Course, p:Person | some p->c
-- div,1
all p : Professor  | no p.teaches - Course
-- div,1
all c:Course | c.teaches in (Person - Student)
-- div,1
all p : Person, c : Course| c not in p.~teaches
-- div,1
all c:Course, p:Person | lone (p.teaches & c)
-- div,1
all c:Course, p:Professor | lone (p.teaches & c)
-- div,3
all c:Course | c.teaches in (Person - Student).teaches
-- div,1
all c : Course, p : Professor | lone c.~teaches & p
-- div,1
all c : Course | lone p : Professor | c->p in teaches
-- div,1
all p : Professor, c : Course | lone (p.teaches & teaches.c)
-- div,1
all p : Person, c : Course | p in c.grades.Grade.~teaches implies p in Professor
-- div,1
all x : univ | some y : univ | y in Professor and  x in Course implies y->x in teaches
-- div,1
all x : univ | some y : univ | y in Professor and  x in Course implies y->x in teaches and not y->x in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | some teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, p: Person | some teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Course, p:Person | some teaches.Course
-- div,1
all c:Course, p:Person | some p->teaches.Course
-- div,1
all c:Course, p:Person | some teaches.Course->p
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p : Professor | some teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | some enrolled.c implies (some teaches.c)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course |some p:Person | p in c implies p in Professor
-- div,1
-- equiv pair end
