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
	some x: Entry, y : Exit | x in Track && y in Track
}


pred inv2 {
	// Signals belong to one track
  	all x: Signal | one y : Track | x in y.signals
}


pred inv3 {
	// Exit tracks are those without successor
  	all x : Track | x in Exit <=> no x.^(succs)

}


pred inv4 {
	// Entry tracks are those without predecessors
	all x: Track | x in Entry <=> no ^(succs).x
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
	all x: Track | x in Junction <=> #(succs.x) > 1
}


pred inv6 {
	// Entry tracks must have a speed signal
	all x: Entry | some y: x.signals | y in Speed
}


pred inv7 {
	// The station has no cycles
  	all x: Track | x not in x.^(succs)

}


pred inv8 {
	// It should be possible to reach every exit from every entry
	all x : Track, y:Track-x | x in Entry && y in Exit => y in x.^(succs)
}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
  	all x : Track | no x.succs & Junction => no x.signals & Semaphore
}


pred inv10 {
	// Every track before a junction has a semaphore
  	all x: Track, j: Junction | some s: Semaphore | j in x.succs implies s in x.signals
}
