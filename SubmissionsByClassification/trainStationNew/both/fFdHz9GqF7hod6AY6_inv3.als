sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv3 {
one a:Track|all b:Track-a| a->b not in succs implies a in Exit
}

pred inv3c {
	all t : Track | t in Exit iff no t.succs
}

check correct { inv3 <=> inv3c}
pred under { inv3 and !inv3c}
pred over { !inv3 and inv3c}
run over 
run under 

