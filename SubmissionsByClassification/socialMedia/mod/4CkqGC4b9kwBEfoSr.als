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
	
  	
  
  	
  	
  	
  	
  	posts in User one -> Photo
}


check Injetivicade {
	(all p:Photo, u1,u2: User | u1 -> p in posts and u2->p in posts => u1 = u2)
	iff
	(posts in User lone -> Photo)
} for 5 


pred inv2 {
	// An user cannot follow itself.
	all u1, u2: User | not (u1-> u2 in follows && u1 = u2)
	
  	//
	all u1, u2: User | u1-> u2 in follows => not u1 = u2
  
  	not some u:User | u -> u in follows
  
  	all u:User | u -> u not in follows
  
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	
  	
	all p:Photo-Ad, u1:User | u1 -> p in sees implies (some u2:User | u2 ->p in posts and u1->u2 in follows)
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	
  
  	
  	
  	all a:Ad, p:Photo-Ad, u:User | u->a in posts and u->p in posts
}


pred inv5 {
	// Influencers are followed by everyone else
	all i:Influencer, u:User | u != i implies u->i in follows
}


pred inv6 {
	// Influencers post every day
	all d: Day, i : Influencer | some p : Photo | i->p in posts && p->d in date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u1, u2, u3 : User | (u1->u2 in follows && u2->u3 in follows && not u1->u3 in follows && u1 != u2 && u2 != u3 && u1 != u3) => (u1->u3 in suggested)
  	
  all u1, u3: User | some u2 : User | (u1->u3 in suggested) => (u1->u2 in follows && u2->u3 in follows && not u1->u3 in follows && u1 != u2 && u2 != u3 && u1 != u3)
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u1, u2 : User, a : Ad | (u1->a in sees && u2->a in posts) => (u1->u2 in follows || u1->u2 in suggested)
}
