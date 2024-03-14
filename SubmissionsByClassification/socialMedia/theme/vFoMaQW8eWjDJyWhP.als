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
  	all i : Photo| one u : User | i in u.posts 
 
}


pred inv2 {
	// An user cannot follow itself.
  	all u1,u2: User | u1 = u2 implies u1 not in u1.follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all u : User| all p : Photo | p in u.sees implies ( (p in Ad) or  (p not in Ad and p in u.follows.posts)) 

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  	all p : Photo| all u:User | (p in Ad and p in u.posts) implies ( #(u.posts - Ad)=0) 

}


pred inv5 {
	// Influencers are followed by everyone else
  	all u1,u2: User | u1!=u2 and u1 in Influencer implies (u1 in u2.follows)

}


pred inv6 {
	// Influencers post every day
  	all i:Influencer | #i.posts.date = #Day

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	all u1,u2: User | (u1!=u2 and (u1 not in u2.follows) and (u1 in u2.follows.follows)) <=> (u1 in u2.suggested)
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all u : User, p:u.sees | p in Ad implies (p in u.follows.posts or p in u.suggested.posts)

}
