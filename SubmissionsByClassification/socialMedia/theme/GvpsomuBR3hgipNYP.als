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
	all x : Photo | one posts.x

}


pred inv2 {
	// An user cannot follow itself.
	all x : User | x not in follows.x
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u1 : User | all p : Photo | p in u1.sees implies ((some u2 : User | u2 in posts.p and p not in Ad and u2 in u1.follows) or p in Ad)
  

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User | all p : Photo | (p in u.posts and p in Ad) implies u.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
  
  	
  	
  	all i : Influencer | all x : User | x != i implies x in follows.i 

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
