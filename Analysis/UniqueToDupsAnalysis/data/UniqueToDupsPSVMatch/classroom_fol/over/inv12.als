Teacher in Person.Teaches
-- div,1
all t: Teacher | some g : Group| t->g in Tutors
-- div,3
all t : Teacher | some g : Group | t->g in Teaches
-- div,4
all t:Teacher | (some g:Group , c:Class | t->c->g in Groups)
-- div,1
all t : Teacher | some p : Person, g : Group | t->p->g in Groups
-- div,1
all t:Teacher | some c:Class,g:Group | t->c in Teaches and t->g in c.Groups
-- div,1
all t : Teacher | some c : Class, g : Group | c->t->g in Groups and t->c in Teaches
-- div,6
all t: Teacher | some c: Class, g: Group | t->c in Teaches and c->t->g in Groups
-- div,8
all t:Teacher | some g:Group,c:Class | t->c in Teaches and c->t->g in Groups
-- div,7
all t:Teacher | some g:Group,c:Class | c->t->g in Groups and t->c in Teaches
-- div,2
all p: Teacher | some c: Class | some g: Group | c->p->g in Groups and p->c in Teaches
-- div,1
all t: Teacher | some c: Class | some g: Group | c->t->g in Groups and t->c in Teaches
-- div,1
all t: Teacher | some c: Class | some g: Group | t->c in Teaches and c->t->g in Groups
-- div,1
all t:Teacher | some g:Group, s:Student, c:Class | t->c in Teaches and s->g in c.Groups
-- div,1
all t:Teacher | some c:Class,s:Student,g:Group | t->c in Teaches and s->g in c.Groups
-- div,1
all t : Teacher | some c : Class, g : Group, p : Person | (c -> t -> g in Groups and t -> c in Teaches)
-- div,1
all t : Teacher | some c : Class, g: Group, s : Student | c->s->g in Groups and t->c in Teaches
-- div,1
all t:Teacher | some c:Class,p:Student,g:Group | t->c in Teaches and c->p->g in Groups
-- div,4
all t:Teacher | some s:Student,c:Class,g:Group | t->c in Teaches and c->s->g in Groups
-- div,1
all t:Teacher | some g:Group, s:Student, c:Class | c->s->g in Groups and t->c in Teaches
-- div,1
all t : Person | some c : Class | t->c in Teaches and (some g : Group, s : Person | c->s->g in Groups)
-- div,3
all t:Teacher | some c: Class | some g: Group, s : Student | c->s->g in Groups and t->c in Teaches
-- div,1
(all t : Teacher | some c : Class | t->c in Teaches and (some s:Student, g:Group | c->s->g in Groups))
-- div,1
all t:Teacher | some c: Class | (some g: Group, s : Student | c->s->g in Groups) and t->c in Teaches
-- div,1
all t:Teacher | some c: Class | t->c in Teaches and (some g: Group, s : Student | c->s->g in Groups)
-- div,1
all t : Person | some c : Class, s : Person, g : Group | c->s->g in Groups and t->c in Teaches and t in Teacher
-- div,1
all t : Person | some c : Class, s : Person, g : Group | c->s->g in Groups and t->c in Teaches and  s in Student
-- div,1
all t,s : Person | some c : Class, g : Group | c->s->g in Groups and t->c in Teaches and t in Teacher and s in Student
-- div,1
all t : Person | some c : Class | t->c in Teaches and (some g : Group| some s : Person | c->(s->g) in Groups)
-- div,1
all t : Person | some c : Class, s : Person, g : Group | c->t->g in Groups and t->c in Teaches and t in Teacher and s in Student
-- div,1
all t : Person | some c : Class, s : Person, g : Group | c->s->g in Groups and t->c in Teaches and t in Teacher and s in Student
-- div,4
(all t : Teacher | some c : Class | (some s : Person | some g : Group | c->s->g in Groups) and t->c in Teaches)
	and all c : Class | (some s : Person | some g : Group | c->s->g in Groups)
-- div,1
