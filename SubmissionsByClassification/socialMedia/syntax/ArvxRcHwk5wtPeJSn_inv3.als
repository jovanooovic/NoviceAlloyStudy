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

all p : Photo-Ad | all u : User | u in sees.x implies some v : User | v in posts.p and u in follows.v


}

