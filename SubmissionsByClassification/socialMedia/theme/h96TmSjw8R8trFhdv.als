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
	all x : Photo | one y : User | x in y.posts
}


pred inv2 {
	// An user cannot follow itself.
	all u : User | no u & u.follows 
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u : User | all p : Photo | p in u.sees implies (posts.p in u.follows) or (p in Ad)
}


pred inv4 {
	
	all u : User| all p : Photo-Ad | all a : Ad | a in u.posts implies no p & u.posts
}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer | all u : User-i | u in follows.i
}


pred inv6 {
	// Influencers post every day
  	all i : Influencer | all d : Day | some i.posts.date & d

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u, y : User | y in u.suggested iff (some follows.y & u.follows) and (no y & u.follows) and u!=y
}
 

pred inv8 {
	// An user only sees ads from followed or suggested users
	all u : User | all a : Ad | some a & u.sees implies posts.a in (u.follows + u.suggested)
}
