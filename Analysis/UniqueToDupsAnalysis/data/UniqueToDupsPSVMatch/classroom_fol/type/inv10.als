Student.Groups
-- div,1
some Class.Student.Groups
-- div,1
all x : Class | x in Groups
-- div,1
all x : Student | x in Groups
-- div,1
Groups in Class -> some Student
-- div,1
all c:Class, s:Student | one s.c
-- div,1
all c:Class, s : c.Group | some s
-- div,1
all c:Class, s:Student | one s.Group
-- div,1
all c:Class,s:Student | s in c.Groups
-- div,1
all c:Class,s:Student | s in c->Groups
-- div,1
all c:Class,s:Student | c->s in Groups
-- div,1
all c: Class, s:Student | c->s in Groups
-- div,1
all c : Class, s : Student | s.(c.Groups)
-- div,1
all c: Class, s: Student | s->c in Groups
-- div,1
all x : Class, y : Student | x->y in Group
-- div,1
all c : Class, s : Student | c->s in Groups
-- div,2
all c : Class, s : Student | s->c in Groups
-- div,1
all x : Class, y : Student | x->y in Groups
-- div,1
all c: Class, s: Student | c -> s in Groups
-- div,1
all c:Class, s:Student | c.s.Group in Groups
-- div,1
all c:Class, s:Student | s.Group in c.Groups
-- div,1
all c:Class | all s:Student | c->s in Groups
-- div,1
all c:Class | some g:Group | c -> g in Groups
-- div,1
all s :Student| some g:Group | s->g in Groups
-- div,1
all c:Class, s:Student | c.s->Group in Groups
-- div,1
all c : Class, s : Student | c -> s in Groups
-- div,1
all c:Class, s:Student | some c -> s in Groups
-- div,1
all c:Class,s:Student | some g:Group | c->s->g
-- div,1
all c:Class, s:Student | some g:Group | c->s->g
-- div,1
all c:Class, s : c.Groups | some s
-- div,1
all x : Class | all y : Student | x->y in Group
-- div,2
all s : Person | some g : Group | s->g in Groups
-- div,1
all s : Student | some g : Group | s->g in Groups
-- div,1
(all s : Student | some g : Group | s->g in Class)
-- div,1
(all s : Student | some g : Group | s->g in Groups)
-- div,1
all c:Class , g:Group | all s:Student | g in Groups
-- div,1
all c:Class,s:Student| one g:Group | s->g in Groups
-- div,1
(all s : Student | some g : Groups | s->g in Groups)
-- div,1
all c:Class | all s:Student , g:Group | s->g in Groups
-- div,2
all c:Class , g:Group | all s:Student | s->g in Groups
-- div,1
all c:Class | all s:Student , g:Groups | s->g in Groups
-- div,1
all c: Class, s: Student | some g: Group | s in c.Groups
-- div,1
all c:Class, s:Student | some g:Group | c->s->g in Group
-- div,1
all c:Class | some s:Student, g:Group | c->s->g in Group
-- div,1
all c : Class, s : Student | c -> (s -> Groups) in Groups
-- div,1
all c : Class, s : Student | some g : Group | c -> s -> g
-- div,1
all c : Class, s : Student| some g : Group | s->g in Groups
-- div,1
all s :Student|some g:Group | g in Class and s->g in Groups
-- div,1
all c : Class, s : Student | some g : Group | s->g in Groups
-- div,1
all p :Person| some g:Group |  p in Student and p->g in Groups
-- div,1
all c:Class,s:Student|some g:Group.Teacher | c->s->g in Groups
-- div,1
all c : Class, s : Student | some g : Group | s->g in c->Groups
-- div,1
all c:Class | all s:Student | some g:Group | (s->g->c) in Group
-- div,1
all c:Class | all s:Student | some g:Group | (c->s->g) in Group
-- div,1
all s :Student|some g:Group | g in Class implies  s->g in Groups
-- div,1
all c : Groups in Class, s : Student| some g : Group | s->g in c
-- div,1
all c:Class | all s:Student | some g:Group | c->(s->g) in Teaches
-- div,1
all c : Class, p : Person, g : Group | c->p in Groups implies p->g
-- div,1
(all c : Class | all s : Student | some g : Groups | s->g in Class)
-- div,1
(all s : Student | some g : Group | all c : Class |  c->s in Groups)
-- div,1
(all c : Class | all s : Student | some g : Groups | s->g in Groups)
-- div,3
all c:Class , g:Group | all s:Student | s in Class and s->g in Groups
-- div,1
(all c : Class | all s : Student | some g : Group | c->s->g in Class)
-- div,1
(all c : Class | all s : Student | some g : Group | (s->g)->c in Class)
-- div,1
all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups
-- div,2
all c : Class, s : Student, bg : Groups | some g : Group | s->g in c->bg
-- div,1
(all s : Student | some g : Group | all c : Class |  c->(s->g) in Class)
-- div,1
(all s : Student | some g : Group | all c : Class |  (s->g)->c in Class)
-- div,1
all c: Class, s: Student | some g: Group | c -> g in Groups implies s in g
-- div,2
all c:Class, g:Group | c -> g in Groups implies some s:Student | s in Groups
-- div,1
(all c : Class | all s : Student | some g : Group | c->(s->g in Groups) in Class)
-- div,1
(all c : Class | all s : Student | some g : Group | s->g in Groups and s->g in Class)
-- div,1
(all c : Class | all s : Student | some g : Group | some gi : Groups | gi->c in Class)
-- div,1
(all c : Class | all s : Student | some g : Group | c->(s->g) in Class implies s->g in Groups)
-- div,1
all x : Class | (some p : Person, g : Group | x->p->g in Groups) -> 
(some t : Teacher | t->x in Teaches)
-- div,2
all x : Class | (some p : Person, g : Group | x->p->g in Groups) -> ( some t : Teacher | t->x in Teaches)
-- div,1
