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


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all u : User | all p : Ad | (p in u.sees) implies (posts.p in (u.follows + u.suggested))

}

pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all u : User | u.suggested = (u.follows).follows-u.follows-u
}

pred inv6 {
	// Influencers post every day
  	all i : Influencer | Day in (i.posts.date)
}

pred inv5 {
	
  	all i : Influencer | User-i in follows.i

}

pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  	all u : posts.Ad | u.posts in Ad
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
  	all u :User | all p : u.sees | (p not in Ad) implies (posts.p in u.follows)
	
}

pred inv1 {
	
  	all i : Photo | #(posts.i)=1

}


pred inv2 {
	// An user cannot follow itself.
  	all u : User | u not in u.follows

}
