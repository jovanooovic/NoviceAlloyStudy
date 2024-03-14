-- equiv pair start,5
Teacher in Person.*Tutors
-- div,1
all p1:Person | (some p2:Person | p2->p1 in Tutors and p2 not in Teacher implies (some p3:Person | p3->p2 in Tutors))
-- div,2
all p1, p2:Person | 
		(p2->p1 in Tutors and p2 in Student implies some p3:Person | p3->p2 in Tutors) 
  		or
  		(p2->p1 in Tutors and p2 in Teacher implies not some p3:Person | p3->p2 in Tutors)
-- div,1
all p1, p2:Person |
    ((p2->p1 in Tutors and p2 not in Teacher) implies some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1) 
  		or
  	((p2->p1 in Tutors and p2 in Teacher) implies not some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1)
-- div,1
-- equiv pair end
-- equiv pair start,4
Teacher in Person.^Tutors
-- div,3
all t : Teacher | t in Person.^Tutors
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Person| some Tutors.p
-- div,1
all p1:Person | some p2:Person | p2->p1 in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person | p in Teacher.*Tutors
-- div,1
all p: Person | some (*Tutors.p & Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person | some (Teacher.(^Tutors)->p)
-- div,1
all s : Person | some Teacher & ^Tutors.Person
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | some (p.^Tutors) + (^Tutors.p) & Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | some ((p.^Tutors) + (^Tutors.p)) & Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Person | some Tutors.p implies not ((Teacher & ^Tutors.p)= none)
-- div,1
all p:Person | some Tutors.p implies (some t:Teacher | t in ^Tutors.p)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1: Person | p1 not in Teacher implies (some p2:Person | p2->p1 in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2:Person |
    ((p2->p1 in Tutors) implies some p3:Person | p3->p2 in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2:Person |
    ((p2 in Student and p2!=p1) implies some p3:Person | p3->p2 in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,7
all p1, p2:Person |
    ((p2->p1 in Tutors and p2 in Student) implies some p3:Person | p3->p2 in Tutors)
-- div,3
all p1, p2:Person |
    ((p2->p1 in Tutors and p2 in Student and p2!=p1) implies some p3:Person | p3->p2 in Tutors)
-- div,4
-- equiv pair end
-- equiv pair start,4
all p1, p2:Person | 
		(p2->p1 in Tutors and p2 not in Teacher implies some p3:Person | p3->p2 in Tutors)
-- div,4
-- equiv pair end
-- equiv pair start,1
all p1, p2:Teacher |
    ((p2->p1 in Tutors and p2 in Student and p2!=p1) implies some p3:Person | p3->p2 in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2:Person | 
		((p2->p1 in Tutors and p2 not in Teacher) implies some p3:Person | p3->p2 in Tutors and p2 != p3)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2:Person | 
		((p2->p1 in Tutors and p2 not in Teacher and p1 != p2) implies some p3:Person | p3->p2 in Tutors and p2 != p3)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1:Person | some p2, p3:Person |
  	(p2->p1 in Tutors) and (p2 in Teacher) or (
  		(p3->p2 in Tutors) and (p2 in Teacher) or (
      		(p1->p3 in Tutors) and (p1 in Teacher)
  		)
  	)
-- div,1
-- equiv pair end
