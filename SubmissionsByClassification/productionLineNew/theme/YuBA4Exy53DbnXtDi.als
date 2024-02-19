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
  	all w:Worker| w in Human or w in Robot and (w not in Human or w not in Robot)

}


pred inv2 {
	// Every workstation has workers and every worker works in one workstation
	all w:Workstation| #w.workers>0
  	all w:Worker | #workers.w=1
}


pred inv3 {
	// Every component is assembled in one workstation
	all c :Component | #c.workstation=1
}	


pred inv4 {
	// Components must have parts and materials have no parts
	all c: Component | #c.parts>0
  	all c :Material | no c.parts
}


pred inv5 {
	// Humans and robots cannot work together
	all w:Workstation | w.workers in Human <=> w.workers not in Robot
}


pred inv6 {
	// Components cannot be their own parts
	all c:Component | c not in c.^parts
}


pred inv7 {
	// Components built of dangerous parts are also dangerous
	all c:Component | #c.^parts&Dangerous>0 implies c in Dangerous
}


pred inv8 {
	// Dangerous components cannot be assembled by humans
	all d:Dangerous | (d.workstation).workers in Robot
}


pred inv9 {
	// The workstations form a single line between begin and end
	all w:Workstation | (( w in begin and #w.succ=1 and #succ.w=0  ) or ( w in end and #w.succ=0 and #succ.w=1   ) or ( #w.succ=1 and #succ.w=1 ) or (w in begin and w in end and #w.succ=0 and #succ.w=0)) and w not in w.^succ and w not in ^succ.w
}


pred inv10 {
	// The parts of a component must be assembled before it in the production line
  	all c:Component | c.^parts.workstation in ^succ.(c.workstation)

}
