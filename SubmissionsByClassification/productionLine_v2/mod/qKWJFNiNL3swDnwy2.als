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




pred inv10 {
	// The parts of a component must be assembled before it in the production line
	all w: Workstation, c1, c2: Product | c1 in c2.^(parts) => w in c2.workstation-c1.workstation && w.^(succ) in c1.workstation-c2.workstation
  	

}
