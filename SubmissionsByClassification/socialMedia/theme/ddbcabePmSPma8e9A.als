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
	all x : Photo | one posts.x
}


pred inv2 {
	// An user cannot follow itself.
 	all x : User | x not in x.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all u : User, p: Photo | (p in u.sees) implies ((p not in Ad and posts.p in u.follows) or p in Ad)

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User, a: Ad, p : Photo | a in u.posts and p in u.posts implies p in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
  	all i : Influencer, u : User | i!=u implies i in u.follows

}


pred inv6 {
	// Influencers post every day
  	all i : Influencer , d : Day | some p : Photo | p in i.posts and d in p.date

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u1,u2 : User | u2 in u1.suggested implies (u2 != u1) and (u2 not in u1.follows) and (u2 in u1.follows.follows)
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
