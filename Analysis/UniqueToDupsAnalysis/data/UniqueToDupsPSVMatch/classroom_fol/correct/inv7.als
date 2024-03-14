Teacher.Teaches = Class
-- div,1
Class in Teacher.Teaches
-- div,20
all c : Class | c in Teacher.Teaches
-- div,2
all c:Class | some( c.~Teaches & Teacher)
-- div,2
all c:Class | some t:Teacher | t in Teaches.c
-- div,5
all c:Class | some t:Teacher | c in t.Teaches
-- div,1
all x: Class | some t :Teacher | t->x in Teaches
-- div,1
all y : Class | some x : Teacher | x->y in Teaches
-- div,2
all c:Class |some t:Teacher | t->c in Teaches
-- div,70
all x : Class | some y : Teacher | y->x in Teaches
-- div,1
all c : Class | some x : Teacher | x->c in Teaches
-- div,2
all c:Class | some p:Teacher | p->c in Teaches
-- div,5
all c:Class | some t:Teacher | t in c.~Teaches
-- div,5
not some c : Class | all t : Teacher | not t->c in Teaches
-- div,1
all c:Class | some p:Person | p in Teacher and p->c in Teaches
-- div,8
all c:Class | some t:Teacher | t in c.~Teaches
  	Class in Teacher.Teaches
-- div,1
