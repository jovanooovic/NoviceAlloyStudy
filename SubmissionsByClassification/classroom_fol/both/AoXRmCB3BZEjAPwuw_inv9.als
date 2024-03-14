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

pred inv9 {
no c:Class | all p1,p2:Teacher | c in p1.Teaches and c in p2.Teaches implies p1=p2
}

pred inv9c {
  all c:Class | lone Teacher&Teaches.c
}


check correct { inv9 <=> inv9c}
pred under { inv9 and !inv9c}
pred over { !inv9 and inv9c}
run over 
run under 
