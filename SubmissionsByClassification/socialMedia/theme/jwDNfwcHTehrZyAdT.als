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
  	
  	all x : Photo | one posts.x

}


pred inv2 {
	// An user cannot follow itself.
  	all x : User | x not in follows.x

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
  	all x : User | all y : Photo-Ad |  y in x.sees implies y in x.follows.posts 

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
	all x : User | all p : Photo-Ad | all a : Ad | a in x.posts implies p not in x.posts 
}


pred inv5 {
	// Influencers are followed by everyone else
	all y : Influencer | all x : User  | x != y implies x in follows.y

}


pred inv6 {
	// Influencers post every day
  	all i : Influencer | all d : Day | d in i.posts.date 

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all x,y : User | y in x.suggested iff( (x not in follows.y) and 
    										  ( some z : User | (z in follows.y) and (z in x.follows) ) and
  											  (x!=y))
  													   
}


pred inv8 {
	// An user only sees ads from followed or suggested users
  	all u : User | all a : Ad | a in u.sees implies (a in u.follows.posts) or ( a in u.suggested.posts)

}
