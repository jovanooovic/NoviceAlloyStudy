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

pred inv8{

all u:User | all a : u.seess & Ad | some p : User | a in p.posts and p in (u.follows + u.suggested)
}


