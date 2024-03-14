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

}
//SECRET
pred inv1o {
	all p : Photo | one posts.p
}
//SECRET
check inv1 {
	inv1 iff inv1o
} for 2

pred inv2 {
	// An user cannot follow itself.

}
//SECRET
pred inv2o {
	all p : User | p not in p.follows
}
//SECRET
check inv2 {
	inv1o implies
	(inv2 iff inv2o)
} for 2

pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.

}
//SECRET
pred inv3o {
	all p : User | p.sees - Ad in p.follows.posts
}
//SECRET
check inv3 {
	inv1o and inv2o implies
	(inv3 iff inv3o)
} for 3

pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 

}
//SECRET
pred inv4o {
		all u : posts.Ad | u.posts in Ad
}
//SECRET
check inv4 {
	inv1o and inv2o and inv3o implies
	(inv4 iff inv4o)
} for 3

pred inv5 {
	// Influencers are followed by everyone else

}
//SECRET
pred inv5o {
	all i : Influencer | follows.i = User - i
}
//SECRET
check inv5 {
	inv1o and inv2o and inv3o and inv4o implies
	(inv5 iff inv5o)
} for 3

pred inv6 {
	// Influencers post every day

}
//SECRET
pred inv6o {
	all i : Influencer, d : Day | some i.posts & date.d
}
//SECRET
check inv6 {
	inv1o and inv2o and inv3o and inv4o and inv5o implies
	(inv6 iff inv6o)
} for 3

pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
}
//SECRET
pred inv7o {
	all u : User | u.suggested = u.follows.follows - u.follows - u
}
//SECRET
check inv7 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o implies
	(inv7 iff inv7o)
} for 4

pred inv8 {
	// An user only sees ads from followed or suggested users

}
//SECRET
pred inv8o {
	all u : User, p : u.sees & Ad | p in u.(follows+suggested).posts	
}
//SECRET
check inv8 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o implies
	(inv8 iff inv8o)
} for 3
