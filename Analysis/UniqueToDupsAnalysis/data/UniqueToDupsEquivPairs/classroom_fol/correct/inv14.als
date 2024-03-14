-- equiv pair start,63
all p : Person, c : Class | some p.(c.Groups) implies Teaches.c in Tutors.p
-- div,1
all s,t:Person, c:Class, g:Group | c->s->g in Groups and t->c in Teaches => t->s in Tutors
-- div,3
all c : Class, g : Group, p1, p2 : Person | (p1->c in Teaches and c->p2->g in Groups) implies (p1->p2 in Tutors)
-- div,4
all p1, p2 : Person, c : Class, g : Group | (c->p1->g in Groups and p2->c in Teaches) implies p2->p1 in Tutors
-- div,3
all c : Class , s, t : Person | all g : Group | 
    ((c->s->g in Groups) and (t->c in Teaches)) implies t->s in Tutors
-- div,1
all p, q : Person, c : Class | (some g : Group | c->p->g in Groups) and q->c in Teaches implies q->p in Tutors
-- div,1
all s, t : Person, c : Class | (some g : Group | c->s->g in Groups) and t->c in Teaches implies t->s in Tutors
-- div,1
all x, v : Person, y : Class | (some z : Group | y->x->z in Groups) and v->y in Teaches implies v->x in Tutors
-- div,3
all s:Person, t:Person, c:Class, g:Group | c->s->g in Groups and t->c in Teaches => t->s in Tutors
-- div,1
all s : Person, c : Class, t : Person, g : Group | (c -> s -> g in Groups) and t -> c in Teaches implies t -> s in Tutors
-- div,2
all s:Person, c:Class,g:Group, t:Person | c->s->g in Groups and t->c in Teaches => t->s in Tutors
-- div,2
all s: Person, c: Class, t: Person, g: Group | c->s->g in Groups => (t->c in Teaches => t->s in Tutors)
-- div,2
all p1, p2 : Person, c : Class | ((some g : Group | c -> p2 -> g in Groups) and 
		p1 -> c in Teaches) implies p1 -> p2 in Tutors
-- div,1
all p1, p2 : Person, c : Class | (some g : Group | c->p1->g in Groups) implies p2->c in Teaches implies p2->p1 in Tutors
-- div,3
all p1, p2 : Person, c : Class | (some g : Group | c -> p2 -> g in Groups and 
		p1 -> c in Teaches) implies p1 -> p2 in Tutors
-- div,1
all s,t:Person | all c:Class | all g:Group | (c->(s->g) in Groups and t->c in Teaches) implies t->s in Tutors
-- div,3
all s:Person,c:Class,g:Group | (c->s->g in Groups => all t:Person | t->c in Teaches => t->s in Tutors)
-- div,5
all s : Person, g : Group, c : Class | (c->s->g in Groups) => (all t : Person | (t->c in Teaches) => (t->s in Tutors))
-- div,1
all s:Person,c:Class,t:Person | (some g:Group | c->s->g in Groups) and t->c in Teaches implies t->s in Tutors
-- div,4
all ps : Person, t :  Person | all c : Class, g : Group | c->ps->g in Groups and t->c in Teaches implies t->ps in Tutors
-- div,2
all p : Person, c : Class | (some g : Group | c->p->g in Groups) implies (all t : Person | t->c in Teaches implies t->p in Tutors)
-- div,3
all c:Class,s:Person | (some g:Group | c->s->g in Groups) implies (all t:Person | t->c in Teaches implies t->s in Tutors)
-- div,2
all s:Person,c:Class | (some g:Group | c->s->g in Groups) implies (all t:Person | t->c in Teaches implies t->s in Tutors)
-- div,13
all s : Person | all t : Person | all c : Class | all g : Group | c->s->g in Groups and t->c in Teaches => t->s in Tutors
-- div,1
-- equiv pair end
