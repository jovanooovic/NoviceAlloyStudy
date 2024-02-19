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

}


pred inv2 {
	// Signals belong to one track

}


pred inv3 {
	// Exit tracks are those without successor

}


pred inv4 {
	// Entry tracks are those without predecessors

}


pred inv5 {
	// Junctions are the tracks with more than one predecessor

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

}
