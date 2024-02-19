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
	all w : Worker | w in Human + Robot
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	all w : Workstation | some wo : Worker | w -> wo in workers and all wwo : Worker | one ww : Workstation | ww -> wwo in workers
}


pred inv3 {
	// Every component is assembled in one workstation
	all c : Component | one w : Workstation | c -> w in workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
	all p1, p2 : Product | p1 -> p2 in parts => p1 in Component
}


pred inv5 {
	// Humans and robots cannot work together
	all h : Human, r : Robot, w : Workstation | not (w -> h in workers and w -> r in workers)
}


pred inv6 {
	// Components cannot be their own parts
	all c : Component | c not in c.^parts
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all c : Component | all cc : c.^parts | cc in Dangerous => c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
  	all d : Dangerous, h : Human, w : Workstation | d -> w in workstation => not w -> h in workers 
}


pred inv9 {
	// The workstations form a single line between begin and end
	all w : Workstation | not w in w.^succ
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line

}
