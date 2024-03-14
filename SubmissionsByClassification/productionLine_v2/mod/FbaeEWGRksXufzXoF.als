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
pred inv10 {
}

run {
inv1
inv2
inv3
inv4
inv5
inv6
inv7
inv8
inv9
}

pred inv2{

all ws: Workstation | not no ws.workers
all worker: Worker | one ws: Workstation | worker in ws.workers
}

pred inv1{

Worker in (Human+Robot)
}

pred inv4{

all product: Product | product not in Material implies some product.parts
all mat: Material | no mat.parts
}

pred inv3{

all co: Component | one co.workstation
}

pred inv6{

all component: Component | component not in component.^parts
}

pred inv5{

all ws: Workstation | all disj w1, w2: ws.workers | w1 in Human implies w2 in Human
}

pred inv8{

all c: Component | c in Dangerous implies c.workstation.workers in Robot
}

pred inv7{

all c: Component, p : c.parts | p in Dangerous implies c in Dangerous
}

pred inv9{

no (begin - end)
}

pred inv10c {
	all c : Component, p : c.parts | p.workstation in ^succ.(c.workstation)
}

check correct { inv10 <=> inv10c}
pred under { inv10 and !inv10c}
pred over { !inv10 and inv10c}
run over 
run under 

