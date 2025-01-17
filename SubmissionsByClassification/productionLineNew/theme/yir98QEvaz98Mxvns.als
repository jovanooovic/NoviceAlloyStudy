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
  all wk:Workstation | some w:Worker | wk in workers.w and (all w2:Worker | one wk2:Workstation | w2 in wk2.workers)
}

pred inv3 {
	// Every component is assembled in one workstation
  all c:Component | one wk:Workstation | wk in c.workstation
}

pred inv4 {
	// Components must have parts and materials have no parts
  	(all c : Component | some p : Product | c in parts.p) and (all m : Material | no p : Product | m in parts.p)
	
}

pred inv5 {
	// Humans and robots cannot work together
  all h:Human, r:Robot, wk1:Workstation, wk2:Workstation | h in wk1.workers and r in wk2.workers implies wk1 != wk2 
}

pred inv6 {
	// Components cannot be their own parts
  all c:Component | c not in c.^(parts)
}

pred inv7 {
	// Components built of dangerous parts are also dangerous
  all c:Component, p:Product | p in Dangerous and p in c.^(parts) implies c in Dangerous
}

pred inv8 {
	// Dangerous components cannot be assembled by humans
  	all c : Component, wk: Workstation | c in Dangerous and wk in c.workstation implies (all h : Human | h not in wk.workers) 

}

pred inv9 {
	// The workstations form a single line between begin and end
  	all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
  	all w : Workstation | w not in w.^(succ)
  	all w : Workstation | w not in end implies one w.succ
}

pred inv10 {
	// The parts of a component must be assembled before it in the production line
  	all c1,c2 : Component | all w1,w2 : Workstation | w1 in c1.workstation and w2 in c2.workstation and c2 in c1.^(parts) implies w1 in w2.^(succ)
}
