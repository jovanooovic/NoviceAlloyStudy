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
	all w : Worker | w in (Human + Robot)
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	all ws : Workstation | some ws.workers
  	all w : Worker | one workers.w
}


pred inv3 {
	// Every component is assembled in one workstation
	all c : Component | one c.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
	all p : Product | p in Component implies some p.parts
  	all p : Product | p in Material implies no p.parts
}


pred inv5 {
	// Humans and robots cannot work together
	all h : Human, r : Robot | no (workers.h & workers.r)
}


pred inv6 {
	// Components cannot be their own parts
	all c : Component | c not in c.^(parts)
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all c : Component | some (c.^(parts) & Dangerous) implies c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
	all c : Component, h : Human | c in Dangerous implies (h not in c.workstation.workers)
}


pred inv9 {
	// The workstations form a single line between begin and end
	
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
	
}
