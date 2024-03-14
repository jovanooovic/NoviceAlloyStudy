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
	some Exit and some Entry
  
}


pred inv2 {
	// Signals belong to one track
	all s : Signal | one t : Track | s in t.signals
}


pred inv3 {
	// Exit tracks are those without successor
  all t: Track | t in Exit iff no t.^(succs)
}


pred inv4 {
	// Entry tracks are those without predecessors
	all t: Track | t in Entry iff no ^(succs).t
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
	all t : Track | t in Junction iff #succs.t>1
}


pred inv6 {
	// Entry tracks must have a speed signal
	all e: Entry | some s: Speed| s in e.signals
}


pred inv7 {
	// The station has no cycles
	all t : Track | t not in t.^(succs)
}


pred inv8 {
	// It should be possible to reach every exit from every entry
    all t1 : Entry | all t2: Exit | t2 in t1.^(succs)

}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
	all t : Track | all j : Junction | all s : Semaphore | j not in t.succs implies s not in t.signals
}


pred inv10 {
	// Every track before a junction has a semaphore
  all t : Track | all j : Junction| some s: Semaphore | j in t.succs implies s in t.signals
  
  
 
}
