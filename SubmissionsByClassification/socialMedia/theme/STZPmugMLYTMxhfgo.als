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
	all u : User, p : Photo | p in u.sees implies (p in Ad or one u1 : u.follows | p in u1.posts) 
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User | all p : u.posts | p in Ad implies u.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer | all u : User - i  | i in u.follows 
}


pred inv6 {
	// Influencers post every day
	all i : Influencer, d : Day | some p : i.posts | d in p.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u : User | u.suggested = (u.follows.follows - (u.follows + u))
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all u : User | all a : Ad | a in u.sees implies (a in u.follows.posts or a in u.suggested.posts)  

}
