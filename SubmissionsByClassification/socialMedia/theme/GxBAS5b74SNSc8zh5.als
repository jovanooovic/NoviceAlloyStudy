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
    	all p:Photo | one posts.p


}


pred inv2 {
	// An user cannot follow itself.
  	all u:User | u not in follows.u 

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users.
  	
    
  	all x:User, x2:User, y:Photos | y in x.sees implies (y in Ad or  u->p in sees and u->u2 in follows)

	// Ads can be seen by everyone.

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  	
  	all u:User | u not in Influencer implies (all i:Influencer | u->i in follows)


}


pred inv5 {
	// Influencers are followed by everyone else
 all u : User, i : Influencer | i->u implies follows
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
