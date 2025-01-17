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

pred inv8{
  all t:Teachers | all c1, c2:Class and (t -> c1 in Teaches) and (t -> c2 in Teaches) implies c1 = c2
}

