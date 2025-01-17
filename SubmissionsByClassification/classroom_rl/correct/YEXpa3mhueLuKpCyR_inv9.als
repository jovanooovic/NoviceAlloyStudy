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
all c : Class, disj t1,t2 : Teacher | not c in (t1.Teaches & t2.Teaches)
}

pred inv9c {
  all c:Class | lone Teacher&Teaches.c
}


check correct { inv9 <=> inv9c}
pred under { inv9 and !inv9c}
pred over { !inv9 and inv9c}
run over 
run under 

