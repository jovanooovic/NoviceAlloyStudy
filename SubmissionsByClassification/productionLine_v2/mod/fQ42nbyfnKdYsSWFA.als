sig Workstation {
	workers : set Worker,
	succ : set Workstation
}
one sig begin, end in Workstation {}

sig Worker {}
sig Human, Robot extends Worker {}

abstract sig Product {
	parts : set Product	
	workstation : set Workstation
}

sig Material extends Product {}

sig Component extends Product {
	
}

sig Dangerous in Product {}

// Specify the following properties
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	// Workers are either human or robots
	all w: Worker | w in Human <=> w not in Robot
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	all ws: Workstation | some ws.workers
  	all w: Worker | one ws: Workstation | w in ws.workers
}


pred inv3 {
	// Every component is assembled in one workstation
	all c: Component | one ws: Workstation  | ws in c.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
	all c: Component | some c.parts
  	no Material.parts
} 


pred inv5 {
	// Humans and robots cannot work together
	all ws: Workstation, r: Robot, h: Human | r in ws.workers <=> h not in ws.workers 
}


pred inv6 {
	// Components cannot be their own parts
	all c: Component | c not in c.^(parts)
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all c: Component, p: Product | p in Dangerous && p in c.^(parts) => c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
	all c: Component | c in Dangerous => c.workstation.workers not in Human
}


pred inv9 {
	// The workstations form a single line between begin and end
  	all w: Workstation | w not in Workstation.succ => w in begin 
	all w: Workstation | w not in w.^(succ)
  	all w: Workstation | lone w.succ
  	all w: Workstation | no w.succ => w in end
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
	all w: Workstation, c1, c2: Product | c1 in c2.^(parts) => w in c2.workstation-c1.workstation && w.^(succ) in c1.workstation-c2.workstation
  	

}
