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
	
	
  	all p : Photo | one posts.p

}


pred inv2 {
	// An user cannot follow itself.
	all u : User | u not in u.follows
  	
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u1 : User | all u2 : User | all p : u2.posts | p not in Ad and u1 -> p in sees implies u2 in u1.follows
  
  
  

  
  	
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User | all p : u.posts | p in Ad implies (all p2 : u.posts | p2 in Ad)
	
}


pred inv5 {
	// Influencers are followed by everyone else

}


pred inv6 {
	// Influencers post every day

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
