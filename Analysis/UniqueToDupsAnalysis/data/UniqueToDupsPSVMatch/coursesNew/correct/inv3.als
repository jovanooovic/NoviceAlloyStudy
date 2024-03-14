Course = Person.teaches
-- div,1
teaches in Person some -> set Course
-- div,4
all c:Course| some teaches.c
-- div,44
all x: Course | some teaches.x
-- div,4
all c :Course | #teaches.c>0
-- div,5
all x : Course | #(teaches.x)>0
-- div,1
all c : Course | some (c.(~teaches))
-- div,2
all c : Course | teaches.c != none
-- div,1
no c : Course | c.~teaches=none
-- div,1
all c: Course | c in Person.teaches
-- div,1
all y: Course | #y.~teaches>0
-- div,3
all c: Course | #c.~teaches>0
-- div,4
all c : Course | c.~(teaches)!=none
-- div,1
all course : Course | course in Person.teaches
-- div,1
all c:Course | some t:Person | c in t.teaches
-- div,2
all x : Course | some y : Person | y in teaches.x
-- div,5
all c:Course |some p:Person | c in p.teaches
-- div,12
all x : Course | some y : Person | x in y.teaches
-- div,1
all x:Course| some z:Person | z->x in teaches
-- div,4
all c:Course| some u:Person| u->c in teaches
-- div,1
all c1: Course | some p1 : Person | p1->c1 in teaches
-- div,1
all c:Course | some teacher:Person | c in teacher.teaches
-- div,1
