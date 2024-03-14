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
    all wk:Workstation | some wk.workers
  	all w:Worker | one wk:Workstation | w in wk.workers

}


pred inv3 {
	// Every component is assembled in one workstation
	all c:Component | one c.workstation
}


pred inv4 {
	// Components must have parts and materials have no parts
    
	all c:Component | some c.parts
  	all m:Material | no m.parts
}


pred inv5 {
	// Humans and robots cannot work together
    all wk:Workstation, h:Human, r:Robot | h in wk.workers => r not in wk.workers

}


pred inv6 {
	// Components cannot be their own parts
    all c : Component | c not in c.^(parts)
  	

}


pred inv7 {
	// Components built of dangerous parts are also dangerous
  	all c:Component, d:Dangerous | d in c.parts => c in Dangerous

}


pred inv8 {
	// Dangerous components cannot be assembled by humans
  	all c:Component, h:Human | c in Dangerous => h not in c.workstation.workers

}


pred inv9 {
	// The workstations form a single line between begin and end
	all disj w,wb : Workstation | wb in begin implies w in wb.^(succ)
  	all w : Workstation | w not in w.^(succ)
  	all w : Workstation | w not in end implies one w.succ
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
  	all c:Component, m:Material, w:Workstation | m not in c.parts implies w not in c.workstation
  }
