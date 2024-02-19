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
  	all p: Photo | one posts.p

}


pred inv2 {
	// An user cannot follow itself.
  	all u: User | u not in u.follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all u1 : User | all ph : Photo |
  	ph in u1.sees implies (some u2:User | ph in u2.posts and u2 in u1.follows) or ph in Ad

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads
  	
  	all u1 : User | all ph : Photo |
  	ph in u1.posts and ph in Ad implies u1.posts in Ad
  
  	

}


pred inv5 {
	// Influencers are followed by everyone else
  	all i1 : Influencer | i1.follows in User-i1
	
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
