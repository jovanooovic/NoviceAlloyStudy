Teacher in Teacher.Teaches
-- div,3
all c:Class | one Teaches.c
-- div,1
all c : Class | some c.Groups
-- div,1
all c : Class, t : Teacher | c in t.Teaches
-- div,2
all t:Teacher, c:Class | t -> c in Teaches
-- div,1
all c : Class, t : Teacher | t->c in Teaches
-- div,1
all x : Teacher | all c : Class | x->c in Teaches
-- div,1
all t : Teacher | some c : Class | t->c in Teaches
-- div,1
some c : Class | some t : Teacher | t->c in Teaches
-- div,1
not some c : Class | some t : Teacher | not t->c in Teaches
-- div,1
