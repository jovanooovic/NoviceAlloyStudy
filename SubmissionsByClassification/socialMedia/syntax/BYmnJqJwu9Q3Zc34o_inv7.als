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

pred inv7{

all disj u1, u2 : User | u2 in u1.follows.follows && u2 not in u1.follows => u2 in u1.suggested

