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


pred Inv2 { // A user profile can only have works added by himself or some external institution

}


pred Inv3 { // The works added to a profile by a given source cannot have common identifiers

}


pred Inv4 { // The profile of a user cannot have two visible versions of the same work
    
}
