some Teacher.^Tutors
-- div,1
some ^Tutors.Teacher
-- div,2
some ^~Tutors.Teacher
-- div,1
^Tutors.Person in Teacher
-- div,1
Teacher in ^Tutors.Person
-- div,2
Person.^Tutors in Teacher
-- div,1
Student.^Tutors in Teacher
-- div,1
some ^~Tutors :> Teacher
-- div,1
Teacher.^Tutors in Teacher
-- div,1
some (Person.(^Tutors)->Teacher)
-- div,2
no( Teacher.^Tutors - Teacher)
-- div,1
some Person.*Tutors & Teacher
-- div,1
some Teacher & ^Tutors.Person
-- div,4
some Person.^Tutors & Teacher
-- div,4
some ^Tutors.Person & Teacher
-- div,3
some Student.^Tutors & Teacher
-- div,5
some Person->Teacher & ^Tutors
-- div,1
some Teacher & ^~Tutors.Person
-- div,1
some Person->Teacher & ^~Tutors
-- div,1
~((Groups.Group):>Teacher) in Teaches
-- div,1
all p1, p2:Person |
  	p1 in Teacher
-- div,1
all p : Person | some p <: ^ Tutors
-- div,2
some t : Teacher | some t.^Teaches
-- div,1
all p : Person | p.Tutors in Teacher
-- div,1
all p1, p2:Person | 
	p2->p1 in Tutors
-- div,1
all p : Teacher | some p <: ^ Tutors
-- div,1
some p : Teacher | some p <: ^ Tutors
-- div,1
all p : Person | (p.*Tutors) in Teacher
-- div,2
all p : Person | (*Tutors.p) in Teacher
-- div,3
all p:Person | Teacher in p.^Tutors
-- div,3
all p : Person | Teacher in ^Tutors.p
-- div,3
all p : Person | p.^Tutors in Teacher
-- div,4
all s : Student | s.^Tutors in Teacher
-- div,1
all s:Student | Teacher in s.^Tutors
-- div,1
all p : Person | p.^(~Tutors) in Teacher
-- div,10
all p : Person | p.~(^Tutors) in Teacher
-- div,1
all p : Person | some (p.(^Tutors)->Person)
-- div,1
all p : Person | some (p.(^Tutors)->Teacher)
-- div,5
all p : Person | one p.^Tutors & Teacher
-- div,1
all p : Person | lone (p.(^Tutors)->Teacher)
-- div,1
all p: Person | some (p.*Tutors & Teacher)
-- div,6
all p : Person | some p.^Tutors & Teacher
-- div,7
all s:Person | some(s.^Tutors & Teacher)
-- div,3
all p: Person | some Teacher & p.*Tutors
-- div,1
all s:Person | some Teacher & s.*Tutors
-- div,2
all s:Person | some Teacher & s.^Tutors
-- div,2
all p: Person | some Teacher & p.^Tutors
-- div,3
all s : Student | some (s.*Tutors & Teacher)
-- div,1
all p:Person | some Teacher <:(p.^Tutors)
-- div,2
all s:Student |some Teacher & s.^Tutors
-- div,5
all s : Student | some s.^Tutors & Teacher
-- div,4
all s:Student |some Teacher & s.^Teaches
-- div,1
all p : Person | p in Teacher or (p.^Tutors) in Teacher
-- div,1
all p : Person | p in Teacher or (p.*Tutors) in Teacher
-- div,1
all p1, p2:Person |
  (p1 in Teacher implies  p2->p1 not  in Tutors)
-- div,1
all p1, p2:Person |
  (p1 in Teacher implies  p1->p2 not  in Tutors)
-- div,1
all t:Teacher | all p:Person | t in p.^Tutors
-- div,1
all p:Person | some t:Teacher | t in (p.^Tutors)
-- div,3
some t:Teacher |all p:Person | t in p.^Tutors
-- div,1
all p:Person | some Tutors.p implies (Teacher in ^Tutors.p)
-- div,3
all p : Person | some t : Teacher | p->t in ^Tutors
-- div,1
all s : Student | some t : Teacher | t in s.^Tutors
-- div,1
all p : Person | (p in Teacher) or (p.^(~Tutors) in Teacher)
-- div,1
all t:Teacher | all p:Person | t in p.^~Tutors
-- div,1
all p : Person | some p.^Tutors & Teacher or p in Teacher
-- div,1
all p : Person | some p.*Tutors implies some (p.*Tutors & Teacher)
-- div,2
all p : Person | (p -> p in Tutors and p in Teacher) or (p.*Tutors) in Teacher
-- div,1
all p1:Person | (some p2:Person | p2->p1 in Tutors and p2 not in Teacher)
-- div,2
all p: Person | some t: Teacher | some p.Tutors && t in p.^Tutors
-- div,3
all p1:Person |
  (p1 in Teacher implies (not some p2:Person| p2->p1 in Tutors))
-- div,1
all p: Person | some t: Teacher | some p.^Tutors && t in p.^Tutors
-- div,1
all p1, p2, p3:Person |
  	
  	((p2->p1 in Tutors and p3->p2 in Tutors ) implies p2 not in Teacher)
-- div,2
all p : Person | some p.^Tutors & Teacher or (p -> p in Tutors and p in Teacher)
-- div,1
all p : Person | some t : Teacher | p->t in Tutors or p->t in Tutors.Tutors
-- div,1
all t1 : Teacher | some t : Teacher | t1->t in Tutors or t1->t in Tutors.Tutors
-- div,1
all p : Person - Teacher | some t : Teacher | p->t in Tutors or p->t in Tutors.Tutors
-- div,1
all p1, p2:Person | (p2->p1 in Tutors and p2 not in Teacher) implies (one p3:Person | p3->p2 in Tutors)
-- div,1
all p1, p2:Person |
    ((p1->p2 in Tutors and p2 not in Teacher) implies some p3:Person | p2->p3 in Tutors)
-- div,3
all p1, p2:Person |
  	
  	((p2->p1 in Tutors and some p3:Person | p3->p2 in Tutors ) implies p2 not in Teacher)
-- div,1
some p1, p2:Person |
    ((p2->p1 in Tutors and p2 in Student) implies some p3:Person | p3->p2 in Tutors)
-- div,1
all p1, p2:Person | 
    ((p2->p1 in Tutors and p2 not in Teacher) implies some p3:Teacher | p3->p2 in Tutors)
-- div,1
all p1, p2:Person | (p2->p1 in Tutors and p2 not in Teacher) implies (one p3:Person | p3->p2 in Tutors and p3!=p2)
-- div,1
all p : Person | some t : Teacher | p->t in Tutors or p->t in Tutors.Tutors or p->t in Tutors.Tutors.Tutors
-- div,1
all p1, p2:Person |
  	p2 in Student and
    ((p2->p1 in Tutors and p2 in Student) implies some p3:Person | p3->p2 in Tutors)
-- div,1
all p1, p2:Person |
  	p2 not in Student and
    ((p2->p1 in Tutors and p2 in Student) implies some p3:Person | p3->p2 in Tutors)
-- div,1
all p1:Person | (some p2:Person | p2->p1 in Tutors and p2 not in Teacher and (some p3:Person | p3->p2 in Tutors))
-- div,1
all p1, p2:Person |
    ((p2->p1 in Tutors and p2 in Student) implies some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1)
-- div,1
all p1, p2:Person |
    ((p2->p1 in Tutors and p2 not in Teacher) implies some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1)
-- div,2
all p1, p2:Person |
  	p2 not in Student and p2 not in Teacher and
    ((p2->p1 in Tutors and p2 in Student) implies some p3:Person | p3->p2 in Tutors)
-- div,1
all p1, p2:Person |
  	(p1->p2 in Tutors implies p1 != p2) and
    ((p1->p2 in Tutors and p2 not in Teacher) implies some p3:Person | p2->p3 in Tutors)
-- div,1
all p1, p2:Person |
  	p1->p2 in Tutors implies p1 != p2 and
    ((p1->p2 in Tutors and p2 not in Teacher) implies some p3:Person | p2->p3 in Tutors)
-- div,1
all p1, p2:Person |
  	(p1->p2 in Tutors implies !(p1 = p2)) and
    ((p1->p2 in Tutors and p2 not in Teacher) implies some p3:Person | p2->p3 in Tutors)
-- div,1
inv3
	all p1, p2:Person |
  	
    ((p1->p2 in Tutors and p2 not in Teacher) implies some p3:Person | p2->p3 in Tutors)
}

pred inv3{
	not some p:Person | p in Student and p in Teacher
-- div,1
all p1:Person |
  (some p2:Person | (p2->p1 in Tutors and p2 not in Teacher))and (some p2:Person | p2->p1 in Tutors and p2 not in Teacher and (some p3:Person | p3->p2 in Tutors))
-- div,2
all p1:Person |
  (p1 in Teacher implies (not some p2:Person| p2->p1 in Tutors)) and
  (some p2:Person | p2->p1 in Tutors and p2 not in Teacher and (some p3:Person | p3->p2 in Tutors))
-- div,1
all p1, p2:Person | 
		(p2->p1 in Tutors and p2 in Student implies some p3:Person | p3->p2 in Tutors) 
  		and
  		(p2->p1 in Tutors and p2 in Teacher implies not some p3:Person | p3->p2 in Tutors)
-- div,3
all p1, p2:Person | 
		(p2->p1 in Tutors and p2 not in Teacher implies some p3:Person | p3->p2 in Tutors) 
  		and
  		(p2->p1 in Tutors and p2 in Teacher implies not some p3:Person | p3->p2 in Tutors)
-- div,3
all p1, p2, p3:Person | 
		(p2->p1 in Tutors and p2 in Student implies some p3:Person | p3->p2 in Tutors) 
  		and
  		(p2->p1 in Tutors and p2 in Teacher implies not some p3:Person | p3->p2 in Tutors)
-- div,1
all p1, p2:Person | 
		(p2->p1 in Tutors and p2 not in Teacher implies some p3:Person | p3->p2 in Tutors and p2 != p3) 
  		and
  		(p2->p1 in Tutors and p2 in Teacher implies not some p3:Person | p3->p2 in Tutors)
-- div,5
all p1, p2:Person | ((p2->p1 in Tutors and p2 not in Teacher) and some p3:Person | p3->p2 in Tutors)
  	
  	all p1, p2:Person | ((p2->p1 in Tutors and p2 in Teacher) implies (no p3:Person | p3->p2 in Tutors))
-- div,1
all p1, p2:Person | (p2->p1 in Tutors and p2 not in Teacher) implies (one p3:Person | p3->p2 in Tutors)
  	
  	all p1, p2:Person | ((p2->p1 in Tutors and p2 in Teacher) implies (no p3:Person | p3->p2 in Tutors))
-- div,1
all p1, p2:Person | ((p2->p1 in Tutors and p2 not in Teacher) and some p3:Person | p3->p2 in Tutors) 
  	
  	all p1, p2:Person | ((p2->p1 in Tutors and p2 in Teacher) implies not some p3:Person | p3->p2 in Tutors)
-- div,1
all p1, p2:Person | ((p2->p1 in Tutors and p2 not in Teacher) implies some p3:Person | p3->p2 in Tutors) 
  	
  	all p1, p2:Person | ((p2->p1 in Tutors and p2 in Teacher) implies not some p3:Person | p3->p2 in Tutors)
-- div,2
all p1, p2:Person | 
		(p2->p1 in Tutors and p2 not in Teacher implies some p3:Person | p3->p2 in Tutors and p2 != p3) 
  		and
  		(p2->p1 in Tutors and p2 in Teacher implies not some p3:Person | p3->p2 in Tutors and p2 != p3)
-- div,1
inv3
	all p1, p2:Person | 
		(p2->p1 in Tutors and p2 in Student implies some p3:Person | p3->p2 in Tutors) 
  		and
  		(p2->p1 in Tutors and p2 in Teacher implies not some p3:Person | p3->p2 in Tutors)
}

pred inv3{
	not some p:Person | p in Student and p in Teacher
-- div,1
inv3
	all p1, p2:Person | 
		(p2->p1 in Tutors and p2 not in Teacher implies some p3:Person | p3->p2 in Tutors and p2 != p3) 
  		and
  		(p2->p1 in Tutors and p2 in Teacher implies not some p3:Person | p3->p2 in Tutors)
}

pred inv3{
	not some p:Person | p in Student and p in Teacher
-- div,1
all p1, p2:Person |
    ((p1->p2 in Tutors and p2 not in Teacher) implies some p3:Person | p2->p3 in Tutors) 
  	
  	all p1, p2:Person |
  	((p2->p1 in Tutors and p2 in Teacher) implies not some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1)
-- div,1
all p1, p2:Person |
    ((p2->p1 in Tutors and p2 not in Teacher) implies some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1) 
  		and
  	((p2->p1 in Tutors and p2 in Teacher) implies not some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1)
-- div,3
all p1, p2:Person | ((p2->p1 in Tutors and p2 not in Teacher) implies some p3:Person | p3->p2 in Tutors) 
  	
  	all p1, p2:Person | ((p2->p1 in Tutors and p2 in Teacher) implies not some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1)
-- div,2
inv3
  
	all p1, p2:Person | ((p2->p1 in Tutors and p2 not in Teacher) implies some p3:Person | p3->p2 in Tutors) 
  	
  	all p1, p2:Person | ((p2->p1 in Tutors and p2 in Teacher) implies not some p3:Person | p3->p2 in Tutors)
}

pred inv3{
	not some p:Person | p in Student and p in Teacher
-- div,1
all p1, p2:Person | 
		(p2->p1 in Tutors and p2 in Student implies some p3:Person | p3->p2 in Tutors) 
  		and
  		(p2->p1 in Tutors and p2 in Teacher implies not some p3:Person | p3->p2 in Tutors) 
  		and
  		(p1->p2 in Tutors implies p1 in Teacher and p2 in Student)
-- div,1
inv3
	all p1, p2:Person |
    ((p2->p1 in Tutors and p2 not in Teacher) implies some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1) 
  		and
  	((p2->p1 in Tutors and p2 in Teacher) implies not some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1)
}

pred inv3{
	not some p:Person | p in Student and p in Teacher
-- div,2
inv13
	all p1, p2:Person | 
		(p2->p1 in Tutors and p2 not in Teacher implies some p3:Person | p3->p2 in Tutors and p2 != p3) 
  		and
  		(p2->p1 in Tutors and p2 in Teacher implies not some p3:Person | p3->p2 in Tutors)
}

pred inv13{
  all p1, p2:Person | (p1->p2 in Tutors implies p1 in Teacher and p2 in Student)

}

pred inv1{
	all p:Person | p in Student
-- div,1
inv13
	all p1, p2:Person |
    ((p2->p1 in Tutors and p2 not in Teacher) implies some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1) 
  		and
  	((p2->p1 in Tutors and p2 in Teacher) implies not some p3:Person | p3->p2 in Tutors and p3!=p2 and p3!=p1)
}

pred inv13{
  all p1, p2:Person | (p1->p2 in Tutors implies p1 in Teacher and p2 in Student)

}

pred inv1{
	all p:Person | p in Student
-- div,1
