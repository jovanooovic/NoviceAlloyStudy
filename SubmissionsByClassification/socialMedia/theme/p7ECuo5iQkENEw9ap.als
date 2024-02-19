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
	all i : Photo | one u : User | i in u.posts
}


pred inv2 {
	// An user cannot follow itself.
	all u : User | u not in u.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all p : Photo - Ad, u : User | p in u.sees implies p in u.follows.posts 
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all p : Photo, u : User | p in u.posts and p in Ad implies (all p : u.posts | p in Ad)
}


pred inv5 {
	// Influencers are followed by everyone else
	all u : User, i : Influencer | u != i implies i in u.follows
}


pred inv6 {
	// Influencers post every day
  	all d : Day, i : Influencer | d in i.posts.date

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u : User | u.suggested in u.follows.follows and u.suggested not in u.follows
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all ad : Ad, u : User | ad in u.sees implies ad in u.follows.posts or ad in u.suggested.posts
}
