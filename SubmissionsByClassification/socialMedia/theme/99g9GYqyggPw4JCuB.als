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
    all p: Photo, u1: User, u2: User | u1->p in posts and u2->p in posts implies u1 = u2
}


pred inv2 {
	// An user cannot follow itself.
  all u1: User, u2: User | u1->u2 in follows implies u1!=u2
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  all u1: User, p: Photo, a: Ad | u1->p in sees implies all u2: User | u2->p in posts implies u1->u2 in follows
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  all u: User, p1: Photo, a1: Ad | u->p1 in posts and p1=a1 implies all p2: Photo, a2: Ad | u->p2 in posts implies p2 = a2 

}


pred inv5 {
	// Influencers are followed by everyone else
  all u1: User, i: Influencer | u1->i in follows

}


pred inv6 {
	// Influencers post every day
  all i: Influencer, d: Day | some p: Photo | i->p in posts and p->d in date

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  all u1: User, u2: User | u1->u2 in suggested implies u1->u2 in follows and u2->u1 not in follows
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  all u1: User, u2: User, a: Ad | u2->a in posts and u1->a in sees implies u1->u2 in follows or u2->u1 in suggested

}
