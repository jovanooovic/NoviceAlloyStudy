/* 
    Consider the following model of an online CV platform that allows a
    profile to be updated not only by its owner but also by external institutions,
    to certify that the user indeed has produced certain works. 
    Works must have some unique global identifiers, that are used to
    clarify if two works are in fact the same.
*/

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

// Specify the following invariants!
// You can check their correctness with the different commands and
// specifying a given invariant you can assume the others to be true.

pred Inv1 { // The works publicly visible in a curriculum must be part of its profile

}
//SECRET
pred Inv1o {
    all u : User | u.visible in u.profile
}
//SECRET
check Inv1OK {
    (Inv2o and Inv3o and Inv4o and (some ShouldBeRejected iff (Inv1 and not Inv1o))) implies (Inv1 iff Inv1o)
}

pred Inv2 { // A user profile can only have works added by himself or some external institution

}
//SECRET
pred Inv2o {
    all u : User | u.profile.source in Institution+u
}
//SECRET
check Inv2OK {
    (Inv1o and Inv3o and Inv4o and (some ShouldBeRejected iff (Inv2 and not Inv2o))) implies (Inv2 iff Inv2o)
}

pred Inv3 { // The works added to a profile by a given source cannot have common identifiers

}
//SECRET
pred Inv3o {
    all u : User, disj x,y : u.profile | x.source = y.source implies no (x.ids & y.ids)
}
//SECRET
check Inv3OK {
    (Inv1o and Inv2o and Inv4o and (some ShouldBeRejected iff (Inv3 and not Inv3o))) implies (Inv3 iff Inv3o)
}

pred Inv4 { // The profile of a user cannot have two visible versions of the same work

}
//SECRET
pred Inv4o {
	all u : User, disj x,y : u.visible | x not in y.^((u.profile <: ids).~(u.profile <: ids))
}
//SECRET
check Inv4OK {
    (Inv1o and Inv2o and Inv3o and (some ShouldBeRejected iff (Inv4 and not Inv4o))) implies (Inv4 iff Inv4o)
} for 3 but 4 Work, 4 Id


//SECRET
abstract one sig RejectedBy {}
//SECRET
sig ShouldBeRejected extends RejectedBy {}
//SECRET
sig ShouldBeAccepted extends RejectedBy {}
