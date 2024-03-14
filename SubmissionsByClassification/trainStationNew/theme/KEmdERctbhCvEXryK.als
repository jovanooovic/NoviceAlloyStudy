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
	some Entry and some Exit
}


pred inv2 {
	// Signals belong to one track
	all s : Signal | one signals.s
}


pred inv3 {
	// Exit tracks are those without successor
  	
  	
  	all e : Track | e in Exit iff (all t : Track | t not in e.succs)
}


pred inv4 {
	// Entry tracks are those without predecessors
	
  	all e : Track | e in Entry iff (all t : Track | t not in succs.e)
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
	all j : Track | j in Junction iff (not lone succs.j)
}


pred inv6 {
	// Entry tracks must have a speed signal
	all e : Entry | some s : Speed | s in e.signals
}


pred inv7 {
	// The station has no cycles
  	
  	all x : Track | x not in x.^(succs)
}


pred inv8 {
	// It should be possible to reach every exit from every entry
  	
  	
}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
	
  	all t : Track | (all j : Junction | j not in t.succs) implies (all s : Semaphore | s not in t.signals)
}


pred inv10 {
	// Every track before a junction has a semaphore
	
  	all t : Track, j : Junction | (j in t.succs) implies (some s : Semaphore | s in t.signals)
}
