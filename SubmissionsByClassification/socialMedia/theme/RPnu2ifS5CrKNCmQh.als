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
	
  	
  	all x : Photo | one y : User | y->x in posts
}


pred inv2 {
	// An user cannot follow itself.
  	all x : User | x not in x.follows
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all x : User | all y : x.sees | posts.y in x.follows or y in Ad

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all x : User | (all y : x.posts | y in Ad) or (all y : x.posts | y not in Ad)
}


pred inv5 {
	// Influencers are followed by everyone else
  	all x : Influencer | all y : User | y != x implies y->x in follows
}


pred inv6 {
	// Influencers post every day
  	all day : Day | all influencer : Influencer | some photo : influencer.posts | day in photo.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	all user : User | all suggested_user : user.suggested | (suggested_user != user and suggested_user not in user.follows and some following : user.follows | suggested_user in following.follows)
}


pred inv8 {
	// An user only sees ads from followed or suggested users
	all user : User | all ad : user.sees | ad in Ad implies ((some following : user.follows | following->ad in posts) or some suggested : user.suggested | suggested->ad in posts)
}
