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
  	all p : Photo - Ad | all u : User | p in u.sees implies p in u.follows.posts

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all p : Photo - Ad | all u : User | all a : Ad | a in u.posts implies p not in u.posts
}


pred inv5 {
	// Influencers are followed by everyone else
  	all u : User | all i : Influencer | u != i implies u in follows.i 
}


pred inv6 {
	// Influencers post every day
  	all i : Influencer, d : Day | d in i.posts.date

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	all x,y : User | y in x.suggested iff( (x not in follows.y) and 
    									   ( some z : User | (z in follows.y) and (z in x.follows) ) and
  										   ( x!=y ) )
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all p : Ad | all u : User | p in u.sees implies (p in u.follows.posts) or (p in u.suggested.posts)

}
