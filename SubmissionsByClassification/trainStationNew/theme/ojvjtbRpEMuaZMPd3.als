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
	some (Entry & Track)
  	some (Exit & Track)
}


pred inv2 {
	// Signals belong to one track
	
  	signals in Track one -> set Signal
}


pred inv3 {
	
	Track - succs.Track = Exit
}


pred inv4 {
	// Entry tracks are those without predecessors
	Track - Track.succs = Entry 
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
  	
  	Junction = { t : Track | not lone succs.t  }
}


pred inv6 {
	// Entry tracks must have a speed signal
	Entry in signals.Speed
   
}


pred inv7 {
	// The station has no cycles
  	no (iden & ^succs)

}


pred inv8 {
	// It should be possible to reach every exit from every entry
  	Entry->Exit in *succs
  	

}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
	no (Track - succs.Junction).signals :> Semaphore
  	
}


pred inv10 { 
	// Every track before a junction has a semaphore
  	(succs.Junction) <: signals.Semaphore  = succs.Junction 

}
