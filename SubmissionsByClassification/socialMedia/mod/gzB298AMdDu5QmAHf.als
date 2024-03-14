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
	all p: Photo | one u: User | p in u.posts
}


pred inv2 {
	// An user cannot follow itself.
  	all user: User | user not in user.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all u: User | u.sees - u.follows.posts in Ad
	
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  	all u: User | (some a: Ad | a in u.posts) => u.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
  	all i: Influencer, u: User | i != u => i in u.follows
}


pred inv6 {
	// Influencers post every day
  	all d: Day, i: Influencer | some p: i.posts | p.date = d
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followe
    all u: User | all f: u.follows | f != u and (f not in u.follows implies f in u.suggested)
  	all u: User | u not in u.suggested
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}

run {
  inv1
  inv2
  inv3
  inv4
  inv5
  inv6
  inv7
} for 8 User
