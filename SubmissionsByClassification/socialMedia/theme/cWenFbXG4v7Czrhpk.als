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
	all u : User | u not in u.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u1, u2 : User, p : Photo | p in u1.sees => (p in u2.posts and u2 in u1.follows) or (p in Ad)
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User, p : u.posts | p in Ad => all po : u.posts | po in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	all u : User, i : Influencer | i in u.follows
}


pred inv6 {
	// Influencers post every day
	
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	all u : User, us : u.suggested | some u1 : User | us not in u.follows and u1 in u.follows and us in u1.follows and us != u
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u, u1 : User, p : Photo | p in u.sees => p in u1.posts and u1 != u and (u1 in u.follows or u1 in u.suggested)
}
