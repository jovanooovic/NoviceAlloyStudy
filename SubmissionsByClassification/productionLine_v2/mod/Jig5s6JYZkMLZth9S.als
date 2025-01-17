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
  	
	all s : Workstation | some w : Worker | w in s.workers
  	all w : Worker | one s : Workstation | w in s.workers
  
  	
  	

}


pred inv3 {
	// Every component is assembled in one workstation
  	all c : Component | one w : Workstation | w in c.workstation

}


pred inv4 {
	// Components must have parts and materials have no parts
  	all c : Component | some p : Product | p in c.parts
  	all m : Material | all p : Product | p not in m.parts

}


pred inv5 {
	// Humans and robots cannot work together
  	all s : Workstation | all w1, w2 : Worker | w1 in s.workers and w2 in s.workers and w1 in Human implies w2 not in Robot

}


pred inv6 {
	// Components cannot be their own parts
  	all c : Component | c not in c.^parts

}


pred inv7 {
	// Components built of dangerous parts are also dangerous
  	all c1 : Component | all c2 : Product | c2 in Dangerous and c2 in c1.^parts implies c1 in Dangerous

}


pred inv8 {
	// Dangerous components cannot be assembled by humans
  	all c : Component | c in Dangerous implies some r : Robot | some w : Workstation | r in w.workers and w in c.workstation 

}


pred inv9 {
	// The workstations form a single line between begin and end
  	
 
  	all w, wb : Workstation | wb in begin and w!=wb implies w in wb.^(succ)
  	all w : Workstation | w not in w.^succ
  	
  	all w : Workstation | w not in end implies one w.succ
  	
  
  	
  	
  	

}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
  	all c : Component | all p : Component | all w, wa : Workstation | w in c.worksation and p in c.^parts and wa in p.workstation implies w in wa.^succ
