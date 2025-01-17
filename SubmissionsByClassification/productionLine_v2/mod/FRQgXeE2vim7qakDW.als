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
	Worker in (Human+Robot)
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	all ws: Workstation | not no ws.workers
  	all worker: Worker | one ws: Workstation | worker in ws.workers
}


pred inv3 {
	// Every component is assembled in one workstation
	all co: Component | one co.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
    all product: Product | product not in Material implies some product.parts
  	all mat: Material | no mat.parts
}


pred inv5 {
	// Humans and robots cannot work together
    all ws: Workstation | all disj w1, w2: ws.workers | w1 in Human implies w2 in Human
}


pred inv6 {
	// Components cannot be their own parts
    all component: Component | component not in component.^parts 
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
  	all c: Component | all p : c.parts | p in Dangerous implies c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
	all c: Component | c in Dangerous implies c.workstation.workers in Robot
}


pred inv9 {
	// The workstations form a single line between begin and end
	
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
	all w: Workstation | w in begin  implies w not in end
}

run {
	inv1
  	inv2
  	inv3
  	inv4
  	inv5
  	inv6
  	inv7
  	inv8
}
