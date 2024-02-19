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
    all s: Signal | one t: Track | s in t.signals

}


pred inv3 {
	// Exit tracks are those without successor
   all t: Exit | #(t.succs)=0
   all t: Track - Exit | some s : Track | s in t.succs

}


pred inv4 {
	// Entry tracks are those without predecessors
	all e: Entry | all t: Track | e not in t.succs
    all t: Track - Entry | t in Track.succs
    
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor

    all t : Track - Junction - Entry| one l: Track | t in l.succs 
  	all j: Junction | some t, l: Track | t != l  and j in t.succs and j in l.succs
}


pred inv6 {
	// Entry tracks must have a speed signal
	all t: Entry | some s : Speed | s in t.signals
}


pred inv7 {
	// The station has no cycles
    all t: Track | t not in (t.^succs)

}


pred inv8 {
	// It should be possible to reach every exit from every entry
  	all e: Entry | all x: Exit | x in e.^succs or e = x

}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
    all t : Track | #(t.succs & Junction) = 0 implies # (t.signals & Semaphore) = 0

}


pred inv10 {
	// Every track before a junction has a semaphore
    
    all t : Track | #(t.succs & Junction) > 0 implies # (t.signals & Semaphore) > 0

}
