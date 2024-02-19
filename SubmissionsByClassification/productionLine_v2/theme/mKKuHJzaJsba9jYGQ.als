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
	all w:Worker | w in Robot or w in Human
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	(all ws: Workstation | some w: Worker | w in ws.workers) and (all w:Worker |one ws: Workstation | w in ws.workers)
}


pred inv3 {
	// Every component is assembled in one workstation
  all c: Component | one ws: Workstation | ws in c.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
	(all c:Component | some p:Product | p in c.parts) and (all m: Material | no p: Product | p in m.parts)
}


pred inv5 {
	// Humans and robots cannot work together
	all w1: Workstation, r:Robot, h:Human | r in w1.workers implies h not in w1.workers 
}


pred inv6 {
	// Components cannot be their own parts
  	all c: Component | c not in c.^(parts)

}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all c: Component, p: Product |  p in Dangerous and p in c.parts implies c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
	all c: Component, w: Worker, ws: Workstation | c in Dangerous and ws in c.workstation and w in ws.workers implies w in Robot
}


pred inv9 {
	// The workstations form a single line between begin and end
	all ws1,ws2: Workstation | (ws2 in begin and ws1 != ws2) implies ws1 in ws2.^(succ)
  	all ws: Workstation | ws not in ws.^(succ)
  	all ws: Workstation | ws not in end implies one ws.succ
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
	all c1,c2: Component, ws1,ws2: Workstation | ws1 in c1.workstation and ws2 in c2.workstation and c2 in c1.^(parts) implies ws1 in ws2.^(succ)
}
