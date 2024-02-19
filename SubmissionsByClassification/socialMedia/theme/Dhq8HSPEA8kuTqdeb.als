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
  	all u1,u2:User | u1 = u2 implies u2 not in u1.follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all p:Photo, u1,u2:User | p in u2.posts and p in u1.sees and p not in Ad implies u2 in u1.follows
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  	all a:Ad,p:Photo,u:User | a in u.posts and p in u.posts implies p in Ad

}


pred inv5 {
	// Influencers are followed by everyone else
  	all u:User, i:Influencer | i!=u implies i in u.follows

}


pred inv6 {
	// Influencers post every day
  	all d:Day, i:Influencer | some p:Photo | d in p.date and p in i.posts

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
  
     
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all a :Ad, u1,u2:User | a in u1.posts and a in u2.sees implies u1 in u2.follows or u1 in u2.suggested

}
