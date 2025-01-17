sig Workstation {
	workers : set Worker,
	succ : set Workstation
}
one sig Begin, End in Workstation {}

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
	all w : Workstation | some w.workers
  	all w : Worker | one workers.w
}


pred inv3 {
	// Every component is assembled in one workstation
	all c : Component | one c.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
	all c : Component | some c.parts
  	all m : Material | no m.parts
}


pred inv5 {
	// Humans and robots cannot work together
	all w : Workstation | w.workers in Human or w.workers in Robot
}


pred inv6 {
	// Components cannot be their own parts
	no (^parts & iden)
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all c : Component | some (c.parts & Dangerous) => c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
	all c : Component | c in Dangerous => c.workstation.workers not in Human
}


pred inv9 {
	// The workstations form a single line between begin and end
  	all w : Workstation | no succ.w <=> w = Begin
  	all w : workstation | no w.succ <=> w = End
  
  	
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
	all c : Component | c.parts.workstation in (^succ).(c.workstation)
}
