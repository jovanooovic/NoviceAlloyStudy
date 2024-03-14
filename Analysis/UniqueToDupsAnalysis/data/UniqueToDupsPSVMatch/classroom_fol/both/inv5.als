Class in Teacher
-- div,1
Teacher in Class
-- div,1
Class in Class.Teaches
-- div,1
Teacher in Teaches.Class
-- div,1
Teaches in Person some -> Class
-- div,1
Teaches in Teacher some -> Class
-- div,1
Teaches in Teacher -> some Class
-- div,1
all t: Teacher| t in Class
-- div,1
all t:Teacher | t in Group
-- div,1
all c:Class | some Teaches.c
-- div,2
all c:Class | some c.Teaches
-- div,1
all p:Person | some Teaches.p
-- div,1
all t : Teacher | some t->Group
-- div,1
all t:Teacher | some t.Teaches
-- div,3
all f : Person | #(f.Teaches) > 1
-- div,1
all t : Teacher | #(t.Teaches) > 0
-- div,1
all c:Class | c in Person.Teaches
-- div,1
all c : Class, t: Teacher | t in c
-- div,1
some c : Class | Teacher->c in Teaches
-- div,1
all p : Person | p in Teacher implies p in Group
-- div,1
all p : Person | p in Teacher implies p in Class
-- div,2
all t:Person| t in Teacher and t in Class
-- div,1
some t:Person| t in Teacher => t in Class
-- div,1
all x : Person, c : Class | x->c in Teaches
-- div,1
all t:Teacher,c:Class | t->c in Teaches
-- div,3
some c : Class, t : Teacher | some c->t->Group
-- div,1
some c : Class, t : Teacher | c->t->Group in Groups
-- div,1
all p:Person | some c:Class | c->p in Teaches
-- div,2
some c : Class | all t : Teacher | c in t.Teaches
-- div,1
all c: Class | all t: Teacher | t->c in Teaches
-- div,1
all t:Teacher | some c:Class | c in t.Teaches
-- div,1
all t : Teacher | all c : Class | t -> c in Teaches
-- div,1
all p:Person | some c: Class | p->c in Teaches
-- div,1
all t: Teacher | some c: Class | some t.Teaches
-- div,1
all x : Person | some c : Class | x->c in Teaches
-- div,1
some p: Person | all c: Class | p->c in Teaches
-- div,1
some c: Class | all p: Person | p->c in Teaches
-- div,1
all x : Teacher | some y : Class | x->y in Teaches
-- div,2
some t:Teacher | (all c:Class | t->c in Teaches)
-- div,2
all c: Class | some t: Teacher | t->c in Teaches
-- div,3
all c:Class | lone t:Teacher | t->c in Teaches
-- div,1
some c: Class | all t: Teacher | t->c in Teaches
-- div,1
some x : Teacher | all c : Class | x->c in Teaches
-- div,1
all x: Teacher | some c: Class | x->c in Teaches
-- div,1
all p:Teacher | some c:Class | p->c in Teaches
-- div,3
some x : Teacher | all y : Class | x->y in Teaches
-- div,1
some c:Class | lone t:Person | t->c in Teaches
-- div,1
all t:Teacher | some c:Class | t->c in Teaches
-- div,6
some c:Class | lone t:Teacher | t->c in Teaches
-- div,1
all x : Person, c : Class | x in Teacher and x->c in Teaches
-- div,1
all x: Person, t: Class | x->t in Teaches implies x in Teacher
-- div,1
all c : Class, p : Person | p -> c in Teaches implies p in Teacher
-- div,2
some c : Class, g : Group, t : Teacher | c -> t -> g in Groups
-- div,1
some c : Class, t : Teacher, g : Group | c->t->g in Groups
-- div,3
always (some t:Teacher | (all c:Class | t->c in Teaches))
-- div,1
some p : Person | all t : Teacher, c : Class {
    t->c in Teaches
  }
-- div,1
all x : Class | some t : Teacher, g : Group | x -> t -> g in Groups
-- div,1
all p:Person | p in Teacher and some c:Class | p->c in Teaches
-- div,1
all p:Person | some c: Class | p in Teacher implies (p->c in Teaches)
-- div,1
all t: Teacher | some p: Person | p in Teacher and some t.Teaches
-- div,1
some c : Class | some t : Teacher, g : Group | c -> t -> g in Groups
-- div,1
some c : Class | some g : Group | some t : Teacher | c -> t -> g in Groups
-- div,1
some c : Class | some t : Teacher | some g : Group | c -> t -> g in Groups
-- div,1
all t : Teacher | some c : Class | teaches_class[t,c]
}

pred teaches_class[t : Teacher, c : Class]{
  	t->c in Teaches
-- div,1
all t : Teacher | (some c : Class | teaches_class[t,c])
}

pred teaches_class[t : Teacher, c : Class]{
  	t->c in Teaches
-- div,1
