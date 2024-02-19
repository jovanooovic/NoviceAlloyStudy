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
  	
	all u : User | u not in follows.u
  
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all p : Photo, u : User | p in u.sees => (p in Ad || p in u.follows.posts)
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  	all ad : Ad | all posts : posts.ad.posts | posts in Ad

}


pred inv5 {
	// Influencers are followed by everyone else
  	all inf : Influencer | all u : User-inf | u in follows.inf

}


pred inv6 {
	// Influencers post every day
  	all d : Day, i : Influencer | some p : i.posts | p.date in d

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	
  	
  	
  	all u : User | u.follows.follows in u.suggested && u.follows not in u.suggested && u not in u.suggested
	
} 


pred inv8 {
	// An user only sees ads from followed or suggested users

}
