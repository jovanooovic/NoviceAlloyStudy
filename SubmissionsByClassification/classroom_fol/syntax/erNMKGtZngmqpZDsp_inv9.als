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

pred inv9{
	all t : Teacher, y : Teacher | all c : Class | t->c in Teaches and y->c in Teaches t==y
}

