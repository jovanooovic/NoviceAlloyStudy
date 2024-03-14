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
	
	all p : Photo | #(posts.p) = 1
}


pred inv2 {
	// An user cannot follow itself.
	all u : User | u not in u.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  
	all u:User | all p:Photo | p in u.sees implies some v:User | p in v.posts and v in u.follows or p in Ad
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User | #(u.posts & Ad) != 0 implies u.posts in Ad 
}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer | all u : User - i | i in u.follows 
}


pred inv6 {
	// Influencers post every day
	all i : Influencer | all d : Day | d in i.posts.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u:User | u.suggested = u.follows.follows - u.follows - u
}


pred inv8 {
	
    all u:User | all a : u.sees & Ad | a in (u.follows.posts + u.suggested.posts & Ad)
}
