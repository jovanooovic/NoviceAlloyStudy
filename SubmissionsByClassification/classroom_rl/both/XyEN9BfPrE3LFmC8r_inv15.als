sig Person  {
	Tutors : set Person,
	Teaches : set Class
}
sig Group {}

sig Class  {
	Groups : Person -> Group
}

sig Teacher in Person  {}

sig Student in Person  {}

pred inv15 {
all p1, p2:Person | 
		(p2->p1 in Tutors and p2 in Student implies some p3:Person | p3->p2 in Tutors) 
  		and
  		(p2->p1 in Tutors and p2 in Teacher implies not some p3:Person | p3->p2 in Tutors) 
  		and
  		(p1->p2 in Tutors implies p1 in Teacher and p2 in Student)
}

pred inv15c {
  all p:Person | some Teacher&(^Tutors).p
}

check correct { inv15 <=> inv15c}
pred under { inv15 and !inv15c}
pred over { !inv15 and inv15c}
run over 
run under 

