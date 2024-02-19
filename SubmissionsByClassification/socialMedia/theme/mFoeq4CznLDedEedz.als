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
  all x : Photo| #(posts.x) = 1

}


pred inv2 {
	// An user cannot follow itself.
  all u : User | u not in u.follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  all u : User, p : Photo | p in u.sees => p in u.follows.posts or p in Ad 

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  all u: User, p : u.posts |  p in Ad => u.posts in Ad

}


pred inv5 {
	// Influencers are followed by everyone else

}


pred inv6 {
	// Influencers post every day
	all i:Influencer| #(i.posts.date & Day) = #Day
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  all u,v :User |  v in u.suggested => v in u.follows.follows and v not in u.follows
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all u :User, p : Ad | p in u.sees => p in u.follows.posts or p in u.suggested.posts  

}
