sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv8{

all t1: Track, t2: t.^succs | some t1&Entry implies some t2&Exit
}

