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
  posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad
}


pred inv2 {
	// An user cannot follow itself.
  all u:User | u-> u not in follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  all u:User, p:Photo, ! u -> p in sees implies (( some u2:User | u->u2 in follows and u2->p in pos
}
                                              

pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 

  
  	all u:User, | (some a:Ad | u->a in posts) implies (all p:Photo | u->p in Posts
// Influencers are followed by everyone else

}
  
pred inv5{
  
all i:Influencer, u:User | i != u implies u -> i in follows 
}


pred inv6 {
	// Influencers post every day
  all i:Influencer, 

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
