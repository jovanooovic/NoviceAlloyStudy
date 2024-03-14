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
  

  
  
  
  

  
  all x : Photo | some posts.x
  all x : Photo | one posts.x  
  
}


pred inv2 {
	// An user cannot follow itself.
  
  	
  	
  	all x : User | x not in follows.x
  
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  
  	all x : User | all y : Photo | y in x.sees implies y in Ad or y in x.follows.posts

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  
	all x : User | all y : Photo | y in x.posts and y in Ad implies x.posts in Ad

}


pred inv5 {
	// Influencers are followed by everyone else
  
  	all x : Influencer | all y: User | x in y.follows 

}


pred inv6 {
	// Influencers post every day
	
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	
  	all x : User | all y: User | y in x.suggested implies y in x.follows.follows
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
