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

pred inv6{

all i : Influencer | all d : Day | some p : Photo | d implies ((p in posts.i) and (d in date.p))

}

