-- equiv pair start,9
all s : Student | s in Class implies some t : Teacher | t->s in Tutors
-- div,4
all s : Student | s in Class implies some t : Teacher | t->s in Tutors and t in Class
-- div,1
all s : Student | s in Class implies some t : Teacher, c : Class | t->s in Tutors and t->c in Teaches
-- div,1
all s, t : Person, c : Class | (some g : Group | c->s->g in Groups) and t->s in Teaches implies t->c in Tutors
-- div,1
all p : Person, t : Teacher, c : Class, g : Group
  		| (c->p->g in Groups and t->p in Teaches) implies t->p in Tutors
-- div,2
-- equiv pair end
-- equiv pair start,4
all c:Class,s:Student,t:Teacher | some s.(c.Groups) and t->c in Teaches implies t in s.^~Tutors
-- div,1
all s:Student,c:Class,t:Teacher | s in c.Groups.Group and t->c in Teaches implies t in s.^~Tutors
-- div,2
all c:Class,s:Student,t:Teacher,g:Group| c->s->g in Groups and c in t.Teaches implies t in s.^(~Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,60
all s:Student,c:Class,t:Teacher | s in c.Groups.Group and t->c in Teaches implies t in s.~Tutors
-- div,1
all c:Class , t:Teacher, s:Student, g:Group|(t->c in Teaches and c->s->g in Groups) implies t->s in Tutors
-- div,3
all s : Student , c : Class, g : Group, t : Teacher | c->s->g in Groups and t->c in Teaches implies t->s in Tutors
-- div,5
all t : Teacher, c : Class, s : Student, g : Group | t -> c in Teaches and c -> s -> g in Groups implies t -> s in Tutors
-- div,1
all c:Class , t:Teacher, s:Student, g:Group|(c->s->g in Groups and t->c in Teaches) implies t->s in Tutors
-- div,1
all p : Student, c : Class, g : Group, t : Teacher | (c->p->g in Groups and t->c in Teaches) implies t->p in Tutors
-- div,4
all s: Student, c: Class, t: Teacher, g: Group | c->s->g in Groups => t->c in Teaches => t->s in Tutors
-- div,2
all s : Student, c : Class, t : Teacher, g : Group | (c -> s -> g in Groups) and t -> c in Teaches implies t -> s in Tutors
-- div,3
all s : Student, c : Class, g : Group, t : Teacher | (t->c in Teaches and c->s->g in Groups) implies t->s in Tutors
-- div,1
all s : Student, t : Teacher, c : Class, g : Group
  		| (c->s->g in Groups and t->c in Teaches) implies t->s in Tutors
-- div,1
(all s:Student, g:Group, c:Class | all t:Teacher | c->s->g in Groups and t->c in Teaches implies t->s in Tutors)
-- div,1
all c:Class,s:Student,g:Group | c->s->g in Groups implies (all t:Teacher | t->c in Teaches implies t->s in Tutors)
-- div,1
all c : Class , s : Student , t : Teacher | all g : Group | 
    ((c->s->g in Groups) and (t->c in Teaches)) implies t->s in Tutors
-- div,1
all s: Student, c:Class, g:Group | (c->s->g in Groups => all t:Teacher | t->c in Teaches => t->s in Tutors)
-- div,2
all s : Student, c : Class, g : Group | all t : Teacher | (c->s->g in Groups and t->c in Teaches) implies t->s in Tutors
-- div,1
all c:Class,t:Teacher,s:Student | (some g:Group | c->s->g in Groups) and t->c in Teaches implies t->s in Tutors
-- div,1
all p:Student,c:Class,t:Teacher | (some g:Group | c->p->g in Groups) and t->c in Teaches implies t->p in Tutors
-- div,1
all t:Teacher, s:Student,c:Class | (some g:Group | c->s->g in Groups ) and t->c in Teaches implies t->s in Tutors
-- div,1
all s:Student,c:Class,t:Teacher | (some g:Group | c->s->g in Groups) and t->c in Teaches implies t->s in Tutors
-- div,13
all s : Student, c : Class, t : Teacher | t -> c in Teaches and (some g : Group | c -> s -> g in Groups) implies t -> s in Tutors
-- div,1
all s:Student,t:Teacher | (some c:Class,g:Group | c->s->g in Groups and t->c in Teaches) implies t->s in Tutors
-- div,3
all c:Class,s:Student | (some g:Group | c->s->g in Groups) implies (all t:Teacher | t->c in Teaches implies t->s in Tutors)
-- div,1
all s:Student,c:Class | all t:Teacher | (some g:Group | c->s->g in Groups) and t->c in Teaches implies t->s in Tutors
-- div,1
all s:Student,c:Class | (some g:Group | c->s->g in Groups) implies (all t:Teacher | t->c in Teaches implies t->s in Tutors)
-- div,4
no p:Student | (some c:Class,g:Group | c->p->g in Groups and (some t:Teacher | t->c in Teaches and t->p not in Tutors))
-- div,1
all s:Student | all t:Teacher | all c:Class | all g:Group | (c->(s->g) in Groups and t->c in Teaches) implies t->s in Tutors
-- div,1
all s :Student | all c:Class | (some g:Group | c->s->g in Groups) implies  (all t:Teacher| t->c in Teaches implies t->s in Tutors)
-- div,1
all s : Student | all t : Teacher | (some c : Class | (some g : Group | c->s->g in Groups) and t->c in Teaches) => t->s in Tutors
-- div,2
all s : Person, c : Class, g : Group , t : Person | c->s->g in Groups and t in Teacher and s in Student and t->c in Teaches implies t->s in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student,c:Class,t:Teacher | t->c in Teaches and one s.(c.Groups) and one t.(c.Groups) implies t in s.~Tutors
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class,s:Student,t:Teacher | some s.(c.Groups) and some t.(c.Groups) and t->c in Teaches implies t in s.^~Tutors
-- div,1
all c:Class,s:Student,t:Teacher, g:Group| some s.(c.Groups)->g and some t.(c.Groups)->g and t->c in Teaches implies t in s.^~Tutors
-- div,1
-- equiv pair end
-- equiv pair start,27
all s : Person, c : Class, g : Group, t : Teacher | c -> s -> g in Groups and t -> c in Teaches implies t -> s in Tutors
-- div,1
all c : Class, t : Teacher, s : Person, g : Group
  		| (t->c in Teaches and c->s->g in Groups) implies t->s in Tutors
-- div,1
all p : Person, c : Class, g : Group, t : Teacher | (c->p->g in Groups and t->c in Teaches) implies t->p in Tutors
-- div,1
all t : Teacher, c : Class, p : Person, g : Group | t -> c in Teaches and c -> p -> g in Groups implies t -> p in Tutors
-- div,1
all s:Person,c:Class,g:Group | (c->s->g in Groups => all t:Teacher | t->c in Teaches => t->s in Tutors)
-- div,1
all p:Person,c:Class,t:Teacher | (some g:Group | c->p->g in Groups) and t->c in Teaches implies t->p in Tutors
-- div,4
all x : Person, y : Class, v : Teacher | (some z : Group | y->x->z in Groups) and v->y in Teaches implies v->x in Tutors
-- div,5
all s : Person, c : Class, t : Teacher | ((some g : Group | c->s->g in Groups) and t->c in Teaches) implies t->s in Tutors
-- div,1
all p : Person, t: Teacher | (some c : Class, g : Group |   
  		c -> p -> g in Groups and t -> c in Teaches) implies (t -> p in Tutors)
-- div,1
all c:Class,t:Teacher,p:Person | (some g:Group | c->p->g in Groups) and t->c in Teaches implies t->p in Tutors
-- div,3
all ps : Person, t : Teacher | all c : Class, g : Group | c->ps->g in Groups and t->c in Teaches implies t->ps in Tutors
-- div,1
all c:Class,t:Teacher | all p:Person | (some g:Group | c->p->g in Groups) and t->c in Teaches implies t->p in Tutors
-- div,1
all p : Person, c : Class | (some g : Group | c->p->g in Groups) implies
  (all t : Teacher | t->c in Teaches implies t->p in Tutors)
-- div,1
all s:Person,c:Class | (some g:Group | c->s->g in Groups) implies (all t:Teacher | t->c in Teaches implies t->s in Tutors)
-- div,2
no p:Person | (some c:Class,g:Group | c->p->g in Groups and (some t:Teacher | t->c in Teaches and t->p not in Tutors))
-- div,2
all c:Class | all t:Teacher | all p:Person | (some g:Group | c->p->g in Groups) and t->c in Teaches implies t->p in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Student,c:Class | (some g:Group | c->s->g in Groups) implies (all t:Person | t->c in Teaches implies t->s in Tutors)
-- div,1
all c:Class,s:Student | (some g:Group | c->s->g in Groups) implies (all t:Person | t->c in Teaches implies t->s in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Person | some t : Person | (some c : Class | (some g : Group | c->s->g in Groups) and t->c in Teaches) => t->s in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,6
all s : Student, c : Class, g : Group | some t : Person | c->s->g in Groups and t->c in Teaches and t in Teacher implies t->s in Tutors
-- div,2
all s : Person, c : Class, g : Group | some t : Person | c->s->g in Groups and t->c in Teaches and t in Teacher and s in Student implies t->s in Tutors
-- div,2
all s : Person, c : Class, g : Group | some t : Person | c->s->g in Groups and t in Teacher and s in Student and t->c in Teaches implies t->s in Tutors
-- div,1
all s : Person , c : Class, g : Group | some t : Person | c->s->g in Groups and t->c in Teaches and s in Student and t in Teacher implies t->s in Tutors
-- div,1
-- equiv pair end
