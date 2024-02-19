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
 	all x : Photo | one posts.x

}


pred inv2 {
	// An user cannot follow itself.
  	all x : User | x->x not in follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all x : User, p : Photo-Ad | p in x.sees implies p in x.follows.posts

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  	all x : User, a : Ad, p : Photo-Ad | a in x.posts implies p not in x.posts

}


pred inv5 {
	// Influencers are followed by everyone else
	all x : User, y : Influencer | x != y implies x->y in follows
}


pred inv6 {
	// Influencers post every day
  	
	all i : Influencer | all d : Day | some p : Photo | d in p.date and i in posts.p 
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u,y : User | y in u.suggested iff (u != y and (y not in u.follows) and (some z : User | (z in u.follows) and (y in z.follows)))
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all u : User, a : Ad | a in u.sees implies (some z : User | a in z.posts and (z in u.follows or z in u.suggested)) 

}
