abstract sig Source {}
sig User extends Source {
    profile : set Work,
    visible : set Work
}
sig Institution extends Source {}

sig Id {}
sig Work {
    ids : some Id,
    source : one Source
}

pred inv1{
	all w : Work | some (User<:visible).w in (User<:profile).w 
}


