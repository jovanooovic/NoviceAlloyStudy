Teacher in Teaches.Class
-- div,11
Teacher in Class.~Teaches
-- div,13
all t:Teacher | some t.Teaches
-- div,21
all t : Teacher | (#t.Teaches)>0
-- div,1
all t:Teacher | t.Teaches != none
-- div,2
all t:Teacher | some c:Class | c in t.Teaches
-- div,2
all x : Teacher | some y : Class | x->y in Teaches
-- div,5
all x: Teacher | some c: Class | x->c in Teaches
-- div,3
all t:Teacher| some x:Class| t->x in Teaches
-- div,2
all p:Teacher | some c:Class | p->c in Teaches
-- div,6
all t:Teacher|some c:Class | t->c in Teaches
-- div,63
all p:Person | p in Teacher => some c:Class | p->c in Teaches
-- div,5
all p:Teacher | some c:Class | p in Teacher implies p->c in Teaches
-- div,1
all t : Teacher | (some c : Class | teaches_class[t,c])
}

pred teaches_class[t : Teacher, c : Class]{
  	t->c in Teaches
-- div,1
