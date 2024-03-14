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

pred inv12{
  all t: Teacher| (some x:Class | t->x in Teachers) implies some g:Group | t->g in Tutors 

}
