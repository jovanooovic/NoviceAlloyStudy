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
	all x : Signal | some t : Track | x in t.signals and no x & (Track-t).signals
}


pred inv3 {
	// Exit tracks are those without successor
	no Exit.succs
}


pred inv4 {
	// Entry tracks are those without predecessors
  	no succs.Entry

}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
	all x : Junction | some succs.x
}


pred inv6 {
	// Entry tracks must have a speed signal
  	all x : Entry | some Speed & x.signals

}


pred inv7 {
	// The station has no cycles
	all x : Track | x not in x.^succs
}


pred inv8 {
	// It should be possible to reach every exit from every entry
  	all x : Entry | Exit in x.*succs

}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
  	all x : Track | no Junction & x.succs implies no Semaphore & x.signals
}


pred inv10 {
	// Every track before a junction has a semaphore
  	all x : Track | some Junction & x.succs implies some Semaphore & x.signals
}
