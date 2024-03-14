all e:Event |
-- div,2
all e: Event |
-- div,9
s.trans in State
-- div,1
all e : Event | some State(trans.e)
-- div,2
all e:Event| e in (State.Trans).State
-- div,1
all e : Event | some s.trans.State <: e
-- div,1
all e:Event| some s.State | s in trans.e
-- div,1
all e: Event, some s: State | some s.trans[e]
-- div,1
all e: Event, some s: State | e in getEventsOfState[s]
-- div,2
all e : Event | some s1 : State | e1 in s1.trans.State
-- div,1
all e: Event | some s: State | e in getEventsOfState[s]
-- div,1
all e: Event | some State.trans[e]
}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/
fun edge : State -> State {
  s1, s2: State | some s1.trans.s2
-- div,1
