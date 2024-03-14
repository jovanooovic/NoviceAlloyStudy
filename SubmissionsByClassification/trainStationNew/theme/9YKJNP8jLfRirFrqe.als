sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

// Specify the following properties
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	// The station has at least one entry and one exit
	some Entry
  	some Exit
}


pred inv2 {
	// Signals belong to one track
	all s:Signal | one t:Track | s in t.signals
}


pred inv3 {
	// Exit tracks are those without successor
  	
  	all t1,t2:Track | t2 in t1.succs implies no (t1 & Exit)
  	
  	all t1:Track | no (t1 & Exit) implies (some t2:Track | t2 in t1.succs)
}


pred inv4 {
	// Entry tracks are those without predecessors
  	
	all t1,t2:Track | t1 in t2.succs implies no (t1 & Entry)
  	
  	all t1:Track | no (t1 & Entry) implies (some t2:Track | t1 in t2.^succs)
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
  	
	all t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs and t1!=t2 and t1!=t3 implies one (Junction & t1)
  	all t1:Track | lone (t1 & Track.succs) implies no (Junction & t1)
}


pred inv6 {
	// Entry tracks must have a speed signal
	
}


pred inv7 {
	// The station has no cycles
	
}


pred inv8 {
	// It should be possible to reach every exit from every entry

}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores

}


pred inv10 {
	// Every track before a junction has a semaphore
  	all t1,t2:Track,s:Signal | t2 in t1.succs and Junction in t2 implies s in Semaphore and s in t1.signals

}
