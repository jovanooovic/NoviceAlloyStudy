
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
	State.trans in Event -> lone State
}

/*
All states are reachable from an initial state.
*/
pred inv4 {
	let adj = {x,y: State | some (x.trans).y} | State in Init.^adj
}

/*
All the states have the same events available.
*/
pred inv5 {
	all disj s,t:State | s.trans.State = t.trans.State
}

/*
Each event is available in at least a state.
*/

pred inv6 {
	all e:Event | some (State.trans.State & e)	
}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/
pred inv7 {
	let adj = {x,y: State | some (x.trans).y} | all s:Init.^adj | Init in s.^adj
}
