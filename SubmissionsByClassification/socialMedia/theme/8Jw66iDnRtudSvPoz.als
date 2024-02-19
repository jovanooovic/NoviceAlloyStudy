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
	all f : Photo | one u : User | f in u.posts 
}


pred inv2 {
	// An user cannot follow itself.
	all u : User | u not in u.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u : User | u.sees in Ad+u.follows.posts
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User | all f : Photo | f in Ad&u.posts implies u.posts in Ad 
}


pred inv5 {
	// Influencers are followed by everyone else
	all u : User | all i : Influencer | i not in u implies i in u.follows
}


pred inv6 {
	// Influencers post every day
	all d : Day | all i : Influencer | d in i.posts.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u1, u2 : User | u2 in u1.suggested <=> u2 in u1.follows.follows and u2 not in u1.follows+u1
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all u : User | all f : Photo | f in u.sees&Ad => f in u.follows.posts+u.suggested.posts
}
