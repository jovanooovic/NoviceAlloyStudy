-- equiv pair start,66
all t:Teacher | some t.Teaches.Groups
-- div,11
all x : Teacher | some y : Class, z : Group, v : Person | x->y in Teaches and y->v->z in Groups
-- div,4
all t:Teacher | some c:Class,p:Person,g:Group | c->p->g in Groups and t->c in Teaches
-- div,6
all t:Teacher | some g:Group, p:Person, c:Class | c->p->g in Groups and t->c in Teaches
-- div,1
all t:Teacher | some p:Person,c:Class,g:Group | t->c in Teaches and c->p->g in Groups
-- div,4
all t:Teacher | some c:Class,g:Group,p:Person | t->c in Teaches and c->p->g in Groups
-- div,8
all t : Teacher | some g : Group, c : Class, p : Person | t->c in Teaches and c->p->g in Groups
-- div,1
all t : Teacher | some c : Class, p : Person, g : Group  | t->c in Teaches and c->p->g in Groups
-- div,3
all t:Teacher | some g:Group, s:Person, c:Class | c->s->g in Groups and t->c in Teaches
-- div,1
all t:Teacher | some g:Group, c: Class, p: Person |c->p->g in Groups and t->c in Teaches
-- div,2
all t:Teacher | some c:Class,g:Group,p:Person | c->p->g in Groups and t->c in Teaches
-- div,7
all t:Teacher | some p:Person,g:Group,c:Class | c->p->g in Groups and t->c in Teaches
-- div,1
all t:Teacher | some c:Class | t->c in Teaches and (some p:Person,g:Group | c->p->g in Groups)
-- div,4
all t:Teacher | some c:Class | t->c in Teaches and some g:Group,p:Person | c->p->g in Groups
-- div,7
all t:Teacher | some c: Class | t->c in Teaches and (some g: Group, s : Person | c->s->g in Groups)
-- div,2
all t:Teacher | some c:Class | t->c in Teaches and (some g:Group | some p:Person | c->(p->g) in Groups)
-- div,3
all t : Teacher | some c : Class | (some s : Person | some g : Group | c->s->g in Groups) and t->c in Teaches
-- div,1
-- equiv pair end
