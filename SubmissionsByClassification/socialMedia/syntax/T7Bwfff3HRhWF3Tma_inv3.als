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


all x, y : univ | x->y in sees implies y in Ad or All z : univ | z->y in posts implies x->z in follows
}

