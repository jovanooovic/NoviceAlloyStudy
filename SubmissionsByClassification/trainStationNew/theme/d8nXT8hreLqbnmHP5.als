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
	all s:Signal | one t:Track | s in t.signals
}


pred inv3 {
	// Exit tracks are those without successor
  	
  	all t1,t2:Track | t2 in t1.succs implies no (t1 & Exit)
  	
  	all t1:Track | no (t1 & Exit) implies (some t2:Track | t2 in t1.succs)
}


pred inv4 {
	// Entry tracks are those without predecessors
  	
	all t1,t2:Track | t1 in t2.succs implies no (t1 & Entry)
  	
  	all t1:Track | no (t1 & Entry) implies (some t2:Track | t1 in t2.^succs)
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
  	
  	all t1,t2:Track | t1 in t2.succs and t1 not in (Track-t2).succs implies no (Junction & t1)
  	all t1,t2:Track | t1 in t2.succs and t1 in (Track-t2).succs implies one (Junction & t1)
  	all t:Track | one (Entry & t) implies no (Junction & t)
}


pred inv6 {
	// Entry tracks must have a speed signal
	
  	all t:Track | some s:Speed | one (Entry & t) implies s in t.signals
}


pred inv7 {
	// The station has no cycles
	all t:Track | t not in t.^succs
}


pred inv8 {
	// It should be possible to reach every exit from every entry
  	
  	all t1,t2:Track |  t1!=t2 and one (t1 & Entry) and one (t2 & Exit) implies t2 in t1.^succs
}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
  	
  	all t:Track | no (Junction & t.succs) implies (all s:Semaphore | s not in t.signals)
  	all t:Track | one (Exit & t) implies (all s:Semaphore | s not in t.signals)
}


pred inv10 {
	// Every track before a junction has a semaphore
  	all t1,t2:Track | t2 in t1.succs and one (Junction & t2) implies (some s:Semaphore | s in t1.signals)
}
