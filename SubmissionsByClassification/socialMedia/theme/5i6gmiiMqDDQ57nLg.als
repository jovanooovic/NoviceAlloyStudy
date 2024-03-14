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
  	all x : User | x not in x.follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	
  	
  
  	all u1, u2 : User, p: Photo | p in u1.posts => p not in Ad and p in u2.sees => u1 in u2.follows
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	
  
  	all p1,p2 : Photo, u : User | p1 in u.posts and p1 in Ad => p2 in u.posts => p2 in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
	all i : Influencer, u : User | i != u => i in u.follows
}


pred inv6 {
	// Influencers post every day
	all d : Day, i : Influencer | d in i.posts.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u,s : User | u != s => (s in u.suggested iff (s in u.follows.follows - u.follows))
  	all u : User | u not in u.suggested
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all u: User, a : Ad | a in u.sees => a in (u.follows.posts + u.suggested.posts)
}
