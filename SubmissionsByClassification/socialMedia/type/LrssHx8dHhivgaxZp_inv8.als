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


all u: User| all a: Ad | u.sees.a implies a in u.follows.posts or a in u.suggested.posts
}


