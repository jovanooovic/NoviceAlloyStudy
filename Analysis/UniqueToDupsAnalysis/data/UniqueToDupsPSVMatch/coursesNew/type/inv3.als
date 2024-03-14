some Professor.Course
-- div,1
all c:Course | teaches.c
-- div,1
all c : Course | teaches.c
-- div,1
all c:Course| some Person.c
-- div,1
one s: Professor | s.teaches
-- div,1
all x: Professor | x.teaches
-- div,1
all c : Course | c in teaches
-- div,1
all c:Course| some Professor.c
-- div,1
some Professor in teaches.Course
-- div,1
some Professor in enrolled.Course
-- div,1
all c : Course | some c in teaches
-- div,1
all c:Course | c.teaches not empty
-- div,1
all c : Course | some c in Person.teaches
-- div,1
all c:Course | some c in Professor.teaches
-- div,1
all x:Course | some x in Professor.teaches
-- div,1
all c: Course | some c in Professor.teaches
-- div,2
all c : Course | some c in Professor.teaches
-- div,1
all c : Course , p : Person | some p in c.teaches
-- div,1
all c : Course , p : Person | lone p in c.teaches
-- div,1
all c : Course | some p : Professor | p.teaches.c
-- div,1
all c : Course, p : Professor | some p.teaches = c
-- div,1
all c : Course, p : Professor | some p in c.teaches
-- div,1
all x:Course| some  z:Person | some z->x in teaches
-- div,1
all c : Course, p : Professor | some c in p.teaches
-- div,2
all c : Course, t : Professor | some t in teaches.c
-- div,1
all c : Course, p : Professor | some p in teaches.c
-- div,1
all c : Course, p : Professor | some c in  p.teaches
-- div,1
all c:Course, p:Professor | c implies c in p.teaches
-- div,1
all p:Professor | all x: Course | some p in teaches.x
-- div,2
all p:Professor | all x: Course | some p in x.teaches
-- div,1
some p:Person| all c:Course|c implies p->c in teaches
-- div,1
all c : Course | all p : Professor | some p.teaches.c
-- div,1
all c: Course| some p: Professor| some p in enrolled.c
-- div,1
all c : Course | all p : Professor | some c in p.teaches
-- div,2
all x:Course, y:Person| teaches.x implies y in Professor
-- div,1
all x:Course, y:Person| y.teaches implies y->x in teaches
-- div,1
all x:Course, y:Person| x.teaches implies y->x in teaches
-- div,1
all c : Course | some p : Professor | some c in p.teaches
-- div,1
all c1: Course | some p1 : Person | some p1->c1 in teaches
-- div,1
some p:Person| all c:Course|p->c in teaches and p in teaches
-- div,1
all x:Course, y:Person| x implies y->x in teaches and y in Professor
-- div,1
all x:Course| some  z:Student , y:Professor-z | z->x in enrolled implies some y->x in teaches
-- div,1
