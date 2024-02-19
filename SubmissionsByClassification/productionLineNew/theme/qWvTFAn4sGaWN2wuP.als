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
	all w : Worker | w in Robot or w in Human

}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	(all ws : Workstation | (some w : Worker | w in ws.workers)) and (all w :Worker | one ws : Workstation | ws in workers.w) 
}


pred inv3 {
	// Every component is assembled in one workstation
  	all c : Component | one w : Workstation | w in c.workstation

}


pred inv4 {
	// Components must have parts and materials have no parts
  	(all c : Component | some p: Product | p in c.parts) and (all m : Material | no p : Product| p in m.parts)

}


pred inv5 {
	// Humans and robots cannot work together
	all h : Human | all r : Robot | all ws : Workstation | (r in ws.workers) implies (not(h in ws.workers))
}


pred inv6 {
	// Components cannot be their own parts
	all c : Component | c not in c.^(parts)
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all c : Component | (some d : Dangerous | d in c.parts) implies c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans

}


pred inv9 {
	// The workstations form a single line between begin and end

}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
  	all p : Part | (some c : Component |

}
