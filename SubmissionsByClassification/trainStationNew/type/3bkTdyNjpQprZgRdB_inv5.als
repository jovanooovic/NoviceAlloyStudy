sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv5{

Junction = Track.{t1 : Track, t2 : Track | t1->t2 in succs and (no (lone succs.t1))}
}

