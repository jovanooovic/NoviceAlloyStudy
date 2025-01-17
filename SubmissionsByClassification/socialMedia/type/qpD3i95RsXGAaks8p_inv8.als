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

all u : User, p : Ad |
p in u.sees iff
p in u.follows.posts.Ad or p in u.suggested.posts.Ad

}


