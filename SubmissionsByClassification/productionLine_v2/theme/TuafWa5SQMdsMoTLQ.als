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
  	all w : Worker | w in Human or w in Robot
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	(all ws : Workstation | ws.workers != none) and (all w : Worker | one ws : Workstation | w in ws.workers)
}


pred inv3 {
	// Every component is assembled in one workstation
  	all c : Component | one ws : Workstation | ws in c.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
  	all c : Component | some p : Product | p in c.parts
  	all m : Material | no p : Product | p in m.parts
}


pred inv5 {
	// Humans and robots cannot work together
  	all ws : Workstation | all w1, w2 : Worker | (w1 in ws.workers and w2 in ws.workers and w1 = Human) implies w2 = Human
}


pred inv6 {
	// Components cannot be their own parts
  	all c : Component | c not in c.^(parts)
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
  	all c : Component | all p : Product | (p in Dangerous and p in c.^(parts)) implies c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
  	all c : Component | all ws : Workstation | c in Dangerous and ws in c.workstation implies
  	(all h : Human | h not in ws.workers)
}


pred inv9 {
	// The workstations form a single line between begin and end
  	all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)
  	all ws : Workstation | ws not in ws.^(succ)
  	all ws : Workstation | (ws not in end) implies one ws.succ

}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
	all c1,c2 : Component | all w1,w2 : Workstation | w1 in c1.workstation and w2 in c2.workstation and c2 in c1.^(parts) implies w1 in w2.^(succ)
}
