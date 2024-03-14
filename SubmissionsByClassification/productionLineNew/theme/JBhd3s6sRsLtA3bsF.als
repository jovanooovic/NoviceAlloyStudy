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
  	all w: Worker | (w in Human || w in Robot)

}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
  	(all w: Workstation | some r: Worker | r in w.workers) && (all w: Worker | one workers.w)

}


pred inv3 {
	// Every component is assembled in one workstation
  	all c: Component | one c.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
  	(all m: Material | no m.parts) && (all c: Component | some c.parts)

}


pred inv5 {
	// Humans and robots cannot work together
  	
	
  	all w: Workstation | w.workers in Robot || w.workers in Human 
}


pred inv6 {
	// Components cannot be their own parts
  	all c: Component | not c in c.^parts
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all c: Component | all x: c.parts | x in Dangerous => c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
  	all c: Component | c in Dangerous => (all w: (c.workstation).workers | w in Robot)

}


pred inv9 {
	// The workstations form a single line between begin and end
  	
	all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
  	all w : Workstation | w not in w.^(succ)
  	all w : Workstation | w not in end implies one w.succ
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
	all c1,c2 : Component | all w1,w2 : Workstation | 
  	w1 in c1.workstation and w2 in c2.workstation and c2 in c1.^(parts) implies
  	w1 in w2.^(succ)
}
