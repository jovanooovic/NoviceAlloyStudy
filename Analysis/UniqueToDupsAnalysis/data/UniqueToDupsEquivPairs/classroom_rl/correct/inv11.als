-- equiv pair start,83
no (Class - Teacher.Teaches).Groups
-- div,2
Groups.Group.Person in Teacher.Teaches
-- div,6
all c: Class | some c.Groups => c in Teacher.Teaches
-- div,4
all c : Class | no (Teacher <: Teaches).c => no c.Groups
-- div,6
all c: Class | no (c.Groups) or some Teacher & Teaches.c
-- div,2
all c : Class | no (c.~Teaches :> Teacher) implies no c.Groups
-- div,2
all c:Class|some c.Groups implies some Teaches.c & Teacher
-- div,16
all c : Class | some c.Groups implies some Teacher & Teaches.c
-- div,11
all c: Class | some c.Groups => some Teacher <: Teaches.c
-- div,5
all c : Class | some c.Groups implies some (Teacher<:Teaches).c
-- div,4
all c: Class | some c.Groups implies some Teaches.c :> Teacher
-- div,1
all c: Class | some c.Groups implies some c.~Teaches & Teacher
-- div,7
all c : Class | some c <: Groups implies some Teacher & Teaches.c
-- div,2
all c: Class | no Person.(c.Groups) or some (Teacher & Teaches.c)
-- div,3
all c: Class | some Person.(c.Groups) implies some (Teacher & Teaches.c)
-- div,1
all c : Class { some c.Groups implies some t : Teacher | c in t.Teaches }
-- div,1
all c: Class | some c.Groups implies (some t: Teacher | t in Teaches.c)
-- div,1
all c : Class | some c.Groups => (some t : Teacher | t->c in Teaches)
-- div,1
all c: Class | some Person.(c.Groups) implies some t:Teacher | t in Teaches.c
-- div,1
all c:Class | some Person.(c.Groups) implies some t:Teacher | t->c in Teaches
-- div,1
all c:Class, s:Person, g:Group | c->s->g in Groups implies (some t:Teacher | t->c in Teaches)
-- div,2
all c: Class, g: Group, p: Person |
  		(c->p->g in Groups) => (some t : Teacher | t->c in Teaches)
-- div,1
all c:Class | (some g:Group |some p:Person | c->p->g in Groups)   implies some (Teaches.c & Teacher)
-- div,1
all x : Class | (some y : Person, z : Group | x->y->z in Groups) implies some v : Teacher | v->x in Teaches
-- div,1
all c : Class | (some p : Person, g : Group | c -> p -> g in Groups) implies (some t : Teacher | t -> c in Teaches)
-- div,1
-- equiv pair end
