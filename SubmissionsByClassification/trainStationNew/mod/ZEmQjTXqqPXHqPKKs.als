sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}




// Specify the following properties
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	// The station has at least one entry and one exit
	some t : Track | t in Entry
  	some t : Track | t in Exit
}


pred inv2 {
	// Signals belong to one track
	all s : Signal | one t : Track | s in t.signals
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
	
  	
  	
  	
  
  	
	
  	
  	
}


pred inv6 {
	// Entry tracks must have a speed signal
  	all e : Entry | some e.signals&Speed
}


pred inv7 {
	// The station has no cycles
	all t : Track | no t.^succs&t
}


pred inv8 {
	// It should be possible to reach every exit from every entry
	all ex : Exit | all en : Entry | ex in en.^succs
}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores

}


pred inv10 {
	// Every track before a junction has a semaphore

}
