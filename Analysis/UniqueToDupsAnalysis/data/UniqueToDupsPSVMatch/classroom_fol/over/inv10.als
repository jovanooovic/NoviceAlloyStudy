some Student.Groups
-- div,1
all x : Student | x in Group
-- div,1
all c:Class | some Student.Groups
-- div,1
all c : Class, s : Student | s in c
-- div,1
all x : Class, s : Student | s in x
-- div,1
all x : Class, y : Student | y in Group
-- div,2
all c:Class | Student = c.(Groups.Group)
-- div,1
all c:Class | Student = c.Groups.Group
-- div,1
all c : Class | all s : Student | some g : Group | s in g
-- div,1
all c: Class, s: Student |
        some g: Group | c.Groups[s] = g
-- div,1
all c:Class,s:Student| one g:Group | c->s->g in Groups
-- div,1
all x:Class, p:Person| some g:Group | x->p->g in Groups
-- div,1
some g : Group | all c : Class, s : Student | c->s->g in Groups
-- div,1
all s : Student, c: Class | some g : Group | s->c->g in Groups
-- div,1
all c:Class,s:Student | some g:Group | s->c->g in Groups
-- div,2
all c : Class, s : Student | some g : Group | c->g->g in Groups
-- div,1
all p : Student | some c : Class, g : Group | c->c->g in Groups
-- div,1
all c : Class | all p : Person | one g : Group | c->p->g in Groups
-- div,1
all c : Class | all p : Person | some g : Group | c->p->g in Groups
-- div,2
(all s : Student | some g : Group | all c : Class |  c->(s->g) in Groups)
-- div,2
(all c : Class | all s : Student | some g : Group | (s->g)->c in Groups)
-- div,2
all c:Class | all s:Student | some g:Group | (s->g->c) in Groups
-- div,1
