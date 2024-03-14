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
	
  all p:Photo | one u:User | p in u.posts
}

pred inv2 {
	// An user cannot follow itself.
  all u:User,u2:User | u2 in u.follows implies u!=u2
}

pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  all u:User, u2:User, p:Photo | (u2 not in u.follows and p in u2.posts and p in u.sees) implies p in Ad
  
}

pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  
  all u:User, p:Photo | p in Ad and u in posts.p implies (all ph:Photo | u in posts.ph implies ph in Ad)
}

pred inv5 {
	// Influencers are followed by everyone else
  
  all u:User, i:Influencer | i!=u implies i in u.follows

}

pred inv6 {
	// Influencers post every day
  all i : Influencer | Day = i.posts.date
}

pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  all u:User | u.suggested = u.follows.follows - u.follows - u
  
  
}

pred inv8 {
	// An user only sees ads from followed or suggested users
  all u:User | u.sees in (u.follows.posts + u.suggested.posts)
}




