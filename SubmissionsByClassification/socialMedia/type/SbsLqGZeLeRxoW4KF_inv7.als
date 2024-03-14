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

all u1,u2 : User | u2 in (u1 != u2 and u2 in u1.follows.follows and not (u2 in u1.follows)) implies u1.suggested

}
