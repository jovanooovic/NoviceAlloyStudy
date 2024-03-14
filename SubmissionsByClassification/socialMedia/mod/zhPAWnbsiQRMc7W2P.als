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
  	all p: Photo| one posts.p

}


pred inv2 {
	// An user cannot follow itself.
  	all u: User | u not in follows.u

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all u: User | u.sees-Ad in u.follows.posts

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all p: Photo | p in Ad => (posts.p).posts in Ad
}

