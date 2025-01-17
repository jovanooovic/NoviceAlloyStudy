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

pred inv8{

all ad: Ad | all user1, user2: User |  (ad in user2.posts and (user2 in user1.follows or user2 in user1.suggested) implies ad in user1.sees
}


