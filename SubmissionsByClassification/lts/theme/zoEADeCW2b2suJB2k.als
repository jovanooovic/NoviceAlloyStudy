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

}

//SECRET
pred inv1o {
	all s:State | some s.trans
}

/*
There is a single initial state.
*/
pred inv2 {

}

//SECRET
pred inv2o {
	one Init
}

/*
The LTS is deterministic, ie, each state has at most a transition for each event.
*/
pred inv3 {

}

//SECRET
pred inv3o {
	all s : State, e : Event | lone e.(s.trans)
}

/*
All states are reachable from an initial state.
*/
pred inv4 {

}

//SECRET
pred inv4o {
	let ts = {s1,s2:State | some e:Event | s1->e->s2 in trans} |
	all s:State | some i:Init | s in i.^ts
}

/*
All the states have the same events available.
*/
pred inv5 {

}

//SECRET
pred inv5o {
	all s1,s2:State | s1.trans.State = s2.trans.State
}

/*
Each event is available in at least a state.
*/
pred inv6 {

}

//SECRET
pred inv6o {
	State.trans.State = Event
}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/
pred inv7 {

}

//SECRET
pred inv7o {
	let ts = {s1,s2:State | some e:Event | s1->e->s2 in trans} |
	all s:Init.^ts | some i:Init | i in s.^ts
}

//SECRET
check inv1Ok { inv1o iff inv1 }
//SECRET
check inv2Ok { inv2o iff inv2 }
//SECRET
check inv3Ok { inv3o iff inv3 }
//SECRET
check inv4Ok { inv4o iff inv4 }
//SECRET
check inv5Ok { inv5o iff inv5 }
//SECRET
check inv6Ok { inv6o iff inv6 }
//SECRET
check inv7Ok { inv7o iff inv7 }
