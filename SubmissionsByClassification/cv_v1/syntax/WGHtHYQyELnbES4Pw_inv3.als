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

pred inv3{
	all u: User | all disj w1, w2: a.profile | (w1.source = w2.source) implies no (w1.ids & w2.ids)
}


