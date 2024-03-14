some Course.teaches
-- div,1
Course = Professor.teaches
-- div,1
Course in Professor.teaches
-- div,4
teaches in Person some -> one Course
-- div,1
all c: Course | one teaches.c
-- div,1
all x: Course | some x.teaches
-- div,2
all c: Course | #c.teaches > 0
-- div,1
all c : Course | (c.teaches != none)
-- div,2
all c : Course | #(teaches.c) = #(c)
-- div,1
all c:Course | c in Professor.teaches
-- div,4
all x:Course | x in Professor.teaches
-- div,2
some p : Professor | Course in p.teaches
-- div,1
all c : Course | some teaches.c & Professor
-- div,1
some p : Person | all c : Course | c in p.teaches
-- div,1
some u:Person|all c:Course|u->c in teaches
-- div,3
some x:Person|all c:Course| x->c in teaches
-- div,1
some p:Person| all c:Course|p->c in teaches
-- div,1
all c:Course | one p:Professor | p in teaches.c
-- div,1
all c : Course | one x : Professor | c in x.teaches
-- div,1
all x : Course | some y : Professor | y in teaches.x
-- div,1
all x : Course | some y : Professor | x in y.teaches
-- div,1
all x: Course | (some t: Professor | x in t.teaches)
-- div,2
all x: Course | some t:Professor | x in teaches.t
-- div,1
all x : Course | (some p : Professor | x in p.teaches)
-- div,1
all c:Course | some p:Professor | p in teaches.c
-- div,6
all c:Course | some t:Professor | c in t.teaches
-- div,9
some p: Professor | all c: Course | c in p.teaches
-- div,1
all c: Course | some x: Professor | c in x.teaches
-- div,2
all c:Course | some p:Professor | p in c.teaches
-- div,2
all c:Course | some p:Professor| c in p.teaches
-- div,65
all c : Course | some t : Professor | t in teaches.c
-- div,1
all c:Course| (some x:Professor| x->c in teaches)
-- div,3
some x:Professor|all c:Course| x->c in teaches
-- div,2
all x: Course | some p: Professor | p->x in teaches
-- div,1
some p:Professor| all c:Course|p->c in teaches
-- div,2
all c:Course | some p:Professor | p->c in teaches
-- div,6
all c1 : Course | some p1 : Professor | c1 in p1.teaches
-- div,1
all c1 : Course | some p1 : Professor | p1->c1 in teaches
-- div,1
all c : Course | some p : Professor | Course in p.teaches
-- div,1
all x: Course | some t:Person-Student | x in t.teaches
-- div,2
all c : Course | some p : Person - Student | c in p.teaches
-- div,1
all c : Course | some t : Person-Student | c in t.teaches
-- div,3
all c: univ | c in Course implies some t: Professor | t->c in teaches
-- div,1
all x: Course | some y: Person | y in Professor and x in y.teaches
-- div,2
all c: Course | some t: Person | t in Professor && c in t.teaches
-- div,4
all c : Course | some p : Person | p in teaches.c and p in Professor
-- div,1
all x:Course| one y:Person| y->x in teaches and y in Professor
-- div,2
some p:Person| all c:Course|p->c in teaches and p in Professor
-- div,2
all p:Course| some x:Person| x->p in teaches and x in Professor
-- div,1
some u:Person| all c:Course| u in Professor and u->c in teaches
-- div,1
all course : Course | some professor : Professor | professor->course in teaches
-- div,2
