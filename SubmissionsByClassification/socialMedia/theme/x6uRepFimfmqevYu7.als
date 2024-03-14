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
	all p : Photo - Ad | all u1, u2 : User | p in u2.posts and p in u1.sees implies u2 in u1.follows 
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  all u : User | all ad : Ad | ad in u.posts implies u.posts in Ad

}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer | all u : User-i | i in u.follows
}


pred inv6 {
	// Influencers post every day
	all d : Day | all i : Influencer | d in i.posts.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  all u1,u2 : User | u2 in u1.suggested <=> u2 not in u1.follows and u2 != u1 and u2 in u1.follows.follows
	
}


pred inv8 {
	
  all ad : Ad | all u1, u2: User | ad in u1.posts and ad in u2.sees implies u1 in u2.follows or u1 in u2.suggested

}
