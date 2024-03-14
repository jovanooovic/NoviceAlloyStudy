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
  all p : Photo | some u : User | u->p in posts
  all p : Photo | all u1,u2 : User | u1->p in posts and u2->p in posts implies u1=u2

}


pred inv2 {
	// An user cannot follow itself.
	all u : User | u not in u.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all p : Photo - Ad | all u1,u2 : User | u1->p in sees and u2->p in posts implies u1->u2 in follows
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	
  all u : User | all p : Ad | u->p in posts implies u.posts in Ad
  
}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer, u : User | u != i implies u->i in follows
}


pred inv6 {
	// Influencers post every day
	all i : Influencer, d : Day | some p : Photo | i->p in posts and p->d in date
}

 
pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
  all u : User | u.suggested = (u.follows.follows - u.follows - u )
}

pred inv8 {
	// An user only sees ads from followed or suggested users
  all p : Ad | all u1,u2 : User | u1 in sees.p and p in u2.posts implies u1 in follows.u2 or u1 in suggested.u2
}
