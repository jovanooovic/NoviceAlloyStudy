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

all x : User | all a : x.sees | a in Ad => a in x.follows.posts or a in x.suggested.post
}


