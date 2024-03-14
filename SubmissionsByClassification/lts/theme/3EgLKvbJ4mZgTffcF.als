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
pred inv1 { all s: State | some s.trans

}

/*
There is a single initial state.
*/
pred inv2 { one Init

}

/*
The LTS is deterministic, ie, each state has at most a transition for each event.
*/
pred inv3 { all s : State, e: Event | lone e.(s.trans)
  

}

/*
All states are reachable from an initial state.
*/
fun adj: State -> State {
  {x,y : State | some (x.trans).y }
  }
pred inv4 { all s : State | some i: Init | s in i.^adj 

}

/*
All the states have the same events available.
*/
pred inv5 { all s,r:State | (s.trans).State = (r.trans).State

}

/*
Each event is available in at least a state.
*/
pred inv6 { 
all e: Event | some s: State| e in (s.trans).State 
}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/
pred inv7 { all s: Init.^adj | some s.^adj & Init

}
