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
	all p:Photo | one u:User | u in posts.p
}


pred inv2 {
	// An user cannot follow itself.
	all u:User | u not in follows.u
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u:User, p:Photo - Ad | u in sees.p implies some v:User | v in posts.p and u in follows.v
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u:User,p:Ad | u in posts.p implies all r:Photo | u in posts.r implies r in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	all i:Influencer, u:User | u!=i implies u in follows.i
}


pred inv6 {
	// Influencers post every day
	all u:Influencer, d:Day | some p:Photo | u in posts.p and p in date.d
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all s:User, u:User | (u in suggested.s) iff (u != s and u not in follows.s and some v:User | u in follows.v and v in follows.s)
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u:User,v:User,p:Ad | u in sees.p and v in posts.p implies u in follows.v or u in suggested.v
}
