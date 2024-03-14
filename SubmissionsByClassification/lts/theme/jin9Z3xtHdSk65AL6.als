
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
  all s:State,e:Event | lone e.(s.trans)

}

/*
All states are reachable from an initial state.
*/
pred inv4 {
	
  State in Event.(*(Init.trans)) 
}

/*
All the states have the same events available.
*/
pred inv5 {
	all s1,s2:State,e:Event | some e.(s1.trans) implies some e.(s2.trans)
}

/*
Each event is available in at least a state.
*/
pred inv6 {
	Event in (State.trans).State
}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/
pred inv7 {
	some (Event.(State.trans))
}
