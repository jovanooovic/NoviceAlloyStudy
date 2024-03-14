-- equiv pair start,85
all c : Class | (some c.Groups) implies (some (Teacher & c.~Teaches))
-- div,2
all c:Class | some c.Groups implies some t:Teacher | t->c in Teaches
-- div,6
all c:Class | some c.Groups.Group implies some t:Teacher | t->c in Teaches
-- div,1
all c:Class | some Person.(c.Groups) implies some t:Teacher | t->c in Teaches
-- div,4
all c:Class,g:Group | some c.Groups.g implies some t:Teacher | t->c in Teaches
-- div,5
all c: Class, p:Person, g:Group | c->p->g in Groups => some t: Teacher | t->c in Teaches
-- div,6
all c : Class, g : Group, p : Person | (c->p->g in Groups) => (some t : Teacher | t->c in Teaches)
-- div,3
all c : Class | all g : Group, p : Person | c->p->g in Groups implies some t : Teacher | t->c in Teaches
-- div,2
all c:Class | (some g:Group,s:Person | c->s->g in Groups) => some t:Teacher | t->c in Teaches
-- div,5
all x : Class | (some p: Person, g : Group | x->p->g in Groups) implies (some t : Teacher | t->x in Teaches)
-- div,3
all c : Class | (all t : Teacher | (t -> c not in Teaches)) implies (all p : Person, g : Group | c -> p -> g not in Groups)
-- div,2
all x : Class | (some y : Person, z : Group | x->y->z in Groups) implies some v : Teacher | v->x in Teaches
-- div,3
all c:Class | (some p:Person,g:Group | c->p->g in Groups) implies some t:Teacher |  t->c in Teaches
-- div,18
all c : Class | (some g:Group,p:Person | c->p->g in Groups) => some t:Teacher | t->c in Teaches
-- div,6
all c:Class | (some s:Person, g:Group | c->s->g in Groups) => 
  		some t:Teacher | t->c in Teaches
-- div,10
all c : Class, s : Person, g : Group | some t : Person | c->s->g in Groups implies t->c in Teaches and t in Teacher
-- div,1
all c:Class | (some g:Group |some p:Person | c->p->g in Groups)  implies (some t:Teacher | t->c in Teaches )
-- div,6
all c : Class | (some s : Person | some g : Group | c->s->g in Groups) => some t : Teacher | t->c in Teaches
-- div,2
-- equiv pair end
