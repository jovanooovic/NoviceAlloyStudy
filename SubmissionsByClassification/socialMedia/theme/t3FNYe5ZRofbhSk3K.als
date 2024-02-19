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
  	all p: Photo | one x : User | x -> p in posts
  	
  	
  	
    
    
}


pred inv2 {
	// An user cannot follow itself.
	all x, y: User | x -> y in follows implies x != y
    
    
    
    
    
    
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all x : User, y: Photo | x -> y in sees implies (y in Ad or all v: User | v -> y in posts implies x -> v in follows)
    
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
    all x : User, a : Ad | x -> a in posts implies all z : Photo | x -> z in posts implies z in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
    all i: Influencer, u: User | u != i implies u->i in follows
}


pred inv6 {
	// Influencers post every day
    all i: Influencer, d: Day | some p: Photo | i -> p in posts and p -> d in date
    
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all x, y: User | x -> y in suggested iff (x != y and some z: User | x -> z in follows and z -> y in follows and not x -> y in follows)
}


pred inv8 {
	// An user only sees ads from followed or suggested users
    all x: User, a: Ad | x -> a in sees implies all z: User | z -> a in posts implies x -> z in follows or x -> z in suggested
}
