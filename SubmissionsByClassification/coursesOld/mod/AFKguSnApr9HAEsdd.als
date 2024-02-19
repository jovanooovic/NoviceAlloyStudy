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
	
  	all w : Worker | w in Human or w in Robot 

}


pred inv2 {
	
  	(all ws : Workstation | some w : Worker | ws->w in workers)
	and
	(all w : Worker | one ws : Workstation | ws->w in workers)

}


pred inv3 {
	
  	all c : Component | one ws : Workstation | c->ws in workstation

}


pred inv4 {
	
  	(all c : Component | some p : Product | c->p in parts)
	and
	(all m : Material | no p : Product | m->p in parts)
}


pred inv5 {
	
  	all ws : Workstation | all w1,w2 : Worker | 
  	(ws->w1 in workers and ws->w2 in workers and w1 in Human) 
  	implies (w2 in Human)
	
} 


pred inv6 {
	
  	all c : Component | c not in c.^(parts)

}

pred inv7 {
	
  	all c : Component | all p : Product | p in Dangerous and p in c.^(parts) implies c in Dangerous

}


pred inv8 {
	
  	all c : Component | all w: Workstation |
  	c in Dangerous and w in c.workstation implies
  	(all h : Human | h not in w.workers)

}


pred inv9 {
	
	all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
  	all w : Workstation | w not in w.^(succ)
  	all w : Workstation | w not in end implies one w.succ
}


pred inv10 {
	
  	all c1,c2 : Component | all w1,w2 : Workstation | 
  	w1 in c1.workstation and w2 in c2.workstation and c2 in c1.^(parts) implies
  	w1 in w2.^(succ)

}
