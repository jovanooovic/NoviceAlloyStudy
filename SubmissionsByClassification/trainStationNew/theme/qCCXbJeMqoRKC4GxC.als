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
	all x,y : Signal | all t,m : Track | x in t.signals and y in m.signals implies y!=x
}


pred inv3 {
	// Exit tracks are those without successor
  	all e : Track| e in Exit iff (not(some t : Track |t in e.succs))

}


pred inv4 {
	// Entry tracks are those without predecessors
  	all e : Track| e in Entry iff (not(some t : Track |e in t.succs))

}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
  	all t : Track |  t in Junction iff (some y,z : Track | t in y.succs and t in z.succs and y!=z) 

}
pred inv6 {
	// Entry tracks must have a speed signal
  	all t: Track | t in Entry implies (some s : Speed | s in t.signals)

}


pred inv7 {
	// The station has no cycles

}


pred inv8 {
	// It should be possible to reach every exit from every entry

}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
	all e : Track |  (not (some j : Junction|j in e.succs)) implies (all s : Semaphore | s not in e.signals)
}


pred inv10 {
	// Every track before a junction has a semaphore
  	all t : Track | all j : Junction | j in t.succs implies (some s : Semaphore | s in t.signals)
	

}
