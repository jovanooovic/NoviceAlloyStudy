sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv7 {
all t:Track | t not in t.succs
all disj t1,t2 : Track | (t1 in t2.succs => t2 not in t1.succs) and t2.succs not in t1.succs
all ex:Exit, e:Entry, j:Junction | no ex.succs and e not in j.succs and ex not in j
}

pred inv7c {
	no t : Track | t in t.^succs
}

check correct { inv7 <=> inv7c}
pred under { inv7 and !inv7c}
pred over { !inv7 and inv7c}
run over 
run under 

