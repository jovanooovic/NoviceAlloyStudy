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
	
	all p : Photo | one u : User | u -> p in posts   
}


pred inv2 { 
	// An user cannot follow itself.
	all u: User | u not in u.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
    all x : User, y: Photo | x -> y in sees implies (y in Ad or all v: User | v -> y in posts implies x -> v in follows)
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User | some a : Ad | u -> a in posts implies a in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
    all i : Influencer, u : User | u != i implies u -> i in follows
}


pred inv6 {
	// Influencers post every day

}


pred inv7 {
	
   
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u : User, a : Ad | u -> a in sees implies all z : User | z -> a in posts implies u -> z in follows or u -> z in suggested
}
