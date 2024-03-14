Teacher.Class
-- div,2
Teaches.Class
-- div,2
Teacher -> Class
-- div,1
Class -> Teacher
-- div,1
some Class.Teacher
-- div,2
Class in Teaches.~Class
-- div,1
Teacher in Teacher.Class
-- div,1
some (Teacher in Teaches)
-- div,4
all t: Teacher | t.Teaches
-- div,1
all c:Class | c in Teaches
-- div,1
all p:Person | some p.Class
-- div,3
all p : Teacher | p.Teaches
-- div,1
some t: Teacher | t.Teaches
-- div,1
some c: Class | c in Teaches
-- div,1
all t:Teacher,c:Class | t->c
-- div,1
some p:Teacher,c:Group | p->c
-- div,1
some p:Teacher,c:Class | p->c
-- div,2
Teaches.Class.Teacher.Teaches
-- div,1
some (Teacher->Class in Teaches)
-- div,1
some Teacher in Teacher->Teaches
-- div,1
some x : Teacher  | x in Teaches
-- div,1
all x,y : Person | x->y in Class
-- div,1
all x,y : Teacher | x->y in Class
-- div,1
some x,y : Person | x->y in Class
-- div,1
some x,y : Class | x->y in Teacher
-- div,1
some (Teacher in Teacher->Teaches)
-- div,1
some c:Class| some t:Teacher | t->c
-- div,1
some (Teacher in Teaches.(~Teaches))
-- div,1
some t : Teacher | t->Group in Class
-- div,1
some c : Class | c.Teacher in Teaches
-- div,2
some c : Class | Teacher.c in Teaches
-- div,1
some c: Class | some t: Teacher | c.t
-- div,1
some t:Teacher,c:Class | t->c in Class
-- div,1
all t : Teacher | some t->Group in Class
-- div,1
some c : Class | some t : Teacher | t->c
-- div,1
some c: Class | some t: Teacher | t.Class
-- div,1
some c: Class | all t: Teacher | c->t->Group
-- div,1
some c: Class | all t: Teacher | t.Teaches.c
-- div,1
some t:Teacher | some g:Group | t->g in Group
-- div,1
all t: Teacher | some c: Class | t.c in t.Teaches
-- div,1
all x: Person, t: Class | x->t implies x in Teacher
-- div,1
all x : Class | some t : Teacher | x -> t in Groups
-- div,1
all t : Teacher | some c : Class | t -> c in Groups
-- div,1
all t : Teacher | some c : Class | c -> t in Groups
-- div,1
all x : Person | all c : Class | one x->c in Teaches
-- div,1
all t: Teacher | some c: Class | c->t in Group.Teaches
-- div,2
all t: Teacher | some c: Class | t->c in Group.Teaches
-- div,1
all t: Teacher | some c: Class | some t.Teaches in c.Groups
-- div,1
some c : Class | some p : Person | p in Teacher implies p->c
-- div,1
all t: Teacher | some c: Class | some t.Teaches and c.Groups
-- div,1
some c : Class | some p : Person | p in Teacher implies c->p
-- div,1
all t: Teacher | some c: Class | some t.Teaches and c.Groups.t
-- div,1
all t: Teacher | some p: Person | p in Teacher implies t.Teaches
-- div,1
some c : Class, t : Teacher, g : Group | some c -> t -> g in Groups
-- div,1
all t : Teacher| aaa[t]
}

pred aaa[t:Teacher]{
  some c: Class | t->c
-- div,1
some t:Person| t in Teacher and not Student => some c: Class | p->c in Teaches
-- div,1
some t:Person| t in Teacher and t not Student => some c: Class | t->c in Teaches
-- div,1
