-- equiv pair start,6
no Groups.Group
-- div,1
no Class.Groups
-- div,3
no ~(Class.Groups)
-- div,1
no Group.~(Class.Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
Group in Class.Groups.Teacher
-- div,1
-- equiv pair end
-- equiv pair start,52
Teacher in Group.~(Class.Groups)
-- div,1
all t:Teacher | some t.(Class.Groups)
-- div,2
all t:Teacher | some Groups.Group.t
-- div,2
all t : Teacher | some (t <: Class.Groups)
-- div,1
all t:Teacher | some g:Group | t in Class.Groups.g
-- div,4
all t:Teacher | some g:Group | g in t.(Class.Groups)
-- div,5
all t:Teacher | some c:Class,g:Group | t->g in c.Groups
-- div,1
all t:Teacher | some g:Group,c:Class | c->t->g in Groups
-- div,9
all x : Teacher | some y : Class, z : Group | y->x->z in Groups
-- div,1
all p : Teacher | some c : Class, g :Group | c->p->g in Groups
-- div,1
all t:Teacher | some c:Class,g:Group | c->t->g in Groups
-- div,19
all p:Person | p in Teacher implies some g:Group | p in Class.Groups.g
-- div,1
all t:Teacher | some c:Class | some g:Group | c->t->g in Groups
-- div,3
all p: Teacher | some c: Class | some g: Group | c->p->g in Groups
-- div,1
all t : Teacher
  	| some c1,c2 : Class, g1,g2 : Group | c1->t->g1 in Groups and c2->t->g2 in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
Teaches in Teacher -> some Class
-- div,1
-- equiv pair end
-- equiv pair start,13
all t:Teacher | Class->t->Group in Groups
-- div,1
all c:Class,t:Teacher,g:Group | t in c.Groups.g
-- div,2
all x : Teacher, y : Class, z : Group | y->x->z in Groups
-- div,1
all t:Teacher, g: Group, c:Class |c->t->g in Groups
-- div,1
all t:Teacher,c:Class,g:Group | c->t->g in Groups
-- div,2
all t : Teacher | all c : Class, g : Group | c -> t -> g in Groups
-- div,1
all t : Teacher, c : Class | all g : Group | c -> t -> g in Groups
-- div,4
all p : Person, c : Class, g : Group | p in Teacher implies c -> p -> g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher, c : Class | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class,t:Teacher,g:Group | one c.Groups.g
-- div,2
-- equiv pair end
-- equiv pair start,1
all c:Class,t:Teacher,g:Group | lone c.Groups.g
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher | some p:Person | t->p in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all g:Group | some t:Teacher | t in Class.Groups.g
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Teacher | some g:Group | Class->t->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,2
all c:Class,g:Group |some t:Teacher | t in c.Groups.g
-- div,1
all c : Class, g : Group
  		| some t : Teacher | c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all g:Group | some t:Teacher | t in Class.Groups.Group
-- div,1
-- equiv pair end
-- equiv pair start,18
all t:Teacher,c:Class | some g:Group | t->g in c.Groups
-- div,1
all t:Teacher,c:Class | some g:Group | c->t->g in Groups
-- div,14
all x : Teacher, y : Class | some z : Group | y->x->z in Groups
-- div,2
all t:Teacher | all c:Class | some g:Group | c->(t->g) in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Teacher, y : Class, z : Group | z->x->z in Groups
-- div,1
-- equiv pair end
-- equiv pair start,3
all t : Teacher, c : Class | some g : Group | c->t in Teaches
-- div,1
all t:Teacher, c:Class | some g:Group | c->g->t in Groups
-- div,1
all t : Teacher, c : Class | some g : Group | t -> c -> g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher, c : Class | some g : Group | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | some c : Class, g :Group | c->p->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person, c:Class | p -> c in Teaches implies p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
some t : Teacher, c : Class, g : Group | c -> t -> g in Groups
-- div,1
some t: Teacher | some c: Class | some g: Group | c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some t : Teacher, g : Group | c->t->g in Groups
-- div,1
all c:Class | some g:Group | some t:Teacher | c->(t->g) in Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
some p:Person, c:Class | p -> c in Teaches implies p in Teacher
-- div,1
some p:Person, c:Class | p -> Class in Teaches implies p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, g : Group
  		| (some t : Teacher | t in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,2
lone t: Teacher | some g: Group | some c: Class | c->t->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
all t : Teacher, g : Group | some c : Class | c -> t -> g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,4
all t:Teacher,c:Class | some g:Group | t->c in Teaches and t->g in c.Groups
-- div,1
all x : Teacher, y : Class | some z : Group | y->x->z in Groups and x->y in Teaches
-- div,1
all t:Teacher,c:Class| some g:Group | c->t->g in Groups and t->c in Teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
all x : Teacher, y : Class, z : Group | y->x->z in Groups and x->y in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,4
all p : Person | some c : Class, g : Group | c->p->g in Groups and p in Teacher
-- div,3
all t : Person | some c : Class, s : Person, g : Group | c->t->g in Groups and t in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,10
all t:Teacher | some c:Class,g:Group | t->c in Teaches implies c->t->g in Groups
-- div,4
all t: Teacher | some g: Group, c: Class | t->c in Teaches implies (c->t->g in Groups)
-- div,1
all t: Teacher | some c: Class | some g: Group | t->c in Teaches implies c->t->g in Groups
-- div,5
-- equiv pair end
-- equiv pair start,6
all t:Teacher,c:Class | some g:Group | c->t->g in Groups implies t->c in Teaches
-- div,4
all t: Teacher | all  c: Class | some g: Group | c->t->g in Groups implies t->c in Teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Person | all c : Class, g : Group | c -> p -> g in Groups and p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some p : Person, g : Group | c->p->g in Groups implies p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
all t: Teacher , x :Class | (t->x in Teaches) implies some g : Group | t->g in Tutors
-- div,1
all t: Teacher| (some x:Class | t->x in Teaches) implies some g:Group | t->g in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Person | some c: Class | some g: Group | c->p->g in Groups implies p in Teacher
-- div,2
-- equiv pair end
-- equiv pair start,2
all t:Teacher, c:Class | some g:Group, s:Student| t->c in Teaches and s->g in c.Groups
-- div,1
all t:Teacher,c:Class | some s:Student,g:Group | t->c in Teaches and s->g in c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Teacher, g:Group, c:Class, s:Student | c->s->g in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
some t: Teacher |some g:Group |some c:Class | (t->c) in Teaches and c->(t->g) in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
lone t: Teacher | some g: Group | some c: Class | t->c in Teaches and c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person, c : Class | some g : Group | p in Teacher implies c -> p -> g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
lone p: Person | some c: Class | some g: Group | c->p->g in Groups implies p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
some p: Person | some c: Class | some g: Group | c->p->g in Groups implies p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Teacher, c:Class | some g:Group, p:Person | c->p->g in Groups and t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all t: Teacher| some x:Class | t->x in Teaches implies some g:Group | x->t->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
all t: Teacher, g:Group, c:Class, s:Student | t->c in Teaches  implies c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,4
all t:Teacher , s:Student | some g:Group ,c:Class| t->c in Teaches and c->s->g in Groups
-- div,3
all t: Teacher | all s :Student|some g:Group |some c:Class | t->c in Teaches and c->(s->g) in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Teacher | all  c: Class | all g: Group | c->t->g in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all t: Teacher | all c: Class | some g: Group | t->c in Teaches implies c->t->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
all t: Teacher | lone c: Class | some g: Group | t->c in Teaches implies c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,5
all t:Teacher | some c:Class,g:Group,s:Student | c->s->g in Groups implies t->c in Teaches
-- div,3
all t: Teacher | some g:Group, c:Class, s:Student | c->s->g in Groups implies t->c in Teaches
-- div,1
all t:Teacher | some c:Class | some s:Student | some g:Group | (c->s->g in Groups) implies (t->c in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Teacher, c:Class | some g:Group, s:Student| t->c in Teaches implies s->g in c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Teacher,c:Class | some g:Group,s:Student | c->s->g in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class,t:Teacher,s:Student | some g:Group | c->s->g in Groups implies t->c in Teaches
-- div,1
all t : Teacher | all c : Class, s: Student | some g : Group | c->s->g in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,5
all t:Teacher | some g:Group, s:Student, c:Class | t->c in Teaches implies s->g in c.Groups
-- div,1
all t:Teacher | some c:Class,g:Group, s:Student | ( t->c in Teaches) implies (c->s->g in Groups)
-- div,1
all t: Teacher | some g:Group, c:Class, s:Student | t->c in Teaches  implies c->s->g in Groups
-- div,1
all t: Teacher | some  c: Class | some g: Group | some p: Student |  t->c in Teaches implies c->p->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
all t:Teacher, c:Class, s:Student | some g:Group | t->c in Teaches implies c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Teacher , g:Group | some  c:Class, s:Student | c->s->g in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,8
all t: Teacher|some c: Class | t->c in Teaches implies some s:Student, g:Group | c->s->g in Groups
-- div,8
-- equiv pair end
-- equiv pair start,3
(all t : Teacher, c : Class | t->c in Teaches implies some s:Student, g:Group | c->s->g in Groups)
-- div,2
(all t : Teacher | all c : Class | t->c in Teaches implies some s:Student, g:Group | c->s->g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all g:Group, s:Student,  t:Teacher | some c:Class | ( t->c in Teaches) implies (c->s->g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher | some c : Class, g : Group, t0 : Teacher | c->t->g in Groups and t0->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,5
all t : Teacher, c : Class | t->c in Teaches implies some p : Person, g : Group | c->p->g in Groups
-- div,5
-- equiv pair end
-- equiv pair start,2
all t: Teacher | all s :Student|some g:Group |some c:Class | t->c in Teaches and c->(t->g) in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
some x : Class, p: Person, g : Group | x->p->g in Groups implies (lone t : Teacher | t->p in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,2
some x : Class, p: Person, g : Group | x->p->g in Groups implies (lone t : Teacher | t->x in Teaches)
-- div,2
-- equiv pair end
-- equiv pair start,1
some t: Teacher |some g:Group |some c:Class | some p:Person|(t->c) in Teaches and c->(p->g) in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
some t: Teacher | all s :Student|some g:Group |some c:Class | t->c in Teaches and c->(t->g) in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
lone t : Teacher | some g : Group, p : Person, c : Class | c-> p -> g in Groups implies t->p in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,2
all t: Teacher |all c:Class | t->c in Teaches implies (some g:Group |all p:Person | c->p->g in Groups )
-- div,2
-- equiv pair end
-- equiv pair start,2
(all t : Teacher | some c : Class | t->c in Teaches implies all s:Student, g:Group | c->s->g in Groups)
-- div,2
-- equiv pair end
-- equiv pair start,7
all t: Teacher |some c:Class | t->c in Teaches implies (some g:Group |all p:Person | c->p->g in Groups )
-- div,7
-- equiv pair end
-- equiv pair start,1
all t: Teacher | all s :Student|some g:Group |some c:Class | t->c in Teaches implies c->(s->g) in Groups
-- div,1
-- equiv pair end
-- equiv pair start,3
all t : Teacher
  		| some c : Class, g: Group, s : Student  | t->s in Teaches implies c->g->s in Groups
-- div,2
all t : Teacher
  		| some c : Class, g: Group, s : Student  | t->s in Teaches implies c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Teacher, c : Class | t->c in Teaches implies some p : Person | all g : Group | c->p->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
some t: Teacher | all s :Student|some g:Group |some c:Class | c->(t->g) in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some t: Teacher | all s :Student|some g:Group |some c:Class | c->(s->g) in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Teacher |some c:Class | t->c in Teaches implies (some g:Group |all s:Student | c->s->g in Groups )
-- div,1
-- equiv pair end
-- equiv pair start,1
some t: Teacher |all c:Class | t->c in Teaches implies (some g:Group |some p:Person | c->p->g in Groups )
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, g : Group | all t1, t2 : Teacher | c->t1->g in Groups and c->t2->g in Groups implies t1=t2
-- div,1
-- equiv pair end
-- equiv pair start,2
some t: Teacher |some c:Class | t->c in Teaches implies (some g:Group |all p:Person | c->p->g in Groups )
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Person | some c: Class | some g: Group | c->p->g in Groups implies p in Teacher and p->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | (some p : Person, g : Group | c->p->g in Groups) implies all t : Teacher | t->c in Teaches
-- div,1
all t : Teacher | all c : Class | (some s : Person | some g : Group | c->s->g in Groups) => t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some c : Class | (some p : Person, g : Group | c->p->g in Groups) implies all t : Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Teacher, c : Class  | t -> c in Teaches implies (all p : Person, g : Group | c -> p -> g in Groups)
-- div,2
-- equiv pair end
-- equiv pair start,1
all x : Class | (some p: Person, g : Group | x->p->g in Groups) implies (lone t : Teacher | t->x in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
some c : Class | (some p : Person, g : Group | c->p->g in Groups) implies some t : Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all t: Teacher | some  c: Class | some g: Group | all p: Person |  t->c in Teaches implies c->p->g in Groups
-- div,2
all t: Teacher | some  c: Class | some g: Group | all p: Person |  t->c in Teaches implies c->p->g in Groups and c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
some t: Teacher | all s :Student|some g:Group |some c:Class | (t->c) in Teaches implies  c->(s->g) in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
some c:Class | some s:Student | some g:Group | (c->s->g in Groups) implies (some t:Teacher | t->c in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Teacher | some  c: Class | some g: Group | all p: Student |  t->c in Teaches implies c->p->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Teacher | some c : Class | t->c in Teaches implies some p : Person | all g : Group | c->p->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
all t:Teacher | some c:Class | t->c in Teaches implies not (some g:Group | all p:Person | c->(p->g) in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher
  		| (some c : Class, g1,g2 : Group | c->t->g1 in Groups and c->t->g2 in Groups and g1 != g2)
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : Class | (all t : Teacher | t->x in Teaches) implies (all p : Person, g : Group | x -> p -> g in Groups)
-- div,2
-- equiv pair end
-- equiv pair start,1
all x : Class | some p: Person | lone g : Group | x->p->g in Groups implies (lone t : Teacher | t->x in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
some x : Class | (all t : Teacher | t->x in Teaches) implies (all p : Person, g : Group | x -> p -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Class | (all t : Teacher | t->x in Teaches) implies (some p : Person, g : Group | x -> p -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher | some c : Class  | t -> c in Teaches implies (all p : Person, g : Group | c -> p -> g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, s : Person, g : Group | some t : Person | c->s->g in Groups implies t->c in Teaches and t in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Person | some c : Class, s : Person, g : Group | c->s->g in Groups implies t->c in Teaches and t in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Person , c : Class, s : Person, g : Group | c->s->g in Groups and t->c in Teaches and t in Teacher and s in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Teacher | some  c: Class | some g: Group | all p: Person | t->c in Teaches implies c->p->g in Groups and p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Teacher | some c:Class | some s:Student | some g:Group | (c->s->g in Groups) implies (some t:Teacher | t->c in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Person | some c : Class, s : Person, g : Group | t in Teacher and s in Student implies  c->s->g in Groups and t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2 : Person | some c : Class | some g : Group | p1->p2 in Tutors implies p1 in Teacher and p1->c in Teaches and p2->g in c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2 : Person | some c : Class | some g : Group | p1->p2 in Tutors implies p1 in Teacher and p2 in Student and p1->c in Teaches and p2->g in c.Groups
-- div,1
-- equiv pair end
