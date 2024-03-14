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

  
  
  

  
  
  
  all x: Photo | one posts.x 
}


pred inv2 {
    // An user cannot follow itself.

    all u1 : User | u1 not in u1.follows

}


pred inv3 {
    // An user only sees (non ad) photos posted by followed users. 
    // Ads can be seen by everyone.

  
  

  all u1 : User | all ph : Photo | 
      ph in u1.sees  implies ((some u2 : User | ph in u2.posts and u2 in u1.follows ) or ph  in Ad)


}


pred inv4 {
    // If an user posts an ad then all its posts should be labelled as ads 

      
      
      all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
}


pred inv5 {
	// Influencers are followed by everyone else

}


pred inv6 {
	// Influencers post every day

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
