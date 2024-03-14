-- equiv pair start,5
some t : Teacher | some ^Teaches.t
-- div,1
some t:Teacher | t in (Person.^Teaches)
-- div,1
some t : Teacher | t in Teacher.(^Teaches)
-- div,1
some t : Teacher | t in (^Teaches).Teacher
-- div,1
some t:Teacher |all p:Person | t in p.^Teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Person | p in Teacher.Tutors
-- div,1
all p1:Person | (some p2:Person | p2->p1 in Tutors and p2 in Teacher)
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Person |some  (^Tutors.(s & Teacher))
-- div,1
-- equiv pair end
-- equiv pair start,7
all p : Person | some (Teacher & ^Teaches.p)
-- div,1
all p1, p2:Person |
  	p1 in Teacher and p2 not in Teacher
-- div,1
all p:Person | some t:Teacher | t in p.^~Teaches
-- div,1
all p : Person | some t : Teacher | p not in Teacher and p->t in ^Tutors
-- div,1
all p1, p2:Person | 
  		p1 != p2 and
		((p2->p1 in Tutors and p2 not in Teacher) implies some p3:Person | p3->p2 in Tutors and p2 != p3)
-- div,1
all p1, p2:Person | ((p2->p1 in Tutors and p2 not in Teacher) and some p3:Person | p3->p2 in Tutors)
  	
  	all p1, p2:Person | ((p2->p1 in Tutors and p2 in Teacher) and (no p3:Person | p3->p2 in Tutors))
-- div,1
all p1, p2:Person | ((p2->p1 in Tutors and p2 not in Teacher) and some p3:Person | p3->p2 in Tutors)
  	
  	all p1, p2:Person | ((p2->p1 in Tutors and p2 in Teacher) and (not some p3:Person | p3->p2 in Tutors))
-- div,1
-- equiv pair end
-- equiv pair start,1
some t:Teacher |all p:Person | t in p.^~Tutors
-- div,1
-- equiv pair end
