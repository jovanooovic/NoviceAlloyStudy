open util/ordering[Position]

// Consider the following model of an automated production line
// The production line consists of several positions in sequence
sig Position {}

// Products are either components assembled in the production line or 
// other resources (e.g. pre-assembled products or base materials)
sig Product {}

// Components are assembled in a given position from other parts
sig Component extends Product {
    parts : set Product,
    position : one Position
}
sig Resource extends Product {}

// Robots work somewhere in the production line
sig Robot {
        position : one Position
}

// Specify the following invariants!
// You can check their correctness with the different commands and
// specifying a given invariant you can assume the others to be true.
pred Inv1 { // A component requires at least one part

}
//SECRET
pred Inv1o {
    all c : Component | some c.parts
}
//SECRET
check Inv1OK {
    (Inv2o and Inv3o and Inv4o and (some ShouldBeRejected iff (Inv1 and not Inv1o))) implies (Inv1 iff Inv1o)
}

pred Inv2 { // A component cannot be a part of itself

}
//SECRET
pred Inv2o {
    all c : Component | c not in c.^parts
}
//SECRET
check Inv2OK {
    (Inv1o and Inv3o and Inv4o and (some ShouldBeRejected iff (Inv2 and not Inv2o))) implies (Inv2 iff Inv2o)
}

pred Inv3 { // The position where a component is assembled must have at least one robot

}
//SECRET
pred Inv3o {
    all c : Component | some position.(c.position) & Robot
}
//SECRET
check Inv3OK {
    (Inv1o and Inv2o and Inv4o and (some ShouldBeRejected iff (Inv3 and not Inv3o))) implies (Inv3 iff Inv3o)
}

pred Inv4 { // The parts required by a component cannot be assembled in a later position
    
}
//SECRET
pred Inv4o {
    all c : Component, p : c.parts & Component | lte[p.position,c.position]
}
//SECRET
check Inv4OK {
    (Inv1o and Inv2o and Inv3o and (some ShouldBeRejected iff (Inv4 and not Inv4o))) implies (Inv4 iff Inv4o)
}

//SECRET
abstract one sig RejectedBy {}
//SECRET
sig ShouldBeRejected extends RejectedBy {}
//SECRET
sig ShouldBeAccepted extends RejectedBy {}
