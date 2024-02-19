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
  	signals in Track one -> set Signal
	
}


pred inv3 {
	// Exit tracks are those without successor
	Track - succs.Track = Exit
}


pred inv4 {
	// Entry tracks are those without predecessors
	Entry = Track - ~succs.Track
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
	
  	Junction = { t : Track | not lone succs.t }
}


pred inv6 {
	// Entry tracks must have a speed signal
  	all e:Entry | some s:Speed | s in e.signals

}


pred inv7 {
	// The station has no cycles
  	no (iden & ^succs)
}


pred inv8 {
	// It should be possible to reach every exit from every entry
  	Entry -> Exit in *succs

}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
	no (Track - succs.Junction).signals :> Semaphore
}


pred inv10 {
	// Every track before a junction has a semaphore
  	all t : Track, j : Junction | some s : Semaphore | j in t.succs => s in t.signals

}
