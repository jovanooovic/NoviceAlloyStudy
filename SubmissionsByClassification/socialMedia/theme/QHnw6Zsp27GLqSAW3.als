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
  	all i : Photo |one posts.i

}


pred inv2 {
	// An user cannot follow itself.
  	all u: User | u not in u.follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u : User | all p: Photo | p in u.sees implies (p in Ad or p in u.follows.posts)
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  	all u: User | all ad : Ad | ad in u.posts implies u.posts in Ad

}


pred inv5 {
	// Influencers are followed by everyone else
  	all disj u1,u2 : User | u1 in Influencer implies u1 in u2.follows

}


pred inv6 {
	// Influencers post every day
  	all d : Day | all u : User | u in Influencer implies (d in u.posts.date)    

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	all u1,u2 : User | (u1 in u2.suggested) <=> (u1 in ( u2.follows.follows - u2.follows) and u1!=u2) 
  	
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all u: User | all p : Ad | p in u.sees implies ( (p in u.follows.posts) or (p in u.suggested.posts)) 

}
