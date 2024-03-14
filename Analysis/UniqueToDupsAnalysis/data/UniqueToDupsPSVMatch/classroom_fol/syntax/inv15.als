no
-- div,1
...
-- div,1
}

run some {Groups
-- div,1
Person & not Person
-- div,1
all p1,p2,p3:Person |
-- div,1
/* all p1,p2,p3:Person
-- div,1
/* all p1,p2,p3:Person |
-- div,3
Teacher in Person.+Tutors
-- div,1
Teacher in Person.*tutors
-- div,2
Teacher in Person.Teaches*
-- div,2
all p:Person | some t :p.Tutors
-- div,1
all p:Person | some t :p.*Tutors
-- div,1
some t:Teacher in Person.*Tutors
-- div,1
eventually (p:Person| p.^Tutors in Teacher)
-- div,1
all p:Person | some t:Tutor | t in p.^~Tutors
-- div,1
all p:Person | some t:Toutor | t in p.^~Tutors
-- div,1
some p1, p2, p3 | p1 != p2 and p2 != p3 and p3 != p1
-- div,1
(some p, p2, p3 | p1 != p2 and p2 != p3 and p3 != p1)
-- div,1
all p : Person | some p1 : Person | p1 -> p2  in Teacher
-- div,1
all t, t1 : Teacher t in t1.Tutors || t in t1.Tutors.Tutors
-- div,1
(some p, p2, p3 : Person | p1 != p2 and p2 != p3 and p3 != p1)
-- div,1
all p1,p2,p3:Person | (p1 in Teacher implies (p2, p3 in  Student) )
-- div,1
all p1, p2: Person, t: Teacher | p2->p1 in Tutors and t->p2 in tutors
-- div,1
all t : Teacher | some t : Teacher | t in p.Tutors || t in p.Tutors.Tutors
-- div,1
all p1,p2,p3 | p1->p2 in Tutors and p2->p3 in Tutors implies p3 in Teacher
-- div,1
all p : Person | some p1 : Person | p1 -> p2 in Tutors implies p2 in Teacher
-- div,1
some x, y, z : Person | x->y in Tutors and y->z in Tutors implies z in Teachers
-- div,1
all p1, p2, p3 : Person | p1 -> p2 in Tutors and p2 -> p3 in Tutors implies p3 in Teacher)
-- div,1
all p : Person | p in Teacher or
  		(some p2 : Person | (p2->p1 in Tutors and p2 in Teacher))
-- div,1
all p1 : Person
  		| p1 in Teachers or
  		  (some p2 : Person | p2->p1 in Tutors and p2 in Teaches)
-- div,1
all p1 : Person
  		| p1 in Teachers or
  		  (some p2 : Person | p2->p1 in Tutors and p2 in Teachers)
-- div,1
all p : Person | some t : Teacher | t->p in Tutors or (some q : Person | q->p in Tutors and t->q in tutors)
-- div,2
all p,q,r : Person | p->q in Tutor and q->r in Tutors implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
all p : Person | aux1[p]
}

pred aux1[p : Person]{
  p in Teacher or (all p2 : Person | p2 -> p in Tutors and aux1[p2])
-- div,1
all p1: Person | p in Teacher or (some p2:Person | p1->p2 in Tutors => (p2 in Teacher or (some p3:Person | p3 in Teacher)))
-- div,1
all s:Person | all c:Class | all g:Group | (c->(s->g) in Groups implies (all t:Teacher | t->c in Teaches implies t->s in Tutors
-- div,1
all p1,p2:Person | (p1->p2 in Tutors and p2 in Teachers) or (some p3: Person | p1 != p3 and p2 != p3 and p2->p3 and p3 -> Teachers)
-- div,1
some p1, p2 | p1 -> p2 in Tutors implies (p1 in Teacher or  p2 in Teacher or (some p3:Person | p2 -> p3 in Tutors implies p3 in Teacher)
-- div,1
all p1, p2, p2 : Person | (p1 -> p2 in Tutors implies p2 in Teacher) or (p1 -> p2 in Tutors and p2 -> p3 in Tutors implies p3 in Teacher)
-- div,1
all p1, p2, p3 : Person
  		| p1 in Teacher or
  		( p2 in Teacher and p2->p1 in Tutors) or
  		( p3 in Teacher and p3->p2,p2->p1 in Tutors)
-- div,1
some p1, p2:Person | p1 -> p2 in Tutors implies (p1 in Teacher or  p2 in Teacher or (some p3:Person | p2 -> p3 in Tutors implies p3 in Teacher)
-- div,1
all p : Person {
    (some (p.~Tutors) & Teacher)) or (some (p.~Tutors.~Tutors) & Teacher)) or (some (p.~Tutors.~Tutors.~Tutors) & Teacher))
  }
-- div,1
all p1: Person | p1 in Teacher or (some p2:Person | p1->p2 in Tutors => (p2 in Teacher or (some p3:Person | p2->p3 in Tutors andp3 in Teacher)))
-- div,1
all p1 : Person | some p2, p3 : Person |
   (p2->p1 in Tutors and p2 in Teacher) or
   (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher))
-- div,1
all p1,p2,p3 : Person
  		| p1 in Teacher or
  		| (p2->p1 in Tutors and p2 in Teacher) or
  		| (p3->p2 in Tutors and p2->p1 Tutors and p3 in Teacher)
-- div,2
all p1,p2,p3 : Person
  		| p1 in Teacher or
  		  (p2->p1 in Tutors and p2 in Teacher) or
  		  (p3->p2 in Tutors and p2->p1 Tutors and p3 in Teacher)
-- div,1
all p1,p2,p3 : Person
  		| p1 in Teacher or
  		  (p2->p1 in Tutors and p2 in Teacher) or 
  		  (p3->p2 in Tutors and p2->p1 Tutors and p3 in Teacher)
-- div,2
all p : Person | some q : Person, t : Teacher | t->p in Tutors or (q->p in Tutors and t->q in Tutors) or (t->q in Tutors and q->p in Tutors and r->t in Tutors)
-- div,1
all p1 | (p1 in Teacher) or 
  (some p2 | (p2 != p1) and (p2->p1 in Tutors) and ((p2 in Teacher) or
  (some p3 | (p3 != p2) and (p3 != p1) and (p3 in Teacher))))
-- div,1
all t,s1,s2:Person | all c:Class | all g:Group | c->(s1->g) in Groups and c->(s2->g) in Groups and t->c in Teaches) implies (t->s1 in Tutors and t->s2 in Tutors)
-- div,1
all p : Person | some q,r : Person | (p->q in Tutors or q->p in tutors or p->r in Tutors or r->p in Tutors)
  											implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
all p1 : Person | p1 in Teacher or
  		(some p2 : Person | (p2->p1 in Tutors and p2 in Teacher) or
			some p3 : Person | (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher)
-- div,1
(all p:Person | p is Teacher) or (all p1,p2:Person | p1->p2 in Tutors implies p2 is Teacher) or (all p1, p2, p3:Person | p1->p2 in Tutors and p2->p3 in Tutors implies p3 in Teacher)
-- div,1
(all p:Person | p in Teacher) or (all p1,p2:Person | p1->p2 in Tutors implies p2 is Teacher) or (all p1, p2, p3:Person | p1->p2 in Tutors and p2->p3 in Tutors implies p3 in Teacher)
-- div,1
all p,q,r : Person | (p in Teacher or q in Teacher or r in Teacher) implies (p->q in Tutors or q->p in Tutors) and (q->r in Tutors or r->q in Tutors) and (p->r in Tutors or r-> in Tutors)
-- div,1
some p,q,r : Person | (p in Teacher or q in Teacher or r in Teacher) implies (p->q in Tutors or q->p in Tutors) and (q->r in Tutors or r->q in Tutors) and (p->r in Tutors or r-> in Tutors)
-- div,1
some p,q,r : Person | (p->q in Tutors or q->p in Tutors) and (q->r in Tutors or r->q in Tutors) and (p->r in Tutors or r-> in Tutors) implies (p in Teacher or q in Teacher or r in Teacher)
-- div,3
some p,q,r : Person | (p->q in Tutors or q->p in Tutors) and (q->r in Tutors and r->q in Tutors) and (p->r in Tutors and r-> in Tutors)implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
some p,q,r : Person | (p->q in Tutors or q->p in Tutors) and (q->r in Tutors and r->q in Tutors) and (p->r in Tutors and r-> in Tutors) implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
some p,q,r : Person | ((p->q in Tutors or q->p in Tutors) and (q->r in Tutors or r->q in Tutors) and (p->r in Tutors or r-> in Tutors)) implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
all p,q,r : Person  (p->q in Tutors or q->p in Tutors or q->r in Tutors or r->q in Tutors 
      					 or r->p in Tutors or p->r in Tutors)
  						 implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
