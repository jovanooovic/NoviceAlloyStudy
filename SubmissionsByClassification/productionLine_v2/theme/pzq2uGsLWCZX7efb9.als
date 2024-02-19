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
  	
  
  
  
  Worker in Human+Robot

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
	
  
  
  
  
  
  all c : Component | some c.parts
  all m : Material | no m.parts

}


pred inv5 {
	// Humans and robots cannot work together
  
  
  
  
  
  all w : Workstation | w.workers in Robot or w.workers in Human

}


pred inv6 {
	// Components cannot be their own parts
  
  	
  	all c,p : univ | c in Component and p in Product and c->p in parts implies p!=c and p->c not in parts and all p1 : Product | p->p1 in parts implies p1->c not in parts
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
  	all c,d : univ | c in Component and d in Dangerous and c->d in parts implies c in Dangerous

}


pred inv8 {
	// Dangerous components cannot be assembled by humans
  	all d,ws : univ | ws in Workstation and d in Dangerous and d->ws in workstation implies all w : Worker | ws->w in workers implies w not in Human

}


pred inv9 {
	// The workstations form a single line between begin and end

}


pred inv10 {
	// The parts of a component must be assembled before it in the production line

}
