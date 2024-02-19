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
	// An user cannot follow itself.
  	
  
  
  	
  all u1 : User | u1 not in u1.follows
 
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  
  
  
  
  
  
  
  
  all u : User | all p : u.sees | p in u.follows.posts or p in Ad
  

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  
  

  
  all u:User, p:Photo | p in Ad and u in posts.p implies (all ph:Photo | u in posts.ph implies ph in Ad)
  
  

}


pred inv5 {
	// Influencers are followed by everyone else
  
  
  
  
  
  
  all u:User, i:Influencer | i in u.follows or i = u
  
  
}


pred inv6 {
	// Influencers post every day
  
  
  all i : Influencer | Day = i.posts.date

}


pred inv7 {
	
  all u:User | u.suggested = (u.follows.follows - u.follows) - u
  
	
} 


pred inv8 {
	
  all u1:User | u1.sees in (u1.follows.posts + u1.suggested.posts)
  
  

}



