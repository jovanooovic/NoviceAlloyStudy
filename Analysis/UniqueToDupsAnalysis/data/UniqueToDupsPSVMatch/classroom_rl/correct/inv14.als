all c: Class | Teaches.c->c.Groups.Group in Tutors
-- div,2
all p : Person, c : Class | some p.(c.Groups) implies Teaches.c in Tutors.p
-- div,6
all s : Person, c : Class | some s.(c.Groups) implies (Teaches.c in Tutors.s)
-- div,2
all c : Class, p : Person | some p.(c.Groups) implies Teaches.c in Tutors.p
-- div,3
all c : Class, p : Person | some p.(c.Groups) implies Teaches.c->p in Tutors
-- div,1
all c : Class, p : Person | p in (c.Groups).Group implies Teaches.c in Tutors.p
-- div,1
all c: Class, s:Person| s in c.Groups.Group implies Teaches.c in Tutors.s
-- div,1
all c:Class,p:Person | p in (c.Groups).Group implies Teaches.c -> p in Tutors
-- div,1
all c : Class, s : c.Groups.Group | (all t : Teaches.c | s in t.Tutors)
-- div,1
all c : Class, s : c.Groups.Group | all t : Teaches.c | t->s in Tutors
-- div,1
all p1, p2 : Person, c : Class | some p2.(c.Groups) and c in p1.Teaches implies p2 in p1.Tutors
-- div,2
all p1, p2 : Person, c : Class | some p2.(c.Groups) and c in p1.Teaches implies p1 -> p2 in Tutors
-- div,1
all s,t : Person, c : Class | some s.(c.Groups) and some (t<:Teaches).c implies some (t<:Tutors).s
-- div,1
all c : Class, g : Group, p1, p2 : Person | (p1->c in Teaches and c->p2->g in Groups) implies (p1->p2 in Tutors)
-- div,2
all x, v : Person, y : Class | (some z : Group | y->x->z in Groups) and v->y in Teaches implies v->x in Tutors
-- div,1
all p1, p2 : Person, c : Class | (some g : Group | c -> p2 -> g in Groups and p1 -> c in Teaches) implies p1 -> p2 in Tutors
-- div,5
all s:Person,c:Class, g:Group  | (c->s->g in Groups => all t:Person | t->c in Teaches => t->s in Tutors)
-- div,2
all p:Person, c:Class| (some g :Group |c->p->g in Groups) implies  all t:Person| t->c in Teaches 
														   implies t->p in Tutors
-- div,1
all s:Person, c:Class| (some g :Group |c->s->g in Groups) implies  (all t:Person| t->c in Teaches implies t->s in Tutors)
-- div,5
