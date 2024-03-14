some Teaches
-- div,4
some Teaches.Class
-- div,1
some Teacher->Class
-- div,1
some Person.Teaches
-- div,1
all p:Person | p in Person
-- div,1
some c:Class | some Teaches.c
-- div,1
all p:Person | some Teaches.Class
-- div,1
some t : Teacher | t.Teaches in Class
-- div,1
some x : Class | x in Group implies x in Teacher
-- div,1
some c:Class, p:Person | p->c in Teaches
-- div,2
some p: Person, c: Class | p->c in Teaches
-- div,1
all p:Person | some c: Class |p in Person
-- div,1
some c : Class | some p : Person | p in Teacher
-- div,2
some c: Class | some p: Person | p->c in Teaches
-- div,1
some x : Person | some c : Class | x->c in Teaches
-- div,1
some c : Class, p : Person | p -> c in Teaches implies p in Teacher
-- div,4
some p:Person | p in Teacher => some c:Class | p->c in Teaches
-- div,4
