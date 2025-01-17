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

pred inv4{

some p : Photo, u : User | p in u.posts and p = Ad implies all x in u.posts | x = Ad
}

