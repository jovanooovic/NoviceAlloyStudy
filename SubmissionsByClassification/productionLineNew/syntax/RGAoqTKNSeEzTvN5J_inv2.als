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
pred inv2{

all x: Workstation | some y : Worker | y in x.workers
all x: Worker | all y, z : Workstation | x in y.workes and x in z.workers implies y = z
}

