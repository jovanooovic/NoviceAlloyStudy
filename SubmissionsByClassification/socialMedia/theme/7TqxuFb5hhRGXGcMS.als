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
	all x: Photo | one posts.x
}


pred inv2 {
	// An user cannot follow itself.
	all u1,u2: User | u1 in u2.follows implies u1 != u2
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u1: User, p: Photo | p in u1.sees implies (some u2: User | u2 in u1.follows and p in u2.posts and p not in Ad) or p in Ad
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
    
    all u1: User | some u1.posts & Ad implies u1.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
    all i: Influencer, u: User | u != i implies i in u.follows
}


pred inv6 {
	// Influencers post every day
    all i: Influencer, d: Day | some d = i.posts.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	asd
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
