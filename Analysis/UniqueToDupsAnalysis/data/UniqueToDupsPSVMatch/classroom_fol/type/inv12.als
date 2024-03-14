no ~Groups
-- div,1
no Class.~Groups
-- div,1
no Group.~Groups
-- div,1
no Group.~Class.Groups
-- div,1
no Class.Group.~Groups
-- div,1
Teacher.Groups != none
-- div,1
Teacher in Group.~Groups
-- div,1
Teacher -> Groups != none
-- div,1
Group in Class.Groups->Teacher
-- div,1
all t:Teacher | lone t in Groups.Group
-- div,1
all t : Teacher | some c : Class | t->c
-- div,1
all c:Class,t:Teacher,g:Group | c.Groups.g
-- div,1
some g: Groups | lone t: Teacher | t.Groups
-- div,1
all t:Teacher | some g:Group |t->g in Groups
-- div,1
some g: Groups | lone t: Teacher | t.Teaches.g
-- div,1
all t:Teacher | some Class->t->Group in Groups
-- div,1
all t:Teacher | (some g:Group | t->g in Groups)
-- div,2
all c:Class,t:Teacher,g:Group | one c.Groups.t.g
-- div,1
some g: Groups | lone t: Teacher | t.Teaches in g
-- div,1
some c: Class | lone t: Teacher | t.Teaches.Groups
-- div,1
all c:Class,t:Teacher,g:Group | one t in c.Groups.g
-- div,1
all c:Class,t:Teacher,g:Group | lone t.(c.Groups.g)
-- div,1
some g: Groups | lone t: Teacher | t.Teaches.Groups
-- div,1
all c:Class,t:Teacher,g:Group | lone t in c.Groups.g
-- div,1
some g: Group | lone t: Teacher | t.Teaches in g.Groups
-- div,1
some c: Class | lone t: Teacher | t.Teaches in c.Groups
-- div,1
all t:Teacher | some c:Class,g:Group | c->t->g in Teaches
-- div,1
lone t: Teacher | some g: Group | some c: Class | c->t->g
-- div,1
all c : Class, g : Group
  		| some t : Teacher | c->t->g
-- div,1
all c:Class,g:Group |some t:Teacher | lone t in c.Groups.g
-- div,1
all c : Class, g : Group
  		| (some t : Teacher | c->t->g)
-- div,1
all t:Teacher | some c:Class,g:Group | some t->g in c.Groups
-- div,1
all t:Teacher | all c:Class |some g:Group | t->c->g in Teaches
-- div,1
all t : Teacher | some g : Groups | some (t <: g)
-- div,1
all c: Class, t : Teacher | some g : Group | c->t->g in Teaches
-- div,1
all t : Teacher | some c : Class, g : Groups | c->t->g in Groups
-- div,2
all t : Teacher, c : Class | some g : Group | c->t->g in Teaches
-- div,1
all c : Class | all t : Teacher | all g : Groups | c->t->g in Groups
-- div,1
all g : Groups | some t : Teacher | all c : Class | c->t->g in Groups
-- div,3
some c : Class | some g : Groups | all t : Teacher | c->t->g in Groups
-- div,1
some c : Class | all t : Teacher | some g : Groups | c->t->g in Groups
-- div,1
all t : Teacher | some c : Class | some g : Groups | c->t->g in Groups
-- div,2
all t:Teacher | some c:Class, g:Group, p:Person | t->c in Teaches => c->p->g
-- div,2
all t:Teacher | (some g:Group , c:Class | t->c in Teaches and c->g in Groups)
-- div,1
all t:Teacher | (some g:Group , c:Class | (t->c in Teaches) and (c->g in Groups))
-- div,3
all t:Teacher | some c:Class,p:Student,g:Group | t-c in Teaches and c-p-g in Groups
-- div,1
all t: Teacher| some x:Class | t->x in Teaches implies some g:Group | x->g in Groups
-- div,7
all t : Teacher
  		| some c : Class, s : Student, g : Groups
  			| c->s->g in Class
-- div,1
lone t : Teacher | some g : Group, p : Person | p -> g in Groups implies t->p in Tutors
-- div,1
all t : Teacher | some c : Class, g : Group, t0 : Teacher | c->t->g in Groups and t0->c
-- div,1
all t : Teacher
  		| (some c : Class, s : Student, g : Groups
  			| c->s->g in Class)
-- div,1
all t : Teacher | some p : Person, g : Group, c : Class | t->c implies c->p->g in Groups
-- div,1
all t : Teacher
  		| (some c : Class, s : Student, g : Groups
  			| c->s->g in Groups)
-- div,1
all t:Teacher | some c:Class | t->c in Teacher and some g:Group,p:Person | c->p->g in Groups
-- div,1
all t: Teacher | some c: Class | some g: Group | t->c in Teaches implies c->t->g in Groups[t]
-- div,1
(all t : Teacher | some c : Class, p : Person, g : Group | t->c in Class and c->p->g in Groups)
-- div,1
all t : Teacher, c : Class | some g : Group, p : Person | c->p in Group implies t->c in Teaches
-- div,1
all t : Teacher  | (all c : Class, g : Groups, p : Person | t -> c in Teaches)
-- div,1
all t : Teacher | some c : Class | t -> c in Teaches and some g : Group, p : Person | c -> p -> g
-- div,1
(all c : Class, t : Teacher | t->c in Class implies some g : Group, s : Student | c->s->g in Groups)
-- div,2
(all c : Class, t : Teacher | t->c in Class implies (some g : Group, s : Student | c->s->g in Groups))
-- div,1
(all t : Teacher | some c : Class | t->c in Class implies some p : Person, g : Group | c->p->g in Groups)
-- div,2
(all t : Teacher | some c : Class | t->c in Class implies some g : Group, p : Person | c->p->g in Groups)
-- div,1
(some c : Class | all t : Teacher | t->c in Class implies some g : Group, s : Student | c->s->g in Groups)
-- div,1
(all t : Teacher | some c : Class | t->c in Class implies some g : Group, s : Student | c->s->g in Groups)
-- div,1
all t : Teacher
  		| (some c : Class, p : Person, g : Groups
  			| c->p->g in Groups and t->p in Teaches)
-- div,2
all t: Teacher | some  c: Class | some g: Group | all p: Person |  t->c in Teaches implies c->p->g in Groups and c->t->g
-- div,1
