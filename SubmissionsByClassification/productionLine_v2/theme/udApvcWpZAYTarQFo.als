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
	Worker in Human + Robot
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	Worker.~workers = Workstation
  	all w : Worker | one ww : Workstation | w in ww.workers
}


pred inv3 {
	// Every component is assembled in one workstation
	all c : Component | one c.workstation	
}


pred inv4 {
	// Components must have parts and materials have no parts
	all c : Component | some c.parts
  	no Material.parts
} 


pred inv5 {
	// Humans and robots cannot work together
	all w : Workstation | no w.workers & Robot or no w.workers & Human
}


pred inv6 {
	// Components cannot be their own parts
	no iden & ^parts
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all c : Component | some c.parts & Dangerous implies c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
	no Human & Dangerous.workstation.workers
}


pred inv9 {
	// The workstations form a single line between begin and end
    no iden & ^succ
  	Workstation - begin in Workstation.succ
  	all w : Workstation - end | one w.succ
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
	
}
