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

pred inv3{


all u:User | none u.sees-u.follows.posts.Photo-Ad




all u:User | none u.sees.Ad-Ad
}

