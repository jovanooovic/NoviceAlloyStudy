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
	all u1, u2 : User | u1 in u2.follows implies u1 != u2
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u : User, p: Photo | p in u.sees implies (p in Ad or p in u.follows.posts)
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User, a : Ad | a in u.posts implies u.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer, u : User | i in u.follows or i = u
}


pred inv6 {
	// Influencers post every day
	all d : Day, i : Influencer | d in i.posts.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all s, u : User | s in u.suggested implies (some f : User | f in u.follows and s in f.follows)
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u : User, a : Ad | a in u.sees implies (a in u.follows.posts or a in u.suggested.posts)
}
