some teaches
-- div,2
some Person.teaches
-- div,2
some teaches.Course
-- div,6
some Professor.teaches
-- div,1
Professor in enrolled.Course
-- div,1
all x: Course | some x.grades
-- div,2
all p : Person | some p.teaches
-- div,1
one s: Professor | one s.teaches
-- div,1
all c : Course | #(teaches.c) = 0
-- div,1
all s: Professor | one s.teaches
-- div,1
all s: Professor | some s.teaches
-- div,1
all x: Course | some x->Professor
-- div,1
all p: Professor | #p.teaches > 0
-- div,1
some y : Person | y in teaches.Course
-- div,1
all c: Course | one Professor.teaches
-- div,1
all c:Course | some Professor.teaches
-- div,1
all c : Course | teaches.c in Professor
-- div,1
some p : teaches.Course | p in Professor
-- div,1
all c:Course, t:Person | c in t.teaches
-- div,1
all c:Course, p:Person | c in p.teaches
-- div,4
all c : Course , p : Person | p in c.teaches
-- div,2
all p:Person, c:Course|p->c in teaches
-- div,1
all c : Course, t : Professor | t.teaches = c
-- div,1
some x:Person, c:Course| x->c in teaches
-- div,1
all c : Course, t : Professor | c in t.teaches
-- div,1
all c:Course, p:Professor | c in p.teaches
-- div,2
some x:Professor, c:Course| x->c in teaches
-- div,1
some p : teaches.Course | p in Professor-Student
-- div,1
all c: Course, p: Professor | p in c.~teaches
-- div,1
all c:Course , p:Professor| some (teaches.c & p)
-- div,1
all c : Course | some p : Professor | c in Course
-- div,1
all c : Course | all p :Person | c in p.teaches
-- div,1
all c : Course , p : (Person-Student) | p in c.teaches
-- div,1
all c : Course, p : Person - Student | c in p.teaches
-- div,1
all x : Course | all y : Professor | x in y.teaches
-- div,1
all c:Course | all p:Professor | p->c in teaches
-- div,2
all c:Course | some p:Professor | p.teaches in c
-- div,1
all c: Course| some p: Professor| p in enrolled.c
-- div,1
all x: Person - Student | all c: Course | c in x.teaches
-- div,1
all x:Course, y:Person| y->x in teaches implies y in Professor
-- div,2
all x:Course, y:Person| y->x in teaches and y in Professor
-- div,2
some x:Course, y:Person| y->x in teaches and y in Professor
-- div,1
some u:Person, c:Course| u in Professor and u->c in teaches
-- div,1
all p : Person | all c : Course | c in p.teaches implies p in Professor
-- div,1
all p:Person| all c:Course|p->c in teaches and p in Professor
-- div,1
all c:Course | some p:Person | c in p.teaches implies p in Professor
-- div,1
some u:Person| one c:Course| u in Professor and u->c in teaches
-- div,1
some p:Person| all c:Course|p->c in teaches implies p in Professor
-- div,1
all x:Course, y:Person| x in Course implies y->x in teaches and y in Professor
-- div,1
all c1 : Course | all p1,p2 : Person | c1 in p1.enrolled implies c1 in p2.teaches
-- div,1
all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies k->x in teaches
-- div,1
all x:Course| some  z:Student , y:Professor-z | z->x in enrolled implies y->x in teaches
-- div,4
all x:Course, y, z:Person| z->x in enrolled and z in Student implies y->x in teaches and y in Professor
-- div,1
all x:Course| some  z:Student , y:Professor | z->x in enrolled implies y->x in teaches and z!=y
-- div,1
all x:Course| some  z:Student , y:Professor-z | z->x in enrolled implies y->x in teaches and z!=y
-- div,1
all x:Course| one  z, y:Person | z->x in enrolled and z in Student implies y->x in teaches and y in Professor
-- div,1
all c1 : Course | all p1,p2 : Person | c1 in p1.enrolled and p1 in Student implies c1 in p2.teaches and p2 in Professor
-- div,1
all x:Course| one  z, y:Person | z->x in enrolled and z in Student implies y->x in teaches and y in Professor and z!=y
-- div,1
all x:Course| some  z, y:Person | z->x in enrolled and z in Student implies y->x in teaches and y in Professor and z!=y
-- div,1
all x:Course| some  z:Student , y:Person | z->x in enrolled and z in Student implies y->x in teaches and y in Professor and z!=y
-- div,1
