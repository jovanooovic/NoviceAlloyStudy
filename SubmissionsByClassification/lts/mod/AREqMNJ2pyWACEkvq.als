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
	all s: State | some s.trans
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
	all s: State | all e: Event | lone s.trans[e]
}

/*
All states are reachable from an initial state.
*/
  	 State in Init.trans.trans
}

/*
All the states have the same events available.
*/
pred inv5 {
	all s1, s2: State | s1.(trans.State) = s2.(trans.State)
}

/*
Each event is available in at least a state.
*/
pred inv6 {
	Event in State.trans.State
}


pred inv7 {

}
