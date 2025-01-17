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
all p,q,r : Person | (p->q in Tutors implies p in Teacher) or 
  						 (q->p in Tutors implies q in Teacher) or 
  						 (q->r in Tutors implies q in Teacher) or 
  						 (r->q in Tutors implies r in Teacher) or 
  						 (r->p in Tutors implies r in Teacher) or 
  						 (p->r in Tutors implies p in Teacher)
}

pred inv15c {
  all p:Person | some Teacher&(^Tutors).p
}

check correct { inv15 <=> inv15c}
pred under { inv15 and !inv15c}
pred over { !inv15 and inv15c}
run over 
run under 

