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
	

  
  
  
  
  
  
  all p : Photo | one posts.p

}


pred inv2 {
	// An user cannot follow itself
  
  
  
  
  all u : User | u not in u.follows 

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users.
	// Ads can be seen by everyone.
  
  	
  	
  
  	all u : User | u.sees in u.follows.posts + Ad 
}




pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads
  
  	
  	
  
  	all u : User | some u.posts & Ad implies u.posts = u.posts & Ad
}


pred inv5 {
	// Influencers are followed by everyone else
  
  
  
  
  all u : User | Influencer-u in u.follows 
}


pred inv6 {
	// Influencers post every day
  
  
  
  
  all i : Influencer | i.posts.date = Day

}


pred inv7 {
	
  
  
  
  
  
  all u : User | u.suggested = u.follows.follows-u.follows-u

}


pred inv8 {
	// An user only sees ads from followed or suggested users
  
  
  
  
  all u : User | u.sees.(~posts) in u.suggested + u.follows
  

}
