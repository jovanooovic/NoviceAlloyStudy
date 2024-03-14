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
  all w : Worker | w in Robot or w in Human

}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
  	all ws : Workstation | some w : Worker | ws->w in workers
	all w : Worker | one ws : Workstation | ws->w in workers

}

pred inv3 {
	// Every component is assembled in one workstation
  all c : Component | one ws : Workstation | c->ws in workstation 

}


pred inv4 {
	// Components must have parts and materials have no parts
	all c : Component | some p : Product | c->p in parts
	all m : Material| no p : Product | m->p  in parts

}


pred inv5 {
	// Humans and robots cannot work together
  all w1,w2 : Worker | all ws :  Workstation | (ws->w1 in workers and ws->w2 in workers and w2 in Human) implies (w1 in Human)

}
pred inv6 {
	// Components cannot be their own parts
  all c : Component |c not in c.^(parts)
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
all c : Component | all p : Product | p in Dangerous and p in c.^(parts) implies c in Dangerous}


pred inv8 {
	// Dangerous components cannot be assembled by humans

}


pred inv9 {
	// The workstations form a single line between begin and end

}


pred inv10 {
	// The parts of a component must be assembled before it in the production line

}
