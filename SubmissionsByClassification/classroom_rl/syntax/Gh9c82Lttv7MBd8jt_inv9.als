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
	all c:Class,t1,t2:Class | t1->c in teaches and t2->c in teaches implies t1=t2
}

