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
    cposition : one Position
}
sig Resource extends Product {}

// Robots work somewhere in the production line
sig Robot {
        rposition : one Position
}

// Specify the following invariants!
// You can check their correctness with the different commands and
// specifying a given invariant you can assume the others to be true.
pred Inv1 { // A component requires at least one part
	Component in parts.Product
}


pred Inv2 { // A component cannot be a part of itself
	(no iden & ^parts)
}


pred Inv3 { // The position where a component is assembled must have at least one robot
	all c: Component | some rposition.(c.cposition)
}


pred Inv4 { // The parts required by a component cannot be assembled in a later position
    
}
