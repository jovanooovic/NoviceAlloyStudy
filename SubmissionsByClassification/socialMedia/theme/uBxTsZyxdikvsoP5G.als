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
  
	all x : Photo | one posts.x
  	
}


pred inv2 {
	// An user cannot follow itself.
  	all x: User | !(x in x.follows)

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all x : User | x.sees in (x.follows.posts + Ad ) 
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all x : User | (some y : Photo | y in x.posts & Ad) implies (x.posts in Ad)
}


pred inv5 {
	// Influencers are followed by everyone else
  	all x : Influencer | all y : User | x != y implies x in y.follows 

}


pred inv6 {
	// Influencers post every day
	all x : Influencer | x.posts.date = Day
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	all x : User |(x.suggested = x.follows.follows and x.suggested not in x.follows) 
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  all x : User |  (((x.follows.posts in Ad) or (x.posts in Ad) or (x.suggested.posts in Ad)) implies x.sees in Ad)

}
