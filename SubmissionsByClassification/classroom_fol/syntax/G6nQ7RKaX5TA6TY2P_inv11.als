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

pred inv11{
  
  all c:Class, g:Group | some p:Person c->p->g in Groups implies p in Teacher 
  
	
  
  
  
 
  
 
  
}

