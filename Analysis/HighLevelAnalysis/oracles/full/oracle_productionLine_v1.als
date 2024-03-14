
// A component requires at least one part
pred Inv1o {
    all c : Component | some c.parts
}

// A component cannot be a part of itself
pred Inv2o {
    all c : Component | c not in c.^parts
}

// The position where a component is assembled must have at least one robot
pred Inv3o {
    all c : Component | some position.(c.position) & Robot
}

// The parts required by a component cannot be assembled in a later position
pred Inv4o {
    all c : Component, p : c.parts & Component | lte[p.position,c.position]
}