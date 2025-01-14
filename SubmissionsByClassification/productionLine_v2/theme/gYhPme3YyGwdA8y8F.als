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
	// 
	Worker = Human + Robot
	
	
	
  	
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	
  	all w:Worker | one workers.w
  	
  	
  	Workstation = workers.Worker
}


pred inv3 {
	// Every component is assembled in one workstation
	all c:Component | one c.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
	
	
  	
  	parts.Product = Component
  	
}


pred inv5 {
	// Humans and robots cannot work together
	
  	
	no workers.Human & workers.Robot
}


pred inv6 {
	// Components cannot be their own parts
	
  	no iden & ^parts
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	
  	all c:Component | some c.parts & Dangerous implies c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
  	all c:Component,ws:c.workstation | c in Dangerous implies no w: ws.workers | w in Human
  	all c:Dangerous,ws:c.workstation | no w: ws.workers | w in Human
  	all c:Dangerous,ws:c.workstation,w: ws.workers | w not in Human
  	all c:Dangerous | no c.workstation.workers & Human
  	no Dangerous.workstation.workers & Human

}


pred inv9 {
	// The workstations form a single line between begin and end
	all w:Workstation-end | one w.succ
  	no end.succ
  	Workstation in begin.*succ
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line

}
