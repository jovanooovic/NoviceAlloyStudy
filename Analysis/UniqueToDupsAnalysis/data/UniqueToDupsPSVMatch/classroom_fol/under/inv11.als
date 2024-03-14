some Class.Groups implies some Teaches.Class
-- div,1
all c:Class | some c.Groups implies some Teaches.c
-- div,1
all c:Class,g:Group,t:Teacher | c->g->t in Groups implies t->c in Teaches
-- div,1
all c : Class, t : Teacher, g : Group | c->t in Teaches implies c->t->g in Groups
-- div,1
all c: Class, s:Student, g:Group | c->s->g in Groups => some t: Teacher | t->c in Teaches
-- div,11
all c:Class | (some s:Person,g:Group | (c->s->g in Groups)) implies (some t:Person | t->c in Teaches)
-- div,1
all c:Class,s:Student | all g:Group | c->s->g in Groups implies some t:Teacher | t->c in Teaches
-- div,1
all c:Class | (some s:Student,g:Group | (c->s->g in Groups)) implies (some t:Person | t->c in Teaches)
-- div,2
all c:Class | (some g: Group, s : Person | c->g->s in Groups) => some t:Teacher | t->c in Teaches
-- div,1
(all c : Class | all s:Student, g:Group | c->s->g in Groups implies some t:Teacher | t->c in Teaches)
-- div,1
all c:Class | (some g:Group,s:Student | c->s->g in Groups) => some t:Teacher | t->c in Teaches
-- div,1
all c : Class | (some g : Group, t : Teacher | c->t->g in Groups) implies some t : Teacher | t->c in Teaches
-- div,1
all c:Class | (some g: Group, s : Student | c->g->s in Groups) => some t:Teacher | t->c in Teaches
-- div,1
all c:Class | (some s:Student, g:Group | c->s->g in Groups) => 
  		some t:Teacher | t->c in Teaches
-- div,9
all c : Class, s : Student, g : Group | some t : Person | c->s->g in Groups implies t->c in Teaches and t in Teacher
-- div,3
(all c : Class | all s:Student | all g:Group | c->s->g in Groups implies some t:Teacher | t->c in Teaches)
-- div,2
all c:Class | (some g:Group | some t:Teacher | c->(t->g) in Groups) implies (some t:Teacher | t->c in Teaches)
-- div,1
all c : Class | (some s : Student | some g : Group | c->s->g in Groups) => some t : Teacher | t->c in Teaches
-- div,1
all c : Class | has_groups[c] implies (some t : Teacher | t->c in Teaches)
}

pred has_groups[c : Class]{
  	some s : Student, g : Group | c->s->g in Groups
-- div,1
