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
	no (follows & iden)
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u: User | u.sees-Ad in u.follows.posts
  	
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	
  	all u: User | all p : Photo | ((u->p in posts and p in Ad) implies (all z: Photo | u-> z in posts implies z in Ad))
}


pred inv5 {
	// Influencers are followed by everyone else
	all u : User | u in Influencer implies (all y: User | y != u implies y->u in follows)
}


pred inv6 {
  	
	// Influencers post every day
	all d: Day | all i: Influencer | some p: Photo | i->p in posts and p->d in date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u,s: User | s in u.suggested iff ((s in u.follows.follows) and u!=s and not s in u.follows)
}


pred inv8 {
  
	// An user only sees ads from followed or suggested users
	
  	
  	// An user only sees ads from followed or suggested users
    all a: Ad | all u: User | u->a in sees implies some z: User | (u->z in follows or u->z in suggested) and (z->a in posts)
}
