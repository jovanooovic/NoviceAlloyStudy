Class in Class.Teaches
-- div,1
Class in Teaches.Class
-- div,1
Class in Teaches.Teacher
-- div,1
Teaches in Teacher some -> Class
-- div,1
all c:Class | some c.Teaches
-- div,2
all c:Class | some t:Teacher | c->t in Teaches
-- div,2
some t:Teacher | all c:Class | t->c in Teaches
-- div,8
all x : Class | some y : Teacher | x->y in Teaches
-- div,1
some x : Teacher | all c : Class | x->c in Teaches
-- div,1
