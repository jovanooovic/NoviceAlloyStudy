-- equiv pair start,1
Person.^~Tutors in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,9
all p : Person | p in Teacher
-- div,1
all p1 : Person
  		| p1 in Teacher
-- div,1
all p : Person | Person in Teacher
-- div,1
all p1,p2,p3 : Person
  		| p1 in Teacher or
  		  (p2->p1 in Tutors and p2 in Teacher) or 
  		  (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher)
-- div,1
all p1,p2,p3 : Person
  		| p1 in Teacher or
  		( p2 in Teacher and p2->p1 in Tutors) or
  		( p3 in Teacher and p3->p2 in Tutors and p2->p1 in Tutors)
-- div,3
all p1 : Person, p2 : Person, p3 : Person
  		| p1 in Teacher or
  		( p2 in Teacher and p2->p1 in Tutors) or
  		( p3 in Teacher and p3->p2 in Tutors and p2->p1 in Tutors)
-- div,1
all p,q,r : Person | (p->q in Tutors implies p in Teacher or q->p in Tutors or q->r in Tutors or r->q in Tutors 
      					  or r->p in Tutors or p->r in Tutors)
  						  implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,2
some t:Teacher | t in Person.Tutors
-- div,1
some t:Teacher | t in Person.^Tutors
-- div,1
-- equiv pair end
-- equiv pair start,2
some t:Teacher| t in Person.*Tutors
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Person | Teacher in p.^Tutors
-- div,1
-- equiv pair end
-- equiv pair start,3
all p: Person | Teacher in p.*Tutors
-- div,3
-- equiv pair end
-- equiv pair start,4
Person.Tutors.Tutors.Tutors in Teacher
-- div,3
all p:Person | p.Tutors.Tutors.Tutors in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (Person.^Tutors in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
Tutors.Tutors.Tutors.Person in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,5
all p:Person | some t:Teacher | t in p.*Tutors
-- div,3
all p : Person | some t : Teacher | p=t || t in (p.Tutors) || t in p.Tutors.Tutors
-- div,1
all p:Person | some t :Teacher | t=p or t in p.Tutors or t in p.Tutors.Tutors or t in p.Tutors.Tutors.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person |some t:Teacher | p in p.^~Tutors
-- div,1
-- equiv pair end
-- equiv pair start,12
all p:Person | some t:Teacher | t in p.^Tutors
-- div,9
all p:Person | some t :Teacher | t in p.Tutors or t in p.Tutors.Tutors or t in p.Tutors.Tutors.Tutors
-- div,3
-- equiv pair end
-- equiv pair start,1
all s:Student | some t:Teacher | t in s.^Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
some p:Person | eventually (p.*Tutors in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | some t :Teacher-p | t in p.^Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
some p:Person | eventually (p.^Tutors in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | some t : Teacher | t in p.Tutors.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all t, t1 : Teacher | t in t1.Tutors || t in t1.Tutors.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,2
some p1, p2, p3 : Person | p1 != p2 and p2 != p3 and p3 != p1
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Person | some t : Teacher | t in p.Tutors.Tutors.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2: Person, t: Teacher | p2->p1 in Tutors and t->p2 in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | some p2 : Person | p -> p2 in Tutors and p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,9
all p:Person | some t :Teacher | t in p.Tutors or t in p.Tutors.Tutors
-- div,4
all p : Person | some t : Teacher | t in (p.Tutors :> Teacher) || t in (p.Tutors.Tutors :> Teacher)
-- div,1
all p1 : Person | some p2, p3 : Person | (p1->p2 in Tutors) and (p2->p3 in Tutors) and ((p2 in Teacher) or (p3 in Teacher))
-- div,1
all p1 : Person |
  	(some t : Teacher | p1->t in Tutors) or
	(some p2 : Person, t : Teacher | (p1->p2 in Tutors) and (p2->t in Tutors))
-- div,2
all p1 : Person | some p2, p3 : Person | 
  ((p1->p2 in Tutors) and (p2 in Teacher)) or
  ((p1->p2 in Tutors) and (p2->p3 in Tutors) and (p3 in Teacher))
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Teacher | some t : Teacher | t in p.Tutors || t in p.Tutors.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,9
all x, y, z : Person | x->y in Tutors and y->z in Tutors implies z in Teacher
-- div,2
all p1,p2,p3 : Person | p1->p2 in Tutors and p2->p3 in Tutors => p3 in Teacher
-- div,5
(all p:Person | p in Teacher) or (all p1,p2:Person | p1->p2 in Tutors implies p2 in Teacher) or (all p1, p2, p3:Person | p1->p2 in Tutors and p2->p3 in Tutors implies p3 in Teacher)
-- div,2
-- equiv pair end
-- equiv pair start,7
some x, y, z : Person | x->y in Tutors and y->z in Tutors implies z in Teacher
-- div,1
some p,q,r : Person | p->q in Tutors and q->r in Tutors implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
some p1, p2:Person | p1 -> p2 in Tutors implies (p1 in Teacher or  p2 in Teacher or (some p3:Person | p2 -> p3 in Tutors implies p3 in Teacher))
-- div,2
some p,q,r : Person | (p->q in Tutors or q->p in Tutors) and (q->r in Tutors and r->q in Tutors) implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
some p,q,r : Person | ((p->q in Tutors and q->r in Tutors) or (q->r in Tutors and r->p in Tutors) or (p->r in Tutors and r->p in Tutors)) implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
some p,q,r : Person | ((p->q in Tutors and q->r in Tutors) or (q->r in Tutors and r->p in Tutors) or (p->r in Tutors and r->q in Tutors)) implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2,p3:Person | (p1 in Teacher implies (p2 in  Student and p3 in  Student) )
-- div,1
-- equiv pair end
-- equiv pair start,2
some p1, p2, p3 : Person | p1 -> p2 in Tutors and p2 -> p3 in Tutors and p1 in Teacher
-- div,2
-- equiv pair end
-- equiv pair start,1
all p1,p2,p3:Person | p1 in Teacher implies (p1->p2 in Tutors) implies (p2 ->p3 in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,5
some Tutors 
  all t1, t2: Person | (t1->t2 in Tutors) => (t1 in Teacher or t2 in Teacher )
-- div,1
some Tutors 
  all t1, t2, t3 : Person | (t1->t2 in Tutors) => (t1 in Teacher or t2 in Teacher )
-- div,1
some Tutors
  all t1, t2, t3 : Person | (t1->t2 in Tutors) => (t1 in Teacher or t2 in Teacher or (t2->t3 in Tutors and t3 in Teacher))
-- div,3
-- equiv pair end
-- equiv pair start,2
all x, y, z : Person | x->y in Tutors and y->z in Tutors and z->x in Tutors implies z in Teacher
-- div,1
all x, y, z : Person | x->y in Tutors and y->z in Tutors and z->x in Tutors implies x in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1 : Person | p1 in Teacher or
  		(some p2 : Person | (p2->p1 in Tutors and p2 in Teacher))
-- div,2
-- equiv pair end
-- equiv pair start,4
all p1,p2,p3 : Person | p1->p2 in Tutors and p2->p3 in Tutors => (p3 in Teacher or p2 in Teacher)
-- div,2
all p1, p2, p3 : Person | (p1 -> p2 in Tutors implies p2 in Teacher) or (p1 -> p2 in Tutors and p2 -> p3 in Tutors implies p3 in Teacher)
-- div,2
-- equiv pair end
-- equiv pair start,6
all p,q,r : Person | p->q in Tutors and q->r in Tutors implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
all p1,p2,p3 : Person | p1->p2 in Tutors and p2->p3 in Tutors => (p1 in Teacher or p3 in Teacher or p2 in Teacher)
-- div,1
all p1, p2:Person | p1 -> p2 in Tutors implies (p1 in Teacher or  p2 in Teacher or (all p3:Person | p2 -> p3 in Tutors implies p3 in Teacher))
-- div,1
all p1,p2,p3:Person | (p1 in Teacher) or (p1->p2 in Tutors implies p2 in Teacher) or (p1->p2 in Tutors and p2->p3 in Tutors implies p3 in Teacher)
-- div,1
all p1, p2, p3 : Person | (p1 -> p2 in Tutors implies p2 in Teacher) or (p1 -> p2 in Tutors and p2 -> p3 in Tutors implies p3 in Teacher)
		or p1 in Teacher
-- div,2
-- equiv pair end
-- equiv pair start,1
all x, y, z : Person | x->y in Tutors and y->z in Tutors and x != y and x != z and y != z implies z in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
some x, y, z : Person | x->y in Tutors and y->z in Tutors and x != y and x != z and y != z implies z in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2:Person | (p1->p2 in Tutors and p2 in Teacher) or (some p3: Person | p2->p3 in Tutors and p3 in Teacher)
-- div,1
all p1,p2:Person | (p1->p2 in Tutors and p2 in Teacher) or (all p3: Person | (p2->p3 in Tutors and p3 in Teacher) or (some p4:Person | p3->p4 in Tutors and p4 in Teacher ))
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2,p3:Person | (p1 in Teacher implies (p1->p2 in Tutors) implies (p2 ->p3 in Tutors) ) and p1 not in Student
-- div,1
-- equiv pair end
-- equiv pair start,9
all t1, t2, t3 : Person | (t1->t2 in Tutors) => (t1 in Teacher or t2 in Teacher or (t2->t3 in Tutors and t3 in Teacher))
-- div,2
some Tutors =>
  (all t1, t2, t3 : Person | (t1->t2 in Tutors) => (t1 in Teacher or t2 in Teacher or (t2->t3 in Tutors and t3 in Teacher)))
-- div,1
all p,q,r : Person | (p->q in Tutors or q->p in Tutors or q->r in Tutors or r->q in Tutors 
      					  or r->p in Tutors or p->r in Tutors)
  						  implies (p in Teacher or q in Teacher or r in Teacher)
-- div,5
all p,q,r : Person | (p->q in Tutors or q->r in Tutors or q->r in Tutors or r->p in Tutors or p->r in Tutors or r->q in Tutors) implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y, z : Person | x->y in Tutors and y->z in Tutors and z->x in Tutors and x != y and x != z and y != z implies x in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Person | all c:Class | all g:Group | (c->(s->g) in Groups implies (all t:Teacher | t->c in Teaches implies t->s in Tutors))
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2:Person | (p1->p2 in Tutors and p2 in Teacher) or (some p3: Person | p1 != p3 and p2 != p3 and p2->p3 in Tutors and p3 in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,3
some p,q,r : Person | (p->q in Tutors or q->p in Tutors) and (q->r in Tutors or r->q in Tutors)  implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
some p,q,r : Person | ((p->q in Tutors or q->p in Tutors) and (q->r in Tutors or r->q in Tutors) and (p->r in Tutors or r->p in Tutors)) implies (p in Teacher or q in Teacher or r in Teacher)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p1 : Person |
  	(some t : Teacher | t->p1 in Tutors or p1->t in Tutors) or
	(some p2 : Person, t : Teacher | (p2->p1 in Tutors) and (t->p2 in Tutors))
-- div,1
-- equiv pair end
-- equiv pair start,1
all t,s1,s2:Person | all c:Class | all g:Group | (c->(s1->g) in Groups and c->(s2->g) in Groups and t->c in Teaches) implies (t->s1 in Tutors and t->s2 in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
some p1, p2:Person | p1 -> p2 in Tutors implies (p1 in Teacher or  p2 in Teacher or (some p3:Person | p2 -> p3 in Tutors implies p3 in Teacher)) and p1 not in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
(all p:Person | p in Teacher) or (all p1,p2:Person | p1->p2 in Tutors implies p1 in Teacher) or (all p1, p2, p3:Person | p1->p2 in Tutors and p2->p3 in Tutors implies p1 in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
some p,q,r : Person | (p->q in Tutors or q->r in Tutors or q->r in Tutors or r->p in Tutors or p->r in Tutors or r->q in Tutors) implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
some p1, p2:Person | p1 -> p2 in Tutors implies (p1 in Teacher or  p2 in Teacher or (some p3:Person | p2 -> p3 in Tutors implies p3 in Teacher)) and (p1 not in Student and p1 in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2, p3 : Person
  		| ( p1 != p2 and p2 != p3 and p3 != p1 ) implies
          ( (p2->p1 in Tutors and p2 in Teacher) or
  		    (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher))
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1, p2, p3 : Person 
  		| (p1 != p2 and p2 != p3 and p3 != p1) implies
  		  ( (p2->p1 in Tutors and p2 in Teacher) and
            (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher))
-- div,2
-- equiv pair end
-- equiv pair start,1
all p,q,r : Person | (p->q in Tutors or q->p in Tutors or q->r in Tutors or r->q in Tutors 
      					  or r->p in Tutors or p->r in Tutors)
  						  or (p in Teacher or q in Teacher or r in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2,p3:Person | (p1 in Teacher implies (p2 in  Student and p3 in  Student) ) or (p2 in Teacher implies (p1 in  Student and p3 in  Student) ) or (p3 in Teacher implies (p2 in  Student and p1 in  Student) )
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1 : Person | some p2, p3 : Person |
  
  (p1 != p2) and (p1 != p3) and (p2 != p3) and
  
  (all p4 : Person | (p4 = p1) or (p4 = p2) or (p4 = p3)) and
  ((p1 in Teacher) or
   (p2->p1 in Tutors and p2 in Teacher) or
   (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher))
-- div,2
-- equiv pair end
-- equiv pair start,1
all p,q,r : Person | (p->q in Tutors implies p in Teacher) or 
  						 (q->p in Tutors implies q in Teacher) or 
  						 (q->r in Tutors implies q in Teacher) or 
  						 (r->q in Tutors implies r in Teacher) or 
  						 (r->p in Tutors implies r in Teacher) or 
  						 (p->r in Tutors implies p in Teacher)
-- div,1
-- equiv pair end
