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
	
  	all p : Photo | one u : User | p in u.posts
}


pred inv2 {
	// An user cannot follow itself.
	all u1, u2 : User | u1 in u2.follows and u2 in u1.follows implies u1 != u2
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u1, u2 : User, p : Photo-Ad | p in u1.sees and p in u2.posts implies u2 in u1.follows
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User, a : Ad | a in u.posts implies u.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer, u : User-i | some i & u.follows 
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
