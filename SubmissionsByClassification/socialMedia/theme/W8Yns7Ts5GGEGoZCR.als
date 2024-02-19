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
    
    all p:Photo | one (p.~posts)

}


pred inv2 {
	// An user cannot follow itself.
  	all u : User | u not in u.follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all u : User | all p: Photo | p not in Ad and p in u.sees implies (p.~posts in u.follows)

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
    all u:User| all a : Ad | a in u.posts implies u.posts in Ad

}


pred inv5 {
	// Influencers are followed by everyone else
  	all disj u1,u2:User| u1 in Influencer implies u1 in u2.follows

}


pred inv6 {
	// Influencers post every day
  	all d : Day | all i : Influencer | d in i.posts.date

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
    all disj u1,u2 :User | u1 in u2.suggested implies (u1 not in u2.follows and (some u3:User|u3!=u2 and u3 in u2.suggested)) 
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
