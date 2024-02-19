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
    all p:Photo | one posts.p  

}


pred inv2 {
	// An user cannot follow itself.
	all u1,u2:User | u1->u2 in follows implies u1!=u2
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u1:User | all p:Photo | u1->p in sees implies((some u2:User | u2 -> p in posts and u1 -> u2 in follows) or p in Ad)

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u1:User | all a:Ad | u1->a in posts implies ( all p:Photo | u1->p in posts implies p in Ad)  
}


pred inv5 {
	// Influencers are followed by everyone else
	all i:Influencer | all u:User-i | u->i in follows
}


pred inv6 {
	// Influencers post every day
	all i:User-Influencer | all p:Photo | i->p in posts implies (one d:Day | p ->d in date )
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u1,u2:User | u1.suggested 
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
