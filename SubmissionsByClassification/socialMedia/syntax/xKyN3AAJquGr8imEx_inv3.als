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


all u , y : User | all p : Photo | u in sees.p and y in posts.p and p not in add implies x in follows.y

}

