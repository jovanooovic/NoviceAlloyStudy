-- equiv pair start,1
all c:Class | one c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Class, s:Student | s->Group in c.Groups
-- div,1
all c: Class, s:Student, g:Group | c->s->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,2
all x:Class, p:Person, g:Group | x->p->g in Groups
-- div,1
all c : Class, p : Person, g : Group | c->p->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class , g:Group | all s:Student | s in Class
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some s:Student, g:Group | c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Student | some c : Class, g : Group | c->p->g in Groups
-- div,1
-- equiv pair end
