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
  	all p:Photo | #posts.p=1

}


pred inv2 {
	// An user cannot follow itself.
	all u:User | u not in u.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u:User| all p:Photo | (p in u.sees and p in u.follows.posts) implies p not in Ad 
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  	all u:User | all p: u.posts| (p in Ad) implies (u.posts in Ad)

}


pred inv5 {
	// Influencers are followed by everyone else
	all u1,u2:User | (u1!=u2 and u1 in Influencer) implies u1 in u2.follows 
}


pred inv6 {
	// Influencers post every day
  	all i:Influencer | Day in i.posts.date

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	all u1,u2:User | (u1!=u2 and u1 in u2.follows.follows and u1 not in u2.follows) <=> (u1 in u2.suggested)  
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u:User,p:Ad | p in u.sees implies (p in u.follows.posts or p in u.suggested.posts) 
}
