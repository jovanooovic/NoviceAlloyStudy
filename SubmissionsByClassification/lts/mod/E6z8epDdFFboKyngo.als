/*
A labeled transition system (LTS) is comprised by States, a sub-set
of which are Initial, connected by transitions, here represented by 
Events.
*/
sig State {
        trans : Event -> State
  		succ : set State
}
sig Init in State {}
sig Event {}

pred x {
	all s1,s2:Event | s1->s2 in succ iff some y:Event | s1->y->s2 in trans
}

/*
The LTS does not contain deadlocks, ie, each state has at least a 
transition.
*/
pred inv1 {

}

/*
There is a single initial state.
*/
pred inv2 {

}

/*
The LTS is deterministic, ie, each state has at most a transition for each event.
*/
pred inv3 {

}

/*
All states are reachable from an initial state.
*/
pred inv4 {
	all s:State | some i:Init | s in i.^succ
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

}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/
pred inv7 {

}
