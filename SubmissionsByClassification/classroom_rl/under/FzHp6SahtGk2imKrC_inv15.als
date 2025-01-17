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
all p1:Person | some p2, p3:Person |
  	(p2->p1 in Tutors) and (p2 in Teacher) or (
  		(p3->p2 in Tutors) and (p2 in Teacher) or (
      		(p1->p3 in Tutors) and (p1 in Teacher)
  		)
  	)
}

pred inv15c {
  all p:Person | some Teacher&(^Tutors).p
}

check correct { inv15 <=> inv15c}
pred under { inv15 and !inv15c}
pred over { !inv15 and inv15c}
run over 
run under 

