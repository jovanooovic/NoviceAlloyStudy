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
  all x: Photo | one posts.x
	// Every image is posted be one user

}


pred inv2 {
  all x: User | not x in follows.x
	// An user cannot follow itself.

}


pred inv3 {
  all x,y : User, p : Photo | ((p in x.sees && p not in Ad) => (y in follows.x && p in y.posts)) || p in Ad
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 

}


pred inv5 {
	// Influencers are followed by everyone else

}


pred inv6 {
	// Influencers post every day

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
