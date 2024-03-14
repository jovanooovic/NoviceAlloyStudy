all c:Class,s:Student | some s.(c.Groups)
-- div,5
all c:Class, s:Student | some g:Group | s->g in c.Groups
-- div,5
all c : Class, t : Student | some g : Group | c -> t -> g in Groups
-- div,1
all x: Class, y : Student | some z : Group | x->y->z in Groups
-- div,2
all s : Student, c: Class | some g : Group | c->s->g in Groups
-- div,1
all x : Class , y : Student | some g : Group | x->y->g in Groups
-- div,1
all x:Class, p:Student| some g:Group | x->p->g in Groups
-- div,1
all c:Class,s:Student|some g:Group| c->s->g in Groups
-- div,108
all x : Class, s : Student | some g : Group | x->s->g in Groups
-- div,3
all c:Class| all s:Student| some g:Group | c->s->g in Groups
-- div,20
