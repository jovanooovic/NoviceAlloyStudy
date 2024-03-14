all p1, p2 : Person | some c
-- div,2
all t:Teacher | some g:Group |
-- div,2
all t: Teacher | some g: Groups |
-- div,2
all t:Teacher | some g:Group, s:Student |
-- div,3
all t:Teacher | some p->Person | t->p in Tutors
-- div,1
all t:Teacher|c:Class | lone t in c.Groups.Group
-- div,1
(all c : Class, t : Teacher | t->c in Class imples
-- div,2
all t:Teacher | some g:Group | c->(t->g) in Groups
-- div,1
all t:Teacher, some c:Class,g:Group | c->t->g in Groups
-- div,1
all t:Teacher, some g:Group, c:Class, p:Person | c->p->g
-- div,1
all t:Teacher, some c:Class,g:Groups | c->t->g in Groups
-- div,1
all t : Teacher, c : Class, g : group | c->t->g in Groups
-- div,1
all t:Teacher | some g:Group,c->Class | c->t->g in Groups
-- div,1
all c : Class,, g : Group
  		| some t : Teacher | c->t->g
-- div,1
all t:Teacher | some t:Teacher, g:Group | c->t->g in Groups
-- div,1
all t : Teacher | some g : Group, g : Group | c->p->g in Groups
-- div,1
all t : Teacher | some c : Class, p : Group | c->t->g in Groups
-- div,1
all t : Teacher | some g : Group, c : Class | c->p->g in Groups
-- div,1
all t : Teacher | some p : Person, g : group | t->p->g in Groups
-- div,1
all t:Teacher | all c:Classes |some g:Group | t->c->g in Teaches
-- div,1
all g : Groups | some t : Teacher | c : Class | c->t->g in Groups
-- div,1
all t:Teacher, some g:Group, c:Class, p:Person | c->p->g in Groups
-- div,1
all p:Person | p in Teacher implies some g:Group | t in Class.Groups.g
-- div,1
all t: Teacher , x :Class | some g : Group | x->t->g in Groups | t->g in Tutors
-- div,1
all t:Teacher | some g:Group,p:Person | c->p->g in Groups implies t->c in Teaches
-- div,1
all t:Teacher | some g:Group, some c:Class | t->c in Teaches and c->t->g in Groups
-- div,1
all t : Person | some c : Class, s : Person, g : Group | c->t->g in and t in Teacher
-- div,1
all c : Class | (some p : Person, g : Group | c->p->g in Groups) implies p in Teacher
-- div,1
all t:Teacher | some c:Class,p:Person,g:Group | c->s->g in Groups and t->c in Teaches
-- div,1
all p : Person, c : Class, all g : Group | p in Teacher implies c -> p -> g in Groups
-- div,1
all t : Teacher | (some c : Class, g : Group | t->c in Teaches) and c->t->g in Groups
-- div,1
all t: Teacher| (some x:Class | t->x in Teaches) implies some g:Group | x->g in Groups
-- div,1
all t:Teacher | some c:Class,g:Group,p:Person | t->c in Teaches and | c->p->g in Groups
-- div,1
all t: Teacher , x :Class | (some g : Group | x->t->g in Groups) implies t->g in Tutors
-- div,1
all t:Teacher | some c:Class | (some g:Group c->t->g in Groups) implies t->c in Teaches
-- div,2
all t: Teacher| (some x:Class | t->x in Teachers) implies some g:Group | t->g in Tutors
-- div,1
all t: Teacher , x :Class | (some g : Group | x->p->g in Groups) implies t->g in Tutors
-- div,1
Teaches in Teacher -> some Class | some c:Class, s:Student, g:Group | c -> s -> g in Groups
-- div,1
all t:Teacher | (some c:Class,g:Group,p:Person | c->p->g in Groups) implies t->c in Teaches
-- div,1
all t : Teacher | some c : Class, g : Group | c->t->g in Groups
-- div,5
all t:Teacher | some c:Class, p:Person, g:Group | c -> s -> g in Groups and t -> c in Teaches
-- div,1
all t:Teacher , s:Student | some g:Group , some c:Class| t->c in Teaches and c->s->g in Groups
-- div,1
all t: Teacher | all  c: Class | some g: Group | c->t->g in Groups implies and t->c in Teaches
-- div,1
all t : Teacher ! some p : Person, c : Class, g : Group | t->c in Teaches and c->p->g in Groups
-- div,1
all t : Teacher , some p : Person, c : Class, g : Group | t->c in Teaches and c->p->g in Groups
-- div,1
all t:Teacher,some c:Class | (some g:Group,p:Person | c->p->g in Groups) implies t->c in Teaches
-- div,1
all t : Teacher | (some c : Class, p : Person, g : Group | c->p->g in Groups) and t->c in Teaches
-- div,1
all g:Group, s:Student,  t:Teacher | some g:Class | ( t->c in Teaches) implies (c->s->g in Groups)
-- div,1
all t:Teacher | (some c: Class | some g: Group, s : Student | c->s->g in Groups) and t->c in Teaches
-- div,1
all t : Teacher | some c : Class, g : Group, p : Person | t -> c in Teaches and c -> s -> g in Groups
-- div,1
some t: Teacher |some g:group |some c:Class | some p:Person|(t->c) in Teaches and c->(p->g) in Groups
-- div,1
all t : Teacher | some c : Class, g : Group, p : PErso | (c -> t -> g in Groups and t -> c in Teaches)
-- div,1
(all t : Teacher | some c : Class | t->c in Class implies some p : Person, g : Group c->p->g in Groups)
-- div,1
all t : Teacher, all c : Class | t->c in Teaches implies some p : Person, g : Group | c->p->g in Groups
-- div,1
all t: Teacher |some c:Class t->c in Teaches implies (some g:Group |some p:Person | c->p->g in Groups )
-- div,1
all t: Teacher |some c:Class t->c in Teaches implies (some g:Group |some p:Person | c->(s->g) in Groups )
-- div,1
(all t : Teacher | some c : Class | t->c in Teaches implies (some p:Person, g:Group | c->s->g in Groups))
-- div,2
all t : Teacher | some c : class | t->c in Teaches implies some p : Person, g : Group | c->p->g in Groups
-- div,1
all p: Person | some c: Class | some g: Group | c->p->g in Groups implies p in Teacher and t->c in Teaches
-- div,1
all x : Class | (some p: Person, g : Group | x->p->g in Groups) implies (some t : Teacher | t->g in Tutors)
-- div,2
all p : Person | (some c : Class, g : Group | c->p->g in Groups) implies some t : Teacher | t->c in Teaches
-- div,1
all t: Teacher | all  c: Class | some g: Group | c->t->g in Groups implies p in Teacher and t->c in Teaches
-- div,1
all x : Class | (some p: Person g : Group | x->p->g in Groups) implies (lone t : Teacher | t->x in Teaches)
-- div,1
all t : Teacher | (some c : Class | t->c in Teaches) implies some p : Person, g : Group | c->p->g in Groups
-- div,1
some p : Person | (some c : Class, g : Group | c->p->g in Groups) implies all t : Teacher | t->c in Teaches
-- div,1
all t: Teacher | all  c: Class | some g: Group | c->p->g in Groups implies p in Teacher and p->c in Teaches
-- div,1
all t : Teacher | some c : Class | t->c in Teaches implies (some p : Person, g : Group) | c->p->g in Groups
-- div,1
(all t: Teacher | some c:Class | t->c in Teaches) implies (some g:Group |all p:Person | c->p->g in Groups )
-- div,1
all t : Teacher, c : Class  | t -> c in Teaches implies (some p : People, g : Group | c -> p -> g in Groups)
-- div,1
some x : Class | (some p: Person g : Group | x->p->g in Groups) implies (lone t : Teacher | t->x in Teaches)
-- div,1
all t : Teacher  | (all c : Class, g : Groups, p : Person | t -> c in Teaches) implies c -> p -> g in Groups
-- div,1
all t: Teacher implies (some c:Class | t->c in Teaches) implies (some g:Group |all p:Person | c->p->g in Groups )
-- div,2
all t: Teacher  implies (some c:Class | t->c in Teaches) implies (some g:Group |all p:Person | c->p->g in Groups )
-- div,1
some x : Class, p: Person, g : Group | x->p->g in Groups implies (lone t : Teacher | t->p in Tutors | p in Student)
-- div,1
all t : Person | some c : Class, s : Person, g : Group | c->s->g in Groups and t->c in Teaches and t in Teacher, s in Student
-- div,1
all t : Person | some c : Class, s : Person, g : Group | c->s->g in Groups and t->c in Teaches  t in Teacher and s in Student
-- div,2
all t: Teacher t in Teacher implies (some c:Class | t->c in Teaches) implies (some g:Group |all p:Person | c->p->g in Groups )
-- div,1
all t : Person | some c : Class | t->c in Teaches and (some g : Group, s : Person | c->s->g in Groups)
-- div,1
