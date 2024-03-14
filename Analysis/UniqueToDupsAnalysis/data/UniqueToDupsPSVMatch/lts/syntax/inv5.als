all
-- div,1
all s : States
-- div,1
all s : State |
-- div,1
all s : State | e.(s.trans)
-- div,1
all x : State | State in s->Event
-- div,1
all s : State | some Event(s.trans)
-- div,2
all s,s1:Stat|  s.trans in s1.trans
-- div,1
all s : State | s.trans = State.trasn
-- div,1
all s : State | Event in s.(trasn.Event)
-- div,1
all s:State, e:Event | all s->e in trans
-- div,1
all s : State | Event in s.(State->Event
-- div,1
all s:State, e:Events | some e.(s.trans)
-- div,1
all s:State | all e:Event | all e<:s.trans
-- div,1
all disj s, s1 | s.trans.State = s1.trans.State
-- div,1
all disj s, s1 : s.trans.State = s1.trans.State
-- div,1
all s,r : States | (s.trans).State = (r.trans).State
-- div,1
all s1, s2 : State | one e.(s1.trans) & e.(s2.trans)
-- div,1
all s1, s2: State | s1.(trans.State) = s2.(trans.State)
-- div,1
all x, y : State | e : Event | some x->e implies some y->e
-- div,1
all s1, s2: State | getEventsOfState[s1] = getEventsOfState[s2]
-- div,1
all s1,s2:State|e:Event | some e.(s1.trans) implies some e.(s2.trans)
-- div,1
all x, y : State | somne e : Event | x->e->y in trans implies y->e->y in trans
-- div,1
all x : State | x.trans in Event

/*
Each event is available in at least a state.
*/
-- div,1
all x : State | some x.trans in Event

/*
Each event is available in at least a state.
*/
-- div,1
