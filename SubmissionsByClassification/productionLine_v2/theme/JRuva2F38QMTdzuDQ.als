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
	all w : Worker | w in Human+Robot
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1!=w2 
  	all ws : Workstation | some ws.workers
  	all w : Worker | w in Workstation.workers
}


pred inv3 {
	// Every component is assembled in one workstation
	all c : Component | one c.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
	all m : Material | no m.parts
  	all c : Component | some c.parts
}


pred inv5 {
	// Humans and robots cannot work together
	
  	
  	all w : Workstation | w.workers=w.workers&Robot or w.workers=w.workers&Human
}


pred inv6 {
	// Components cannot be their own parts
  	all c : Component | c not in c.^parts
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all c : Component | all d : Dangerous | d in c.^parts implies c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
	all d : Dangerous | no d.workstation.workers&Human
}


pred inv9 {
	// The workstations form a single line between begin and end
  	
  	
  	
  	no end.succ
  	
  	all ws : Workstation | lone ws.succ
  	
  	Workstation-begin in begin.^succ
  	
  	
  	
	
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
	all c1, c2 : Component | c2 in c1.^parts implies c2.workstation not in c1.workstation.*succ
}
