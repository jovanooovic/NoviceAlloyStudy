-- equiv pair start,78
State.trans.State = Event
-- div,6
Event = State.trans.State
-- div,15
State.(trans.State) = Event
-- div,1
Event in State.trans.State
-- div,13
all e: Event | some e.(univ.trans)
-- div,1
all e:Event | some e.(State.trans)
-- div,12
all e: Event | some (trans.State).e
-- div,6
all e:Event | some e<:State.trans
-- div,1
all e:Event | e in State.trans.State
-- div,3
all e:Event | some (State.trans.State & e)
-- div,1
all e : Event | some State.trans.State <: e
-- div,1
all e:Event| some s:State | some e.(s.trans)
-- div,4
all e:Event | some s:State | e in s.trans.State
-- div,6
all e : Event | some s : State  | e->s in State.trans
-- div,1
all e:Event |some s,s1:State |  (s1->e->s) in trans
-- div,1
all e : Event | some s1 : State | e in s1.trans.State
-- div,1
all e:Event | some s:State | e in State.~(s.trans)
-- div,2
all e:Event | some s1,s2:State | s1->e->s2 in trans
-- div,2
all e:Event | some s1,s2:State | e in s1.~(s2.trans)
-- div,1
-- equiv pair end
