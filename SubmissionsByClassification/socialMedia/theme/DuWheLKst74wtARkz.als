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
	all i : Photo | one posts.i
}


pred inv2 {
	// An user cannot follow itself.
	no follows & iden
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u : User, p : Photo | p in u.sees => p in Ad or p in u.follows.posts
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User, a : Ad | a in u.posts => u.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	all x : User, i : Influencer | x != i <=> i in x.follows
}


pred inv6 {
	// Influencers post every day
	all i : Influencer | i.posts.date = Day
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all disj u1,u2 : User | u1 in u2.suggested <=> u1 in u2.follows.follows - u2.follows
  	no suggested & iden
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u : User , a : Ad | a in u.sees => a in u.follows.posts + u.suggested.posts 
}
