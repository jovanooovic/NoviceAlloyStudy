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


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all u : User | all ad : u.sees & Ad | ad in u.follows.posts or ad in u.suggested.posts 

}

// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	// Every image is posted be one user
  all im : Photo | one u : User| im in u.posts 

}


pred inv2 {
	// An user cannot follow itself.
  all u : User | u not in u.follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all u : User | all ph : Photo  | ph in u.sees implies 
  ( ph not in Ad and ph in u.follows.posts) or ph in Ad
         

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all u : User | (some ph : u.posts | ph in Ad) => (all p : u.posts | p in Ad) 
}


pred inv5 {
	// Influencers are followed by everyone else
  	all i : Influencer | all u : User - i | i in u.follows

}

pred inv6 {
	// Influencers post every day
	all d : Day | all i : Influencer |  d in i.posts.date
}

pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u : User | u.suggested = u.follows.follows - u.follows - u
}
