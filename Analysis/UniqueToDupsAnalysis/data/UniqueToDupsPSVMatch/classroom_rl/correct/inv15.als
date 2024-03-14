all p : Person | p in Teacher.^Tutors
-- div,1
all s:Person | some(^Tutors.s & Teacher)
-- div,10
all s : Person | some Teacher & ^Tutors.s
-- div,2
all p: Person| some ^Tutors.p & Teacher
-- div,18
all p: Person | some Teacher & ^Tutors.p
-- div,3
all p : Person | some Teacher <: (^ Tutors) . p
-- div,2
all p:Person | some (p.^(~Tutors) & Teacher)
-- div,5
all p:Person | some Teacher <:(p.^~Tutors)
-- div,2
all p:Person | some t:Teacher | t in p.^~Tutors
-- div,2
all p1 : Person | some p2, p3 : Person |
  (p2->p1 in Tutors) and ((p2 in Teacher) or
  (p3->p2 in Tutors) and ((p3 in Teacher) or
  (p1->p3 in Tutors) and  (p1 in Teacher)))
-- div,13
