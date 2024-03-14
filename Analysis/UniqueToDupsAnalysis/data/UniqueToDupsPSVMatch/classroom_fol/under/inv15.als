Teacher in Person.Tutors
-- div,1
Teacher in Person.^(Tutors)
-- div,1
Teacher in Person.*Tutors
-- div,7
Teacher in Person.*Teaches
-- div,2
Person.Teaches.Teaches.Teaches in Teacher
-- div,1
some Tutors =>
  Teacher in Person.*Tutors
-- div,1
all x, y, z : Teacher | x->y in Tutors and y->z in Tutors implies z in Teacher
-- div,1
all p : Person | some p1 : Person | p -> p1 in Tutors implies p1 in Teacher
-- div,3
all p1 : Person | some p2, p3 : Person | 
  ((p1->p2 in Tutors) and (p2 in Teacher)) or
  ((p2->p3 in Tutors) and (p3 in Teacher))
-- div,1
all p : Person | some q,r : Person | (q in Teacher or r in Teacher) and (q->p in Tutors or r->p in Tutors or r->q in Tutors)
-- div,2
all p1, p2:Person | p1 -> p2 in Tutors implies (p1 in Teacher or  p2 in Teacher or (some p3:Person | p2 -> p3 in Tutors implies p3 in Teacher))
-- div,2
all p : Person | some q,r : Person | (p in Teacher or q in Teacher or r in Teacher) and (q->p in Tutors or r->p in Tutors or r->q in Tutors)
-- div,1
all p1 : Person |
  	(p1 in Teacher) or
  	(some t : Teacher | t->p1 in Tutors) or
	(some p2 : Person, t : Teacher | (p2->p1 in Tutors) and (t->p2 in Tutors))
-- div,1
all p1 : Person | some p2, p3 : Person |
  ((p1 in Teacher) or
   (p2->p1 in Tutors and p2 in Teacher) or
   (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher))
-- div,4
all p1: Person | p1 in Teacher or (some p2:Person | p1->p2 in Tutors => (p2 in Teacher or (some p3:Person | p2->p3 in Tutors and p3 in Teacher)))
-- div,1
all p1 : Person | p1 in Teacher or (some p2 : Teacher | p2 -> p1 in Tutors) or (some p2, p3 : Person | p2 -> p1 in Tutors and p3 -> p2 in Tutors and p3 in Teacher)
-- div,1
all p : Person | some q,r : Person | (p->q in Tutors or q->p in Tutors or p->r in Tutors or r->p in Tutors)
  											implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
all p1 : Person | (p1 in Teacher) or (some p2 : Person | (p2 != p1) and (p2->p1 in Tutors) and ((p2 in Teacher) or (some p3 : Person | (p3 != p2) and (p3 != p1) and (p3 in Teacher))))
-- div,1
all p1 : Person | p1 in Teacher or
  		(some p2 : Person | (p2->p1 in Tutors and p2 in Teacher) or
			some p3 : Person | (p3->p2 in Tutors and p2->p1 in Tutors and p3 in Teacher))
-- div,4
all p1,p2:Person | (p1->p2 in Tutors and p2 in Teacher) or (some p3: Person | (p2->p3 in Tutors and p3 in Teacher) or (some p4:Person | p3->p4 in Tutors and p4 in Teacher ))
-- div,1
all p : Person | some q,r : Person | (p->q in Tutors or q->p in Tutors or q->r in Tutors or r->q in Tutors 
      										or r->p in Tutors or p->r in Tutors)
  											implies (p in Teacher or q in Teacher or r in Teacher)
-- div,1
