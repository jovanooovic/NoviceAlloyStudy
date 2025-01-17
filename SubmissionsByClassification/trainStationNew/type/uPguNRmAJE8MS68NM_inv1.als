sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv1{

all t:Track | some entry:Entry, exit:Exit | (entry + exit) & t.^succs
}

