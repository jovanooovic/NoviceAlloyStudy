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
	all p: Photo | one u: User | u in posts.p
}


pred inv2 {
	// An user cannot follow itself.
	all u: User | u->u not in follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u: User, p: Photo, u1: User | p in u.sees implies (p in Ad || (u1 in posts.p implies u1 in u.follows))
  
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u: User, a: Ad | u->a in posts implies (all p: Photo | u->p in posts implies p in Ad)
}


pred inv5 {
	// Influencers are followed by everyone else
	all i: Influencer, u: User | i != u implies u->i in follows 
}


pred inv6 {
	// Influencers post every day
	all i: Influencer, d: Day | some p: Photo | i->p in posts && p->d in date
}


pred inv7 {
	
	all x, y: User | x->y in suggested iff ((some u: User | x->u in follows && u->y in follows) && x!=y && x->y not in follows) 
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u: User, a: Ad | u->a in sees implies (some u1: User | u1->a in posts && (u->u1 in follows || u->u1 in suggested))
}

run {}
