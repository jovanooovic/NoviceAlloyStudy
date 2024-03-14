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
  
  
  all x: Photo| one posts.x
  

}


pred inv2 {
	// An user cannot follow itself.
  

  all x:User |  x-> x not in follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  
  all x: User, z:Photo-Ad | x-> z in sees implies (some y: User| x-> y in follows and y->z in posts) 
  

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  
  all x:User, y:Ad | x-> y in posts implies x.posts in Ad
  

}


pred inv5 {
	// Influencers are followed by everyone else
  
  all x: Influencer, y:User-x |  y-> x in follows

}


pred inv6 {
	// Influencers post every day
  
  all d: Day, x: Influencer | some y:Photo| x-> y in posts and y-> d in date

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
  
  
  all x, z:User| x-> z in suggested implies (some y:User| x->y in follows and y-> z in follows and x->z not in follows )
  
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  
  all x, y: User, z:Ad| x->z in sees and y -> z in posts implies x-> y in follows  or x->y in suggested
}
