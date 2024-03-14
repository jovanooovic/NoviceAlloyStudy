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
	all a : Photo | one b : User | a in b.posts
}


pred inv2 {
	// An user cannot follow itself.
  	all a, b : User | b in a.follows implies a != b

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users.
  	// Ads can be seen by everyone.
  	all a : User, b : Photo | b in a.sees implies b in Ad or (all c : User | b in c.posts implies c in a.follows)
  	

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads
  	all a : User, b : Photo | b in Ad and b in a.posts implies (all c : Photo | c in a.posts implies c in Ad)
  

}


pred inv5 {
	// Influencers are followed by everyone else
  	all a : Influencer, b : User | a != b implies a in b.follows

}


pred inv6 {
	// Influencers post every day
  	all a : Influencer, b : Day | some c : Photo | c in a.posts and b in c.date

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	all a, b : User | b in a.suggested iff a != b and (some c : User | b in c.follows and c in a.follows and b not in a.follows)
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all a : User, c : Ad | c in a.sees implies (all b : User | c in b.posts implies (b in a.follows or b in a.suggested))

}
