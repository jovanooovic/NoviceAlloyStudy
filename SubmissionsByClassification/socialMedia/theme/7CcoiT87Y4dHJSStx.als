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
  all x,y,z : univ | x in Photo implies y in User and z in User and y->x in posts and z->x in posts and z = y

}


pred inv2 {
	// An user cannot follow itself.
  all x,y : univ | x->y in follows implies x != y

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  all x,y,z : univ | x->y in sees implies y not in Ad and z->y in posts and x->z in follows
  

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads
  

}


pred inv5 {
	// Influencers are followed by everyone else
 all x : univ | x in Influencer implies all y: univ | y->x in follows
  

}


pred inv6 {
	// Influencers post every day
  all x,y,z : univ | x in Day implies y->x in date and z->y in posts and z in Influencer

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  all x,y,z : univ | (x->y in sees and y in Ad) implies z->y posts and (x->z in infollows or y->x in suggested)

}
