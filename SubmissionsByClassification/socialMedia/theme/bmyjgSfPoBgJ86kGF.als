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
  	no follows & iden
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all u : User | u.sees in (u.follows.posts)+Ad
}

 
pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads
  	all u : User | (u.posts in Photo-Ad) or (u.posts in Ad)

}


pred inv5 {
	// Influencers are followed by everyone else
  	all u : User | Influencer-u in u.follows

}


pred inv6 {
	// Influencers post every day
    all i : Influencer | i.posts.date = Day

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
    no suggested & iden
  	all u1 : User, u2 : u1.follows, u3 : u2.follows |  (u3 != u1 and u3 not in u1.follows) iff u3 in u1.suggested
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all u : User | (u.sees & Ad) in u.follows.posts+u.suggested.posts

}
