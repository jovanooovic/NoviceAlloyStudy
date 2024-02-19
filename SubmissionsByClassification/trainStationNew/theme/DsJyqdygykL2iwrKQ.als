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
	
  all x:Signal| one signals.x
}


pred inv3 {
	// Exit tracks are those without successor
  
   
    all x : Track - Exit | some x.succs
	no Exit.succs
 

}


pred inv4 {
	// Entry tracks are those without predecessors

  all x:Track-Entry | some succs.x
  no succs.Entry
}


pred inv5 {
	// Junctions are the tracks with more than one predecessor
  
 
  some x,z:Track|all y:Track|   x->y in succs and z->y in succs and x!=z implies y in Junction 

}


pred inv6 {
	// Entry tracks must have a speed signal
	
  all  x:Track|some y:Signal| x in Entry  implies x->y in signals and  y in Speed
}


pred inv7 {
	// The station has no cycles

  all x,y,z:Track| x->y in succs and y->z in succs and 
}


pred inv8 {
	// It should be possible to reach every exit from every entry
	
  	all x,y:Track | y in Exit  implies  x in Entry and x in succs.y
}


pred inv9 {
	// Tracks not followed by junctions do not have semaphores
  
  all x,y:Track, s:Signal|x->y in succs and x not in Junction implies y->s in signals and s not in Semaphore

}


pred inv10 {
	// Every track before a junction has a semaphore
  
  all x,y:Track |some s:Signal| x->y in succs and y in Junction implies x->s in signals and s in Semaphore

}
