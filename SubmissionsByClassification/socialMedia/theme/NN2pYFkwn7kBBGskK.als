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
  all p: Photo | one u : User | p in u.posts
  

}


pred inv2 {
	// An user cannot follow itself.
  all u: User | u not in u.follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  
  all u : User | u.sees-Ad in u.follows.posts


}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads
  all u: User | u.posts in Ad or u.posts in Photo-Ad

}


pred inv5 {
	// Influencers are followed by everyone else
  all i : Influencer | User - i in follows.i

}


pred inv6 {
	// Influencers post every day
  all i: Influencer, d: Day | some p : Photo | p in i.posts and d in p.date

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  all u : User | u.suggested = (u.follows.follows - (u.follows + u))
  all u1, u3 : User | ( some u2 : User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows and u1 != u3 ) iff u1->u3 in suggested
  
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  all u : User, a: Ad | some u1: User| a in u.sees implies a in u1.posts and (u1 in u.follows or u1 in u.suggested)
 
  

  

}
