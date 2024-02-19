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
	all p : Photo | one posts.p
}


pred inv2 {
	// An user cannot follow itself.
  	all u : User | not u in u.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users.
	// Ads can be seen by everyone.
	all u : User | all p : Photo | u->p in sees and p not in Ad implies u in follows.(posts.p)
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads
	all u : User | (some p : Photo | p in u.posts and p in Ad) implies u.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	
  	
  	all i : Influencer | follows.i = User - i
  
  	
}


pred inv6 {
	// Influencers post every day
	
  	all i : Influencer | (i.posts).date = Day

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
  
	all u : User | suggested = u -> ((u.follows).follows - u.follows)
  	
  
    

  
  	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	
  
  	all u : User | posts.((u.sees) & Ad) in u.follows + u.suggested
  
  	
  
	
}
