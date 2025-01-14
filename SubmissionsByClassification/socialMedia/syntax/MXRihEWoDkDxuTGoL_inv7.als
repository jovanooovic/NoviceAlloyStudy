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

all disj x, y, z: User | x->y in follows and y->z in follows and x->z not in follows implies x->z in suggested
all disj x, z : User |some y: User | x->z in suggested impliesx!=y and y!=z and x->z not in follows and x->y in follows and y->z in follows
}

