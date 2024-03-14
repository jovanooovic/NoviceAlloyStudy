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

}


pred inv2 {
	// An user cannot follow itself.

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 

}


pred inv5 {
	// Influencers are followed by everyone else
all inf : Influencer | all u1 : User | inf in u1.follows implies u1 not in Influencer 
}


pred inv6 {
	// Influencers post every day

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u1 : User | all u2 : User | all u3 : User |
  		(u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows and u1 not in u3 and u1 not in u2) 
  	implies (u3 in u1.suggested or u3 in Influencer)
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all u1 : User | all ad : Ad | all u2 : User | ad in u2.posts and ad in u1.sees 
  		implies (u2 in u1.follows or u2 in u1.suggested)
  	
}
