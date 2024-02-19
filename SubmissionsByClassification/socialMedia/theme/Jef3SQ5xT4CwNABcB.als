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
	all u1,u2:User | all p:Photo | (u1->p in posts and u2->p in posts) implies u1=u2
  	all x:Photo | some y:User | y->x in posts
}


pred inv2 {
	// An user cannot follow itself.
	all u1,u2:User | u1->u2 in follows implies u1!=u2  
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u1:User | all p:Photo | (u1->p in sees and p not in Ad) implies (some u2:User | u1->u2 in follows and u2->p in posts)
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u1,u2:User | all a:Ad | u1->a in posts implies (all p:Photo | u1->p in posts implies p in Ad )
} 


pred inv5 {
	// Influencers are followed by everyone else
	all i:Influencer | all u1:User-i | u1->i in follows  
}


pred inv6 {
	// Influencers post every day
	all i:Influencer, d:Day | some p:Photo | p->d in date and i->p in posts 
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u1,u2:User , a:Ad | u1->a in sees and u2->a in posts implies (u1->u2 in follows or u1->u2 in suggested)
}
