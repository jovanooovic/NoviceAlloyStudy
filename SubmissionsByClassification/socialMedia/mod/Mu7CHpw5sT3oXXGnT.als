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

check Injectividade {
	(all p:Photo, u1, u2:User | u1->p in posts and u2->p in posts => u1=u2)
  iff
  (posts in User lone -> Photo)
} for 10



pred inv2 {
	// An user cannot follow itself.
  all u1,u2:User | u1->u2 in follows => u1!=u2
  

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  all u1:User, p:Photo-Ad | (u1->p in sees) => (some u2:User | u1->u2 in follows and u2->p in posts)

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  
	not some a:Ad, p:Photo-Ad, u:User | u->a in posts and u->p in posts

}


pred inv5 {
	// Influencers are followed by everyone else
  all i:Influencer, u:User | u!=i => u->i in follows 


}


pred inv6 {
	// Influencers post every day
  all i:Influencer, d:Day | some p:Photo | i->p in posts and p->d in date

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  all u1, u3:User | u1->u3 in suggested <=> (some u2:User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows and u2!=u1 and u1!=u3 )
  
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  
  all v, u:User, a:Ad | (v->a in sees and u->a in posts) implies (v->u in follows or v->u in suggested)

}
