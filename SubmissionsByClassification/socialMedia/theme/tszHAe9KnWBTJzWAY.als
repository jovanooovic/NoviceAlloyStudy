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
  	all p : Photo | one posts.p
	// Every image is posted be one user

}


pred inv2 {
  	all u : User | u not in u.follows
	// An user cannot follow itself.

}


pred inv3 {
  	all u : User | u.sees-Ad in u.follows.posts
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.

}


pred inv4 {
  	all u : User | some u.posts & Ad implies u.posts in Ad
	// If an user posts an ad then all its posts should be labelled as ads 

}


pred inv5 {
	// Influencers are followed by everyone else

}


pred inv6 {
  	all d :Day | all i : Influencer | some (i.posts.date & d)
	// Influencers post every day

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
