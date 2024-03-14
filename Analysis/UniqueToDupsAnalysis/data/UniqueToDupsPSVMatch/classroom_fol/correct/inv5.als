some Teacher.Teaches
-- div,34
some c : Class |  c in Teacher.Teaches
-- div,1
some c:Class,t:Teacher | c in t.Teaches
-- div,5
some p:Teacher,c:Class | p->c in Teaches
-- div,2
some x: Class, t:Teacher| t->x in Teaches
-- div,1
some x : Teacher, y : Class | x->y in Teaches
-- div,5
some t:Teacher,c:Class | t->c in Teaches
-- div,22
some c:Class, t:Teacher | t->c in Teaches
-- div,19
some c:Class, p:Teacher | p -> c in Teaches
-- div,4
some c : Class | some t : Teacher | c in t.Teaches
-- div,1
some t:Teacher | some c:Class | t->c in Teaches
-- div,15
some c:Class | some t:Teacher | t->c in Teaches
-- div,9
some p:Teacher | some c:Class | p->c in Teaches
-- div,3
some c : Class | some x : Teacher | x->c in Teaches
-- div,1
some x: Teacher | some c: Class | x->c in Teaches
-- div,3
some c:Class, p:Person | p in Teacher and c in p.Teaches
-- div,2
some p : Person, c : Class | p in Teacher and p -> c in Teaches
-- div,1
some c:Class, p:Person | p->c in Teaches and p in Teacher
-- div,3
some p : Person | some t : Teacher, c : Class {
    t->c in Teaches
  }
-- div,1
some t:Person| t in Teacher and some c: Class | t->c in Teaches
-- div,3
some p:Person | p in Teacher and some c:Class | p->c in Teaches
-- div,7
some c : Class | (some t : Teacher | teaches_class[t,c])
}

pred teaches_class[t : Teacher, c : Class]{
  	t->c in Teaches
-- div,1
