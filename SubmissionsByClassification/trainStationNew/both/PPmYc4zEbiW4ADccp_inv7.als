sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv7 {
all t:Track | t not in Exit implies some t2:Track | t->t2 in succs
all t:Track | t in Exit implies all t2:Track | t->t2 not in succs
all t:Track | t not in Entry implies some t2:Track | t2->t in succs
all t:Track | t in Entry implies all t2:Track | t2->t not in succs
}

pred inv7c {
	no t : Track | t in t.^succs
}

check correct { inv7 <=> inv7c}
pred under { inv7 and !inv7c}
pred over { !inv7 and inv7c}
run over 
run under 

