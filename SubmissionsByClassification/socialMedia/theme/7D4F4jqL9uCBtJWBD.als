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
  
  
  
  
  
  
  
  
  all x: Photo | one posts.x 
}


pred inv2 {
	// An user cannot follow itself.
    all x: User | x not in follows.x
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
 	all x: User | all p: Photo | x in sees.p => (p in (x.follows).posts || p in Ad)
}



pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
  	all x: User | some y: Photo | y in x.posts && y in Ad => all p: Photo | p in x.posts => p in Ad

}


pred inv5 {
	// Influencers are followed by everyone else
   	all x, y: User | y in Influencer && y != x => y in x.follows 
}


pred inv6 {
	// Influencers post every day
  	all x: User | x in Influencer => all d: Day | d in x.posts.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
  	all x: User | all z: User-x| x in z.suggested && x not in z.follows => (some y: z.follows | x in y.follows && x!=y)
    
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all x: User | all p: Photo | p in Ad && p in x.sees => some u: User | (u in x.suggested || u in x.follows) && p in u.posts
}
