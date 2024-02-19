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
  some t,a:Track| t in Entry and a in Exit

}


pred inv2 {
	// Signals belong to one track
  all s:Signal|one t:Track| t->s in signals

}


pred inv3 {
	// Exit tracks are those without successor
  all x,y:Track| x->y not in succs and x->x not in succs implies x in Exit

}


pred inv4 {
	// Entry tracks are those without predecessors
  all t,a:Track| t in Entry implies a->t in succs

}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
  all x,y,z:Track| x in Junction implies y->x in succs and z->x in succs and x->x not in succs

}


pred inv6 {
	// Entry tracks must have a speed signal
  
  all t:Track| some s:Speed| t in Entry implies t->s in signals

}


pred inv7 {
	// The station has no cycles
  
  all t,a:Track| t in Entry and a in Exit implies a->t in succs

}


pred inv8 {
	// It should be possible to reach every exit from every entry

}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
	all x,y:Track |some s:Signal| x->y in succs and y in Junction implies x->s in signals and s in Semaphore
}


pred inv10 {
	// Every track before a junction has a semaphore
  all x,y:Track |some s:Signal| x->y in succs and y in Junction implies x->s in signals and s in Semaphore

}
