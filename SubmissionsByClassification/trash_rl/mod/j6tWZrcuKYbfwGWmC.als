sig User {
	, follows : set User
	, sees : set Photo
	, posts : set Photo
	, suggested : set User
}

sig Influencer extends User {}

sig Photo {
	, date : one Day
}

sig Ad extends Photo {}

sig Day {}





pred inv1 {
	
	all x : Photo | one posts.x
	
}


pred inv2 {
	
	all x : User | x not in x.follows
}


pred inv3 {
	
	
	
}


pred inv4 {
	

}


pred inv5 {
	

}


pred inv6 {
	

}


pred inv7 {
	

}


pred inv8 {
	

}
