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
  all img : Photo | one posts.img

}


pred inv2 {
	// An user cannot follow itself.
  all u : User | u not in u.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  all u : User | u.sees - Ad in u.follows.posts
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  all u : User | (some pt : u.posts | pt in Ad) => (all p : u.posts | p in Ad)
}


pred inv5 {
	// Influencers are followed by everyone else
   all i :Influencer | all u: User - i | i in u.follows
}


pred inv6 {
	// Influencers post every day
    all d : Day | all i : Influencer | some d2: i.posts.date | d2=d
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
   all u : User | u.suggested = (u.follows.follows - u.follows - u)
}


pred inv8 {
	// An user only sees ads from followed or suggested users
    all x : User | all a : x.sees | a in Ad => a in x.follows.posts or a in x.suggested.posts
}
