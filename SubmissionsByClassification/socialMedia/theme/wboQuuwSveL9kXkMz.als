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
	all x : Photo | some y : User | y -> x in posts
  	all x : Photo | one posts.x 
  
  
  
}


pred inv2 {
	// An user cannot follow itself.
  	all x : User | x -> x not in follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  
  all x : User | all p : Photo | x -> p in sees implies p in x.follows.posts or (p in Ad)
  
  	

	  
  
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads
  	
	all x : User | some (x.posts & Ad) implies x.posts in Ad

}


pred inv5 {
	// Influencers are followed by everyone else
	
  	all x : Influencer | all y : User - x | y -> x in follows  
}


pred inv6 {
	// Influencers post every day
  	all x : Influencer | all d : Day | some p : Photo | p -> d in date and x -> p in posts

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
