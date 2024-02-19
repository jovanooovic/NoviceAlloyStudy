sig Workstation {
	workers : set Worker,
	succ : set Workstation
}
one sig begin, end in Workstation {}

sig Worker {}
sig Human, Robot extends Worker {}

abstract sig Product {
	parts : set Product	
}

sig Material extends Product {}

sig Component extends Product {
	workstation : set Workstation
}

sig Dangerous in Product {}

// Specify the following properties
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	// Workers are either human or robots

}
//SECRET
pred inv1o {
	Worker = Human + Robot	
}
//SECRET
check inv1 {
	inv1 iff inv1o
} for 2

pred inv2 {
	// Every workstation has workers and every worker works in one workstation

}
//SECRET
pred inv2o {
	workers in Workstation one -> some Worker
}
//SECRET
check inv2 {
	inv1o implies
	(inv2 iff inv2o)
} for 2

pred inv3 {
	// Every component is assembled in one workstation

}
//SECRET
pred inv3o {
	all c : Component | one c.workstation
}
//SECRET
check inv3 {
	inv1o and inv2o implies
	(inv3 iff inv3o)
} for 2

pred inv4 {
	// Components must have parts and materials have no parts

}
//SECRET
pred inv4o {
	all c : Component | some c.parts
	all m : Material | no m.parts	

}
//SECRET
check inv4 {
	inv1o and inv2o and inv3o implies
	(inv4 iff inv4o)
} for 2

pred inv5 {
	// Humans and robots cannot work together

}
//SECRET
pred inv5o {
	all c : Workstation | no (c.workers & Human) or no (c.workers & Robot)
}
//SECRET
check inv5 {
	inv1o and inv2o and inv3o and inv4o implies
	(inv5 iff inv5o)
} for 2

pred inv6 {
	// Components cannot be their own parts

}
//SECRET
pred inv6o {
	no c : Component | c in c.^parts
}
//SECRET
check inv6 {
	inv1o and inv2o and inv3o and inv4o and inv5o implies
	(inv6 iff inv6o)
} for 3

pred inv7 {
	// Components built of dangerous parts are also dangerous

}
//SECRET
pred inv7o {
	all c : Component | some c.parts & Dangerous implies c in Dangerous
}
//SECRET
check inv7 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o implies
	(inv7 iff inv7o)
} for 3

pred inv8 {
	// Dangerous components cannot be assembled by humans

}
//SECRET
pred inv8o {
	all c : Component & Dangerous | no c.workstation.workers & Human
}
//SECRET
check inv8 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o implies
	(inv8 iff inv8o)
} for 3

pred inv9 {
	// The workstations form a single line between begin and end

}
//SECRET
pred inv9o {
	all w : Workstation - end | one w.succ
	no end.succ
	Workstation in begin.*succ
}
//SECRET
check inv9 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o and inv8o implies
	(inv9 iff inv9o)
} for 4

pred inv10 {
	// The parts of a component must be assembled before it in the production line

}
//SECRET
pred inv10o {
	all c : Component, p : c.parts | p.workstation in ^succ.(c.workstation)
}
//SECRET
check inv10 {
	inv1o and inv2o and inv3o and inv4o and inv5o and inv6o and inv7o and inv8o and inv9o implies
	(inv10 iff inv10o)
} for 4
