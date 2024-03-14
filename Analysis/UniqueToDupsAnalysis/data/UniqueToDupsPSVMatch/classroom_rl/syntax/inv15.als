^tutors :> Teacher
-- div,1
Teacher in Person.^Tutor
-- div,1
^Tutors.Person & some Teacher
-- div,1
all ((Person.(^Tutors)) -> Teacher)
-- div,1
for p : Person | (p.*Tutors) in Teacher
-- div,1
all s:Person | some Teacher & s.+Tutors
-- div,1
all p: Person  some ^Tutors.p & Teacher
-- div,1
all s:Person | some Teacher & s.Tutors+
-- div,1
all s:Student |some Teacher i s.^Tutors
-- div,1
all p : Person | (p.+Tutors) in Teacher
-- div,1
for p in Person | (p.*Tutors) in Teacher
-- div,3
all p : Person | (p*Tutors.p) in Teacher
-- div,1
for p in Person | p . *Tutors in Teacher
-- div,1
all s : Person | some Tutors^.s & Teacher
-- div,1
all p : Person | some (Teacher & ^Tutors.p
-- div,1
all p: Person | some (Tutors*.p & Teacher)
-- div,1
all Student:s | some (s.^Tutors & Teacher)
-- div,1
all s:Person | some(s.^Tutors & Teacher)
)
-- div,1
all p:Person | (some Teacher in (p.^Tutors)
-- div,1
all s : Person | some (Tutors^.s & Teacher)
-- div,3
all p:Person | (some Teacher) in p.^Tutors)
-- div,1
all s : Student | some Teacher & in s.^Tutors
-- div,1
all s : Student | some t : Teacher t.(s.^Tutors)
-- div,1
all p: Person | some t: Teacher | t in p.^Tutors
-- div,1
all p1:Person | some p2:person | p2->p1 in Tutors
-- div,1
all p:Person | some Tutors.p implies (Teacher in Tutors^.p)
-- div,1
all p : Person | some (p.+Tutors) implies some (p.+Tutors & Teacher)
-- div,1
all p1: Person | (p1 not in Teacher implies (some p2:Person | p2->p1 in Tutors)
-- div,1
all p1, p2:Person |
  	
  	((p2->p1 in Tutors and p2 in not in Teacher) implies some p3:Person | p3->p2 in Tutors)
-- div,1
all p1:Person | some p2, p3:Person |
  	(p2->p1 in Tutors) and (p2 in Teachers) or (
  		(p3->p2 in Tutors) and (p2 in Teachers) or (
      		(p1->p3 in Tutors) and (p1 in Teacher)
  		)
  	)
-- div,1
all p1, p2:Person | ((p2->p1 in Tutors and p2 not in Teacher) and some p3:Person | p3->p2 in Tutors)
  	
  	all p1, p2:Person | ((p2->p1 in Tutors and p2 in Teacher) and not some p3:Person | p3->p2 in Tutors)
-- div,1
all p1, p2:Person | ((p2->p1 in Tutors and p2 not in Teacher) and some p3:Person | p3->p2 in Tutors) 
  	
  	all p1, p2:Person | ((p2->p1 in Tutors and p2 in Teacher) and not some p3:Person | p3->p2 in Tutors)
-- div,1
