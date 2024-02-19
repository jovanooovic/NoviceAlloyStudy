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

// Specify the following properties
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	// Every image is posted be one user
	
  	
	all p: Photo | some u : User | u->p in posts
  	all x: Photo, y,z: User | y->x in posts and z->x in posts implies y=z
}


pred inv2 {
	// An user cannot follow itself.
	all u1, u2 : User | u1->u2 in follows implies u1 != u2
	
    
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all p: Photo, u1,u2: User | p not in Ad and u1->p in sees and u2->p in posts implies u1->u2 in follows
  
  
  
}


pred inv4 { 
	// Influencers are followed by everyone else
    all u1,u2:User| u2 in Influencer implies u1->u2 in follows

}


pred inv5 {
	// Influencers post every day

}


pred inv6 {
	
	
}


pred inv7 {
	// An user only sees ads from followed or suggested users

}
