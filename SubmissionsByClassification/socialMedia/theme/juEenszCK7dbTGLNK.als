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
	all p : Photo | one posts.p
}


pred inv2 {
	// An user cannot follow itself.
	all u : User | u not in u.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u : User, p : Photo-Ad | p in u.sees implies p in u.follows.posts
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User, a : Ad | a in u.posts implies u.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer, u : User | u != i implies i in u.follows
}


pred inv6 {
	// Influencers post every day
	all i : Influencer, d : Day | some p : Photo | p in i.posts and d in p.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u,y : User | y in u.suggested iff (u != y and (y not in u.follows) and (some z : User | (z in u.follows) and (y in z.follows)))
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all x : User, a : Ad | a in x.sees implies (some y: User | a in y.posts and (y in x.follows + x.suggested))
}
