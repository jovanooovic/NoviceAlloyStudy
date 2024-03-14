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
	all photo : Photo | 
  		one user : User | photo in user.posts
}


pred inv2 {
	// An user cannot follow itself.
	all user : User |
  		user not in user.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
	all user : User |
  		all s : user.sees - Ad |
  			one f : user.follows | s in f.posts  
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all user : User |
  		(some user.posts & Ad) implies user.posts & Ad = user.posts
}


pred inv5 {
	// Influencers are followed by everyone else
	all user : User |
  		Influencer - user in user.follows
}


pred inv6 {
	// Influencers post every day
	all i : Influencer |
  		Day in i.posts.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all user : User |
  		user.suggested = user.follows.follows - user.follows - user
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all user : User |
  		user.sees & Ad in user.follows.posts + user.suggested.posts
}
