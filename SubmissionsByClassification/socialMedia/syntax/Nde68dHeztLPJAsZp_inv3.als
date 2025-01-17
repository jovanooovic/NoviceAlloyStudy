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


all u:User, p:Photo | u->p in sees implies ( some u2:Person | u2->p in posts and u->u2 in follows) or p in Ad

}

