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
	all p : Photo | one posts.p

}


pred inv2 {
	// An user cannot follow itself.
  	all u : User | u not in u.follows
  	
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
  	all ad : Ad, u : User | ad in u.sees
  	
  	
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	some p : Photo | p in User.posts and p = Ad implies no User.posts - Ad 
}


pred inv5 {
	// Influencers are followed by everyone else

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
