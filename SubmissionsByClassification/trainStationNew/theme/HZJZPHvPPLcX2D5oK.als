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
	all s : Signal | one signals.s
}

pred inv3 {
	// Exit tracks are those without successor
	all t : Track | no t.succs <=> t in Exit
}


pred inv4 {
	// Entry tracks are those without predecessors
	all t : Track | t not in Track.succs <=> t in Entry
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
	all t : Track | not lone succs.t <=> t in Junction
  }


pred inv6 {
	// Entry tracks must have a speed signal
	all e : Entry | some s : Speed | s in e.signals  
}


pred inv7 {
	// The station has no cycles
	no ^succs & iden
}


pred inv8 {
	// It should be possible to reach every exit from every entry
	all e : Entry | Exit in e.*succs 
}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
	all t : Track | no (Junction & t.succs) => no (Semaphore & t.signals)
}


pred inv10 {
	// Every track before a junction has a semaphore
	all t : Track | some (Junction & t.succs) => some (Semaphore & t.signals)
}
