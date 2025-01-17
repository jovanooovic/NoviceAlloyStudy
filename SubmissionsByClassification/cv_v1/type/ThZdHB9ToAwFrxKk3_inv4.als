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
    all u:User, w1,w2:Work, i:Id | (w1 in u.visible and w2 in u.visible) implies no (w1.i & w2.i)
}



