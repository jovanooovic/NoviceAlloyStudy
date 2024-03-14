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

  	some t:Track | t in Entry
  	some t:Track | t in Exit
  
}


pred inv2 {
	// Signals belong to one track

  
  	all a1,a2:Track | (some b:Signal | a1->b in signals and a2->b in signals) implies a1 = a2
	all b:Signal | some a:Track | a->b in signals
}


pred inv3 {
	// Exit tracks are those without successor

  

  
    	all a:Exit,a2:Track | a->a2 not in succs
    	all a:Track | (all a2:Track | a->a2 not in succs) implies a in Exit 
}


pred inv4 {
	// Entry tracks are those without predecessors

  
    	all a:Entry | all a2:Track | a2->a not in succs
    	all a:Track | (all a2:Track | a2->a not in succs) implies a in Entry
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
	all t:Track | t in Junction iff some t1,t2:t.~succs | t1 != t2

  
  all t:Track | t in Junction iff some t1,t2:Track | t->t1 in ~succs and t->t2 in ~succs and t1 != t2
}


pred inv6 {
	// Entry tracks must have a speed signal
	



  	all e:Entry | some s:Signal | e->s in signals and s in Speed
}


pred inv7 {
	// The station has no cycles
  	all t:Track | t->t not in ^succs

}


pred inv8 {
	// It should be possible to reach every exit from every entry

  

    	all t1:Entry,t2:Exit | t1->t2 in *succs

}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores

  
  	all t:Track | (all t2:Track | t->t2 in succs implies t2 not in Junction) implies (all s:Signal | t->s in signals implies s not in Semaphore)
}


pred inv10 {
	// Every track before a junction has a semaphore
  	all t:Track | (some t2:Track | t->t2 in succs and t2 in Junction) implies (some s:Signal | t->s in signals and s in Semaphore)

}
