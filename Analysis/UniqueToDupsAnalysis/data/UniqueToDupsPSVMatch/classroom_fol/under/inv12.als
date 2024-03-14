no Class.Groups.Teacher
-- div,1
no Person.~(Class.Groups)
-- div,1
all c : Class, g : Group
  		| c in Class
-- div,1
all t:Teacher | some Class->t->Group
-- div,1
all t : Teacher | some c : Class | t->c in Teaches
-- div,2
all t:Teacher | all c:Class |some g:Group | t in Person
-- div,1
all t : Teacher | some c : Class, p : Person, g : Group
  		| c->p->g in Groups
-- div,1
all t:Teacher | some g:Group,c:Class | c->t->g in Groups implies t->c in Teaches
-- div,1
all t:Teacher | some c:Class,g:Group | c->t->g in Groups implies t->c in Teaches
-- div,3
all t : Teacher, c : Class | some g : Group, p : Person | p in Group implies t->c in Teaches
-- div,2
all t0, t1 : Teacher | some c : Class, g : Group | c->t0->g in Groups implies t1->c in Teaches
-- div,1
all t:Teacher | some c:Class | (some g:Group | c->t->g in Groups) implies t->c in Teaches
-- div,2
all t:Teacher | some c:Class,g:Group,p:Person | c->p->g in Groups implies t->c in Teaches
-- div,1
all t:Teacher | some c:Class, g:Group, p:Person | t->c in Teaches => c->p->g in Groups
-- div,1
all t : Teacher | some p : Person, g : Group, c : Class | t->c in Teaches implies c->p->g in Groups
-- div,1
all t : Teacher | some c : Class, p : Person, g : Group | c->p->g in Groups implies t->c in Teaches
-- div,1
(all t : Teacher | some c : Class | t->c in Teaches implies (some s:Person, g:Group | c->s->g in Groups))
-- div,1
all t : Teacher | some c : Class | t->c in Teaches implies some p : Person, g : Group | c->p->g in Groups
-- div,5
all t:Teacher | some c:Class | (some g:Group,p:Person | c->p->g in Groups) implies t->c in Teaches
-- div,1
all t : Teacher | some c : Class | (some s : Person | some g : Group | c->s->g in Groups) => t->c in Teaches
-- div,1
all t: Teacher |some c:Class| t->c in Teaches implies (some g:Group |some p:Person | c->p->g in Groups )
-- div,4
all t: Teacher | some  c: Class | some g: Group | some p: Person |  t->c in Teaches implies c->p->g in Groups
-- div,1
