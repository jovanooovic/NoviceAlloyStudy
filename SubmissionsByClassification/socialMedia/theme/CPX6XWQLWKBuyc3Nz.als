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
	
	all p: Photo | one posts.p
}


pred inv2 {
	// An user cannot follow itself.
	all u1, u2: User | u2->u1 in follows implies u2 != u1
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all p : Photo | (all u1 : User | u1->p in sees and p not in Ad implies (some u2:User | u2->p in posts and u1->u2 in follows))
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User | (all p : Photo | u->p in posts and p in Ad implies (all p1: Photo | u->p1 in posts implies p1 in Ad))
}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer | (all u : User | u != i implies u->i in follows)
}


pred inv6 {
	// Influencers post every day
	all d : Day | (all i : Influencer | (some p : Photo | i->p in posts and p->d in date))
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u1, u2 : User | (u1 != u2 and u1->u2 in suggested) iff (some u3 : User | u1->u3 in follows and u3->u2 in follows and u1->u2 not in follows)
	all a user 
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u : User | (all p : Photo | u->p in sees and p in Ad implies ( some u2:User | (u->u2 in follows or u->u2 in suggested) and u2->p in posts))
}
