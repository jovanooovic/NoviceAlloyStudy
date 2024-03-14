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
  	all x : Worker | one x & Human or one x & Robot
	
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
  	all x : Workstation | some x.workers
  	all x : Worker | some y : Workstation | one (x & y.workers) - (x & (Workstation-y).workers)

}


pred inv3 {
	// Every component is assembled in one workstation
	all x : Component | some y : Workstation | one (x.workstation & y) + (x.workstation & (Workstation-y))
}	


pred inv4 {
	// Components must have parts and materials have no parts
  	all x : Component | some x.parts
  	all x : Material | no x.parts

}


pred inv5 {
	// Humans and robots cannot work together
  	all x : Workstation | no x.workers & Human or no x.workers & Robot

}


pred inv6 {
	// Components cannot be their own parts
	all x : Component | no x & x.^(parts)
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all x : Component | no x.parts & Dangerous or one x & Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
	
}


pred inv9 {
	// The workstations form a single line between begin and end

}


pred inv10 {
	// The parts of a component must be assembled before it in the production line

}
