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

}


pred inv2 {
	// An user cannot follow itself.

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 

}


pred inv5 {
	// Influencers are followed by everyone else
  	all u : User| all i : Influencer | u in follows.i 
  	
  	

}


pred inv6 {
	// Influencers post every day
    

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	all u,y,z: User | y in suggested.u implies (( y not in follows.u) and (y in follows.z) and (z in follows.u))
  	
  	
  	
  	
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all a : Ad | all y,u : User | u in sees.a implies ((a in posts.y) and ((y in follows.u) or (y in suggested.u)))
	
  	
  	
  	
}
