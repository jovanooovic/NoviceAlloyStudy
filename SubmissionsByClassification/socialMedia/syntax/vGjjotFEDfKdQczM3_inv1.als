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

pred inv1{

all x : Photo | some y : User | y->x in posts
all x : PHoto | all y,z : User | y->x in posts and x->y in posts implies y=x

}

