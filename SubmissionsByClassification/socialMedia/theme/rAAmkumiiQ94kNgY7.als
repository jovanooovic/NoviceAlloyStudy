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
	
	all x : Photo | one y : User | y -> x in posts
}


pred inv2 {
	// An user cannot follow itself.
	all x : User | x -> x not in follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all x : User, y : Photo, z : User | y not in Ad and z -> y in posts and x -> y in sees implies x -> z in 		follows
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User, a : Ad | u -> a in posts implies all p : Photo | u -> p in posts implies p in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer, u : User | u != i implies u -> i in follows
}


pred inv6 {
	// Influencers post every day
	all i : Influencer, p : Photo | i -> p in posts implies all d : Day | p -> d in date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u1 : User, u2 : User, u3 : User | u1 -> u3 in suggested implies u1 -> u3 not in follows and u1 -> u2 in follows and u2 -> u3 in follows
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u : User, a : Ad, us : User | u -> a in sees and us -> a in posts implies (u -> us in follows or u -> us in suggested)
}
