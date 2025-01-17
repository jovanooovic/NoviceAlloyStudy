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

pred inv4{
    all u : User, w1, w2 : Work | u.profile & visible.w1 & not visible.w2 implies w1 = w2
}



