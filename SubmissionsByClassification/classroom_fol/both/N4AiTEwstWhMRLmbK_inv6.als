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

pred inv6 {
all p:Person,c:Class,g:Group | p in Teacher implies c->p->g in Groups
}

pred inv6c {
  all t:Teacher | some t.Teaches
}

check correct { inv6 <=> inv6c}
pred under { inv6 and !inv6c}
pred over { !inv6 and inv6c}
run over 
run under 

