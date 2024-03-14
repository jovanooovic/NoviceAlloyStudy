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
	all u : User | u not in follows.u
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all p : Photo - Ad, u1, u2 : User | u1 in sees.p && u2 in posts.p => u1 in follows.u2 
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads
  	all u : User, a : Ad | a in u.posts => u.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer | User - i in follows.i
}


pred inv6 {
	// Influencers post every day
	all d : Day, i : Influencer | some p : Photo | i in posts.p && p in date.d
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u1 : User | u1.suggested = u1.follows.follows - u1.follows - u1
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u1, u2 : User, a : Ad | u1 in sees.a && u2 in posts.a => u1 in follows.u2 or u1 in suggested.u2
}
