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
  all p:Photo | one u:User | p in u.posts
}


pred inv2 {
	// An user cannot follow itself.
  all u:User | u not in u.follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  all p:Photo | all u:User | p in u.sees and p not in Ad implies p not in u.posts
  
  all p:Photo | all u:User,u2:User | u != u2 and p in u.sees and p in u2.posts and p not in Ad implies u2 in u.follows
  
  //

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  all p,p2:Photo | all u:User | p in u.posts and p in Ad and p2 in u.posts implies p2 in Ad

}


pred inv5 {
	// Influencers are followed by everyone else
  all u,u2:User | u in Influencer and u != u2 implies u in u2.follows
}


pred inv6 {
	// Influencers post every day
  all d:Day | all i:Influencer | some p:Photo | p in i.posts and d in p.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  all u,u2,u3:User | u2 in u.follows and u3 in u2.follows and u3 not in u.follows and u != u2 and u != u3 implies u3 in u.suggested
  all u,u2:User | u2 in u.suggested implies some u3:User | u3 in u.follows and u2 in u3.follows
  all u:User | u not in u.suggested
  all u,u2:User | u2 in u.follows implies u2 not in u.suggested
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  all a:Ad | all u,u2:User | a in u2.posts and a in u.sees implies u2 in u.follows or u2 in u.suggested
  
  
  
  all u:User | all p:Ad | p in u.sees implies p not in u.posts

}
