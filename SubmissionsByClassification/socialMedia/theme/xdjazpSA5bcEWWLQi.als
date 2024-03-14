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

}


pred inv2 {
	// An user cannot follow itself.

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  all u : User | some u.posts & Ad implies u.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
  all x : User | Influencer - x in x.follows
}

pred inv6 {
	// Influencers post every day
  all i : Influencer, d : Day | some i.posts.date & d
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  all x : User | x.suggested = x.follows.follows - x.follows - x
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  all x : User |  x.sees in x.follows.posts + x.suggested.posts
}
