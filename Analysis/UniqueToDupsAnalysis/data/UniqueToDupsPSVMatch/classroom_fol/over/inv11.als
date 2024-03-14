all c:Class | no c.Groups
-- div,1
all c:Class | some Groups.Person
-- div,1
all c:Class | no Person.(c.Groups)
-- div,2
all c:Class | some c.Groups.Person
-- div,3
all c:Class| some p:Person | some Groups.p
-- div,1
all c:Class | c not in Teacher.Teaches implies no c->Group
-- div,2
all c:Class | some t:Teacher | t->c in Teaches
-- div,2
all c:Class | some t:Teacher | c->t in Teaches
-- div,1
all c:Class| some p:Person | some c.Groups.p
-- div,1
all c:Class| some t:Teacher | some Groups implies c in t.Teaches
-- div,1
all c : Class | some t : Teacher | t->c not in Teaches => no c.Groups
-- div,1
all c:Class,g:Group |some t:Teacher | some c.Groups.Person
-- div,1
all c:Class| some t:Teacher | some c.Groups implies c in t.Teaches
-- div,7
all c:Class | some t:Teacher | some c.Groups implies t->c in Teaches
-- div,1
all c:Class | some t:Teacher | some c.Groups implies c in t.~Teaches
-- div,1
all c:Class | some t:Teacher | some c.Groups.Group implies c in t.Teaches
-- div,1
all c:Class|some t:Teacher | some Person.(c.Groups) implies c in t.Teaches
-- div,6
all c:Class,g:Group| some t:Teacher | some c.Groups.g implies c in t.Teaches
-- div,1
all c:Class,g:Group | some t:Teacher | some c.Groups.g implies t->c in Teaches
-- div,2
all c : Class | some t : Teacher, g : Group | c -> t -> g in Groups and t -> c in Teaches
-- div,1
all c : Class, p : Person, g : Group | p -> c in Teaches and p in Teacher and c -> p -> g in Groups
-- div,2
all c:Class, p:Person, g:Group | c->p->g in Groups implies p in Teacher and p->c in Teaches
-- div,1
all c:Class, p:Person, g:Group | c->p->g in Groups implies p in Teacher and c->p in Teaches
-- div,2
all c : Class | all g : Group | some t : Teacher | c->t->g in Groups and t->c in Teaches
-- div,1
all c : Class | all g : Group | some t : Teacher | c->t->g in Groups and t->g in Teaches
-- div,1
all c : Class, p, p1 : Person, g : Group | (p -> c not in Teaches or p not in Teacher) implies c -> p1 -> g not in Groups
-- div,2
all c:Class, p:Person, g:Group | some t:Teacher | p->g in c.Groups implies t->c in Teaches
-- div,1
all c : Class, g : Group, p : Person | some t : Teacher | c->p->g in Groups implies t->c in Teaches
-- div,4
all c:Class, p:Person, g:Group | some t:Teacher | (c->p->g in Groups) implies ( t->c in Teaches)
-- div,1
all c:Class, s:Person, g:Group | some t:Teacher | (c->s->g in Groups) implies ( t->c in Teaches)
-- div,1
all p:Person, c:Class, g:Group | (some t:Teacher | c->p->g in Groups implies t->c in Teaches)
-- div,1
all c : Class, g : Group, p : Person | some t : Teacher | c -> p -> g in Groups and t -> c in Teaches
-- div,1
all c : Class, p : Person, g : Group | some t : Teacher | (t -> c in Teaches) and (c -> p -> g in Groups)
-- div,1
all c:Class | some t:Teacher,g:Group,p:Person | c->p->g in Groups and t->c in Teaches
-- div,1
all c:Class | some s:Student,g:Group,t:Teacher | (c->s->g) in Groups and t->c in Teaches
-- div,1
all c:Class,g:Group|some t:Teacher | some c.Groups implies c->t->g in Groups and t->c in Teaches
-- div,1
all c : Class | some t : Teacher | (some p : Person, g : Group | c -> p -> g in Groups) implies t -> c in Teaches
-- div,1
all c : Class | (some p : Person, g : Group | c->p->g in Groups) implies some t :Teacher |  c->t in Teaches
-- div,2
all c:Class,g:Group|some t:Teacher | some c.Groups.g implies c->t->g in Groups and t->c in Teaches
-- div,9
(all c : Class | some s:Student, g:Group | c->s->g in Groups and some t:Teacher | t->c in Teaches)
-- div,2
all c:Class | (some s:Student,g:Group | (c->s->g in Groups)) and (some t:Teacher | t->c in Teaches)
-- div,1
all c : Class | some t : Teacher | t -> c not in Teaches implies (all p : Person, g : Group | c -> p -> g not in Groups)
-- div,1
all c : Class | some t : Teacher | t -> c not in Teaches implies not (some p : Person, g : Group | c -> p -> g in Groups)
-- div,3
all c : Class, p : Person, g : Group | some t : Teacher | (t -> c in Teaches and t not in Student) and (c -> p -> g in Groups)
-- div,1
no c:Class | no t:Teacher | some s:Student | some g:Group | (c->s->g in Groups) and (t->c in Teaches)
-- div,1
all c : Class | some t : Teacher | some s : Student | some g : Group | c->s->g in Groups and t->c in Teaches
-- div,1
(all c : Class | some p : Teacher | p -> c in Teaches) and 
		(all g : Group, c : Class, p : Person | c -> p -> g in Groups)
-- div,1
all c:Class,g:Group,p:Person |some t:Teacher| c->p->g in Groups implies c->t->g in Groups and t->c in Teaches
-- div,1
(all c : Class, p : Person | p -> c in Teaches and p in Teacher) and 
		(all g : Group, c : Class, p : Person | c -> p -> g in Groups)
-- div,1
(all c : Class, p : Person | p -> c in Teaches and p in Teacher) and 
		(all c : Class, p : Person | some g : Group | c -> p -> g in Groups)
-- div,1
