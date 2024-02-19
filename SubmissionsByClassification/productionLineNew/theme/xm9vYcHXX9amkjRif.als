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
  	
	all x : Worker | x in Robot + Human 
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	all x: Workstation | some (x.workers) && all y: Worker | one (workers.y)
}


pred inv3 {
	// Every component is assembled in one workstation
	all x: Component | one y: Workstation | y in x.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
	all x: Product | (x in Component && some x.parts) || (x in Material && no x.parts)
  
}


pred inv5 {
	// Humans and robots cannot work together
  	all x: Workstation | x.workers in Human or x.workers in Robot
}	


pred inv6 {
	// Components cannot be their own parts
	all x: Component | x not in x.^parts
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
  	all x: Component, y: x.parts | y in Dangerous implies x in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
	all x: Dangerous | x.workstation.workers in Robot
}	


pred inv9 {
	// The workstations form a single line between begin and end
  	all x: Workstation-end-begin | no ^(succ).begin and no end.^(succ) and one x.^(succ) and x not in x.^(succ)
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line

}
