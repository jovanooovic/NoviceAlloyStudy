all c : Class
-- div,1
all c:Class, s:Student |
-- div,1
all c:Class | some s.Groups
-- div,1
all s:Students, c:Class | s.c.Groups
-- div,1
all c:Class,s:Student | s in c.groups
-- div,1
all c:Class | Student = c.Groups.group
-- div,1
all x : Class, y in Student | y in Group
-- div,3
all s:Students, c:Class | some s.c.Groups
-- div,1
all c : Class | s : Student | s.(c.Groups)
-- div,1
all c : Class | S : Student | s.(c.Groups)
-- div,1
all c:Class, S:Student | some s.(c.Groups)
-- div,1
All c : Class | S : Student | s.(c.Groups)
-- div,2
all c : Class | s : Student | some s.(c.Groups)
-- div,1
all c:Class , g:Group | all s:Student | g:Groups
-- div,1
all x : Class | all y : Students | x->y in Group
-- div,1
all c:Class, s:Student | (some g:Group | c->s->g
-- div,1
all x : Class, s : Student | (some g : Group | x-
-- div,3
(all c : Class | some g : Groups | s->g in Groups)
-- div,1
all c:Class,s:Student,some g:Group | c->s->g in Groups
-- div,1
all c:Class s:Student| some g:Group | c->s->g in Groups
-- div,1
all c:Class,s:Student| sone g:Group | c->s->g in Groups
-- div,1
all c:Class.s:Student | some g:Group | c->s->g in Groups
-- div,1
all c:Class, s:Student | (some g:Group | c->s->g in Groups
-- div,1
all s :Students|some g:Group | g in Class and s->g in Groups
-- div,1
all x : Class , y : Student | some g : Group | x,y,c in Groups
-- div,1
all c : Class, s : Student, some g : Group | c->s->g in Groups
-- div,1
all c : Class, s : Student | some g : Group | c->p->g in Groups
-- div,1
all c : Class, s : Student | some g : Group | c->g->p in Groups
-- div,1
all x : Class, s : Student | some g : Group | x->p->g in Groups
-- div,1
all x : Class , y : Student | some g : Group | x->y->c in Groups
-- div,1
all c:Class | all s :Student| some g:Group |  c-> (p->g)in Groups
-- div,1
all c : Class, all s : Student, some g : Group | c->s->g in Groups
-- div,1
all c : Class, all s : Student | some g : Group | c->s->g in Groups
-- div,1
all c : Class | all s : Student | some g : Group | c->p->g in Groups
-- div,1
(all s : Student | some g : Group | all c : Class |  c->s) in Groups)
-- div,1
all c : Class, s : Student
  		| some g : group
  			| c->s->g in Groups
-- div,2
all c:Class ,g:Group | (all p:Person | p is Student and (p->g) in Groups
-- div,1
all c:Class ,g:Group | (all p:Person | p is Student and (p->g) in Groups )
-- div,1
all c:Class | (all p:Person | p is Student and (some g:Group | (p->g) in Groups ))
-- div,2
all c:Class,s:Student|some g:Group| c->s->g in Groups
-- div,2
all x : Class | (some p : Person, g : Group x->p->g in Groups) -> ( some t : Teacher | t->x in Teaches)
-- div,2
all x : Class | (some p : Person, g : Group  x->p->g in Groups) -> 
(some t : Teacher | t->x in Teaches)
-- div,3
