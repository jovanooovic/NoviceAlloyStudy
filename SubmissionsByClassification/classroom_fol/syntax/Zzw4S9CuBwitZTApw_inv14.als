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

pred inv14{
	all s : Student, c : Class, g : Group | (c -> s -> g in Groups => some t : Teacher | t -> c in Teaches and t -> s in Tutors
}

