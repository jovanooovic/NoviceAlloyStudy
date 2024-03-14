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

pred inv8 {
}

run {
inv1
inv2
inv3
inv4
inv5
inv6
inv7
}

pred inv2{

all user: User | user not in user.follows
}

pred inv1{

all p: Photo | one u: User | p in u.posts
}

pred inv4{

all u: User | (some a: Ad | a in u.posts) => u.posts in Ad
}

pred inv3{


all u: User | u.sees - u.follows.posts in Ad

}

pred inv6{

all d: Day, i: Influencer | some p: i.posts | p.date = d
}

pred inv5{

all i: Influencer, u: User | i != u => i in u.follows
}

pred inv7{

all u: User | all f: u.follows | f in u.suggested
}

pred inv8c {
	all u : User, p : u.sees & Ad | p in u.(follows+suggested).posts
}

check correct { inv8 <=> inv8c}
pred under { inv8 and !inv8c}
pred over { !inv8 and inv8c}
run over 
run under 

