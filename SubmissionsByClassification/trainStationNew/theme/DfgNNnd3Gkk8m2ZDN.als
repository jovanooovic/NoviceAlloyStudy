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
	some ex : Exit | some e : Entry | ex in Track or e in Track
}	


pred inv2 {
	// Signals belong to one track
  	
	all s : Signal | one signals.s
}


pred inv3 {
	// Exit tracks are those without successor
  	all t : Track | no t.succs implies t in Exit
 	all e : Exit | no e.succs
  	
}


pred inv4 {
	// Entry tracks are those without predecessors
 	all e : Entry | e not in Track.^succs
  	all t : Track | t not in Track.^succs implies t in Entry
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
	
  	
  
  	all j : Junction | #(succs.j) > 1
	all t : Track | #(succs.t) > 1 implies t in Junction
}


pred inv6 {
	// Entry tracks must have a speed signal
	all e : Entry | some s : Speed | s in e.signals
  	
}


pred inv7 {
	// The station has no cycles
  	all t : Track | t not in t.^succs
}


pred inv8 {
	// It should be possible to reach every exit from every entry
	all e : Entry | Exit in e.^succs
}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
	all t : Track | all j : Junction | all s : Semaphore | j not in t.succs implies s not in t.signals
}


pred inv10 {
	// Every track before a junction has a semaphore
	
  	
}
