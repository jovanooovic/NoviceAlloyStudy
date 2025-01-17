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

pred inv10{
	(all c : Class | all s : Student | some g : Group | s->g in Groups and s->g in Class)
}

