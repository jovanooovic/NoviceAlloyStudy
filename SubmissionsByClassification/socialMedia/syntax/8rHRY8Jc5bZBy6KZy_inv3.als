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


all p : Photo, u1,u2 : User : univ | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u : User | ad in u.sees
all p : Photo, u : User | p in u.posts implies p not in u.sees

}

