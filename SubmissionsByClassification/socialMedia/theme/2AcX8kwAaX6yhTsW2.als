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
	
	posts in User one -> set Photo
}


pred inv2 {
	// An user cannot follow itself.
	
	no follows & iden
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all p : Photo-Ad | all u1, u2 : User | (u1->p in sees and u2->p in posts) => u1->u2 in follows
  
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u: User | (some a: Ad | a in u.posts) => u.posts in Ad
	
}


pred inv5 {
	// Influencers are followed by everyone else
  
	
  
	all u: User | all i: Influencer | u != i <=> u->i in follows
}


pred inv6 {
	// Influencers post every day
	all i : Influencer | (i.posts).date = Day
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u1, u3: User | (some u2: User | u1->u2 in follows and u2->u3 in follows and not (u1->u3 in follows) and u1 != u3) <=> u1->u3 in suggested
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u1, u2: User | all a: Ad | u1->a in sees and u2->a in posts => u1->u2 in follows or u1->u2 in suggested
}
