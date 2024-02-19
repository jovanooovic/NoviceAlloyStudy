sig User {
	follows : set User,
	sees : set Photo,
	posts : set Photo,
	suggested : set User
}

sig Influencer extends User {}

sig Photo {
	date : one Day
}
sig Ad extends Photo {}

sig Day {}





pred inv1 {
	
	
  	
	all p: Photo | some u : User | u->p in posts
  	all x: Photo, y,z: User | y->x in posts and z->x in posts implies y=z
}


pred inv2 {
	
	all u1, u2 : User | u1->u2 in follows implies u1 != u2
	
    
}


pred inv3 {
	
	
  	all p: Photo, u1,u2: User | p not in Ad and u1->p in sees and u2->p in posts implies u1->u2 in follows
  
  
  
}


pred inv4 {
	
  	all u: User | some p: Photo | p in Ad and u->p in posts implies ( all o: Photo | 	  p->o in posts and o in Ad)

}


pred inv5 { 
	

}


pred inv6 {
	

}


pred inv7 {
	
	
}


pred inv8 {
	

}
