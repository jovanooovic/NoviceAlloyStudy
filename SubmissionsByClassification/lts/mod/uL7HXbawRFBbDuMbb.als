
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
  all x : State | some x.trans
}

/*
There is a single initial state.
*/
pred inv2 {
  one Init
}

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
  all x : State | some x.trans
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
	all x : State, y : Event | lone (y.trans).x    
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

}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/
pred inv7 {

}


/*
The LTS is deterministic, ie, each state has at most a transition for each event.
*/
pred inv3 {
  all x, z, v : State, y : Event | x->y->z in trans and x->y->v in trans implies z=v

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

}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/
pred inv7 {

}
