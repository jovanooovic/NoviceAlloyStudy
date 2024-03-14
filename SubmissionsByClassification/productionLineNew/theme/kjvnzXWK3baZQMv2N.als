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
	all trab : Worker | one w : Workstation |  trab in w.workers 
  	all w : Workstation | #(w.workers)>0 
  
}


pred inv3 {
	// Every component is assembled in one workstation
	all c : Component | one w : Workstation | w in c.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
	all c : Component | #(c.parts)>0
  	all m : Material | #(m.parts)=0
}


pred inv5 {
	// Humans and robots cannot work together
  	
	all w1,w2 : Worker | all x1: Workstation | (w1 in x1.workers and w2 in x1.workers and w1 != w2) implies ((w1 in Human and w2 in Human) or (w1 in Robot and w2 in Robot))
}


pred inv6 {
	// Components cannot be their own parts
	all c : Component | all p : Product | c in p.^parts implies c !=p
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all p1,p2 : Product | (p1 in Dangerous and p1 in p2.parts) implies p2 in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
	all p : Dangerous | all trab : Worker | all w : Workstation| (trab in w.workers and w in p.workstation) implies trab in Robot
}


pred inv9 {
	// The workstations form a single line between begin and end
	
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line

}
