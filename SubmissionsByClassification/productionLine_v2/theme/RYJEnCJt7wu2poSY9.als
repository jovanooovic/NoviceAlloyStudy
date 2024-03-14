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
  	all ws : Workstation | some w : Worker | ws->w in workers 
  	workers in Workstation one -> set Worker

}


pred inv3 {
	// Every component is assembled in one workstation
  	workstation in Component set -> one Workstation

}


pred inv4 {
	// Components must have parts and materials have no parts
  	all c : Component | some p : Product | c->p in parts
  	all m,p : univ | m in Material and p in Product implies not m->p in parts

}


pred inv5 {
	// Humans and robots cannot work together
  	all ws,r : univ | ws in Workstation and r in Robot and ws->r in workers implies all w : Worker | ws->w in workers implies w not in Human
    all ws,h : univ | ws in Workstation and h in Human and ws->h in workers implies all w : Worker | ws->w in workers implies w not in Robot

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
