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
	all w:Worker | w in Human or w in Robot
}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation

  
all a1,a2:Workstation | (some b:Worker | a1->b in workers and a2->b in workers) implies a1 = a2
all b:Worker | some a:Workstation | a->b in workers
all a:Workstation | some b:Worker | a->b in workers
}


pred inv3 {
	// Every component is assembled in one workstation

  
  all a:Component | some b:Workstation | a->b in workstation
  all a1,a2:Workstation | (some b:Component | b->a1 in workstation and b->a2 in workstation) implies a1 = a2

}


pred inv4 {
	// Components must have parts and materials have no parts
	
  
  	  all a:Component | some b:Product | a->b in parts
  		all a:Product,b:Product | a->b in parts implies a in Component

}


pred inv5 {
	// Humans and robots cannot work together

  

	
	all w:Workstation | w.workers in Human or w.workers in Robot
}


pred inv6 {
	// Components cannot be their own parts
  
  	all p:Product | p->p  not in ^parts

}


pred inv7 {
	// Components built of dangerous parts are also dangerous

  all p:Product | (some d:Dangerous | d in p.^parts) implies p in Dangerous

}


pred inv8 {
	// Dangerous components cannot be assembled by humans
  no Human&(Dangerous.workstation).workers


}


pred inv9 {
	// The workstations form a single line between begin and end


	succ in Workstation lone -> lone Workstation
	Workstation in begin.*succ
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line

}
