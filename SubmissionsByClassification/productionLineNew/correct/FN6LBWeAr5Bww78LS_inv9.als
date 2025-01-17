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
pred inv9 {
all wc: Workstation | wc not in wc.^succ
all wc: Workstation | (wc in begin and #wc.succ = 1 and all wc2: Workstation - wc | wc2 in wc.^succ) or
(wc in end and wc.succ = none) or
(wc not in begin and wc not in end and #wc.succ = 1 and one wc3: Workstation - wc | wc3.succ = wc)
}

pred inv9c {
	all w : Workstation - end | one w.succ
	no end.succ
	Workstation in begin.*succ
}

check correct { inv9 <=> inv9c}
pred under { inv9 and !inv9c}
pred over { !inv9 and inv9c}
run over 
run under 

