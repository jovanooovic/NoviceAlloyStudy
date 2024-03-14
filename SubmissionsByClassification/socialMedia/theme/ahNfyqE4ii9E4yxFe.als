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
	all u1 : User | u1 not in u1.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all p : Photo - Ad | all u : User | some u2 : User | p in u.sees implies (p in u2.posts and u2 in u.follows)
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User, a : Ad | a in u.posts implies u.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	all u : User, i : Influencer | u != i implies i in u.follows
}


pred inv6 {
	// Influencers post every day
  	all i : Influencer , d : Day | d in i.posts.date

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	all u: User | u.suggested in u.follows.follows and u.suggested not in u.follows
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  all u : User, ad : Ad | ad in u.sees implies ad in u.follows.posts or ad in u.suggested.posts
}
