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
     
      all p : Photo | one u:User | u->p in posts
      all p: Photo | all u,v: User |u->p in posts and v->p in posts implies u=v
}


pred inv2 {
	// An user cannot follow itself.
    all x,y: User | x->y in follows implies x!=y
}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	// Ads can be seen by everyone.
    all u:User | u.sees-Ad in u.follows.posts

}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads 
    all x:User | some a:Ad | x->a in posts implies x.posts in Ad
}


pred inv5 {
	// Influencers are followed by everyone else
    all i:Influencer| (User-i) -> i in follows
}


pred inv6 {
	// Influencers post every day
    all i:Influencer| all z:Day | z in i.posts.date
}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	all x:User | x.suggested in x.follows.follows and x.suggested not in x.follows
}


pred inv8 {
	// An user only sees ads from followed or suggested users
    all x:User | x.sees in Ad implies x.sees in x.follows.posts or x.sees in x.suggested.posts
}
