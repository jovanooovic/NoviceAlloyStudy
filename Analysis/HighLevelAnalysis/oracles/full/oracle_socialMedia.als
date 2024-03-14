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

// Every image is posted be one user
pred inv1o {
	all p : Photo | one posts.p
}

// An user cannot follow itself.
pred inv2o {
	all p : User | p not in p.follows
}

// An user only sees (non ad) photos posted by followed users. 
// Ads can be seen by everyone
pred inv3o {
	all p : User | p.sees - Ad in p.follows.posts
}

// If an user posts an ad then all its posts should be labelled as ads 
pred inv4o {
	all u : posts.Ad | u.posts in Ad
}

// Influencers are followed by everyone else
pred inv5o {
	all i : Influencer | follows.i = User - i
}

// Influencers post every day
pred inv6o {
	all i : Influencer, d : Day | some i.posts & date.d
}

// Suggested are other users followed by followed users, but not yet followed
pred inv7o {
	all u : User | u.suggested = u.follows.follows - u.follows - u
}

// An user only sees ads from followed or suggested users
pred inv8o {
	all u : User, p : u.sees & Ad | p in u.(follows+suggested).posts
}