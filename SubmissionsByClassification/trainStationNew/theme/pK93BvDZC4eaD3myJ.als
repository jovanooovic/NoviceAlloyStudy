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
  	all t:Track | t in Exit iff all ts:Track | ts not in t.succs
}


pred inv4 {
	// Entry tracks are those without predecessors
	all t:Track | t in Entry iff all ts:Track | t not in ts.succs
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
	all t:Track | t in Junction iff some t1,t2:Track | t1!=t2 and t in t1.succs and t in t2.succs
}


pred inv6 {
	// Entry tracks must have a speed signal
	all e:Entry | some s:Speed | s in e.signals
}


pred inv7 {
	// The station has no cycles
  	
}


pred inv8 {
	// It should be possible to reach every exit from every entry
	all e:Entry | some ex:Exit | e->ex in *succs
}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
	
}


pred inv10 {
	// Every track before a junction has a semaphore
	all t:Track, j:Junction | j in t.succs implies some s:Semaphore | s in t.signals
}
