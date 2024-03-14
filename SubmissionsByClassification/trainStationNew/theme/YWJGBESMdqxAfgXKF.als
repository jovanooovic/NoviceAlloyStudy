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
	some y:Exit | some z:Entry | y in Track and z in Track 
}


pred inv2 {
	// Signals belong to one track
	all s : Signal |one t : Track |  s in t.signals
}


pred inv3 {
	// Exit tracks are those without successor
  	
  
  	all t: Track | #(t.succs)=0 implies t in Exit  
  	all t: Track |  t in Exit implies #(t.succs)=0
	
}


pred inv4 {
	// Entry tracks are those without predecessors
	all t: Track | #(succs.t)=0 implies t in Entry  
  	all t: Track |  t in Entry implies #(succs.t)=0 
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
	all t : Track | t in Junction implies #(succs.t)>1
  	all t : Track | #(succs.t)>1 implies t in Junction
}


pred inv6 {
	// Entry tracks must have a speed signal
	all e : Entry | some s : Speed | s in e.signals 
}


pred inv7 {
	// The station has no cycles
	all t1,t2 : Track | t1 in t2.^succs implies t1!=t2  
  	
}


pred inv8 {
	// It should be possible to reach every exit from every entry
	all entry : Entry | all exit : Exit | exit in entry.^succs or entry=exit
}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
	all t : Track | all s : Semaphore | (no t.succs & Junction) implies s not in t.signals 
}


pred inv10 {
	// Every track before a junction has a semaphore
  	 all t : Track | some s : Semaphore | (t in succs.Junction ) implies s in t.signals

}
