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




all u,s : User | s in u.suggested iff( s in u.follows.follows and s not in u.follows and u=!s)

}

