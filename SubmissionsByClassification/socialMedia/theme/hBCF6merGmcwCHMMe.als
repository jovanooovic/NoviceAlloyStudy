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
	
  	all u1,u2:User | (some p:Photo | u1->p in posts and u2->p in posts) implies u1 = u2
  	all p:Photo | some u:User | u->p in posts
}


pred inv2 {
	// An user cannot follow itself.

  	all u:User | u->u not in follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.

  	all u:User, p:Photo | u->p in sees and p not in Ad implies u->p in follows.posts
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 

  
    all u:User | (some p:Photo | u->p in posts and p in Ad) implies (all p:Photo | u->p in posts implies p in Ad)
  	
}


pred inv5 {
	// Influencers are followed by everyone else

  
	all i:Influencer,u:User | u->i in follows or u=i

}


pred inv6 {
	// Influencers post every day
	
  
  	all i:Influencer,d:Day | some p:Photo | i->p in posts and p->d in date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed

  
  
  	all u1,u2:User | u1->u2 in suggested iff (u1->u2 in follows.follows and u1->u2 not in follows and u1 != u2)
  
		
}


pred inv8 {
	// An user only sees ads from followed or suggested users

  
  all u:User,a:Ad | u->a in sees implies u->a in follows.posts or u->a in suggested.posts
}
