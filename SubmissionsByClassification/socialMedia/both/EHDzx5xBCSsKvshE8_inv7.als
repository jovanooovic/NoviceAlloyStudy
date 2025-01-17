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

pred inv7 {
all i: Influencer, u: User |i not in u.suggested
all u: User | u in User.follows  => u in User.suggested
all u: User | not (u in User.follows) => not (u in User.suggested)
all u: User | u not in u.suggested and u.follows not in u.suggested
}

pred inv7c {
	all u : User | u.suggested = u.follows.follows - u.follows - u
}

check correct { inv7 <=> inv7c}
pred under { inv7 and !inv7c}
pred over { !inv7 and inv7c}
run over 
run under 

