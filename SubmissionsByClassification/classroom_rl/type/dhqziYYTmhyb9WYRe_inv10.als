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
	
  
   
  
  all c : Class |  one Student<:c.Groups -> one Group:>c.Groups in c.Groups   
}

