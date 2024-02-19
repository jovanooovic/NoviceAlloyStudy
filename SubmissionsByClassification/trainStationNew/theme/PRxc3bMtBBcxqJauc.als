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
	all t:Track | some en:Entry | en->t in succs
  	all t:Track | one ex:Exit | t->ex in succs
}


pred inv2 {
	// Signals belong to one track
	all s:Signal | one t:Track | t->s in signals
}


pred inv3 {
	// Exit tracks are those without successor
  	all t:Track | t in Exit iff all ts:Track | ts not in t.succs
}


pred inv4 {
	// Entry tracks are those without predecessors
  	all t:Track | t in Entry iff all ts:Track | t not in ts.succs
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
	all t:Junction | some ts:Track | t in ts.succs
}


pred inv6 {
	// Entry tracks must have a speed signal
	all e:Entry | some s:Speed | e->s in signals
}


pred inv7 {
	// The station has no cycles
  	all t:Track | t not in Exit implies some t2:Track | t->t2 in succs
  	all t:Track | t in Exit implies all t2:Track | t->t2 not in succs
}


pred inv8 {
	// It should be possible to reach every exit from every entry
	all en:Entry, ex:Exit | some t:Track | en->t in succs and t->ex in succs
}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
	
  	all t:Track | some ts:Track | t->ts in succs and ts not in Junction implies all s:Semaphore | t->s not in signals 
}


pred inv10 {
	// Every track before a junction has a semaphore
	all t:Track | all j:Junction | t->j in succs implies some s:Semaphore | t->s in signals
}
