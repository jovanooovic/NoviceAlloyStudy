/*
A labeled transition system (LTS) is comprised by States, a sub-set
of which are Initial, connected by transitions, here represented by 
Events.
*/
sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

/*
The LTS does not contain deadlocks, ie, each state has at least a 
transition.
*/
pred inv1 {
	all s:State | some s.trans
}

/*
There is a single initial state.
*/
pred inv2 {
	one Init
}

/*
The LTS is deterministic, ie, each state has at most a transition for each event.
*/
pred inv3 {
	
  	
  	all s,s1,s2:State,e:Event | s->e->s1 in trans and s->e->s2 in trans implies s1=s2
}

/*
All states are reachable from an initial state.
*/
pred inv4 {
 
  
  

}

/*
All the states have the same events available.
*/
pred inv5 {
	
}

/*
Each event is available in at least a state.
*/
pred inv6 {
	all e:Event | some s1,s2:State | s1->e->s2 in trans
}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/
pred inv7 {
	
}
