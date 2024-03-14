-- equiv pair start,16
all e:Event | some trans.e
-- div,2
all e:Event | some e.trans
-- div,2
all e: Event | some (trans.e).State
-- div,1
all e: Event | some State.(trans.e)
-- div,1
all e: Event | some State.trans.e
-- div,3
all e:Event | some e.trans :> State
-- div,1
all e:Event | some e.~(State.trans)
-- div,1
all e:Event | some (State.trans).Event
-- div,1
all e:Event|some s:State | some trans.(e->s)
-- div,2
all e:Event|some s:(State-Init) | some trans.(e->s)
-- div,1
all e:Event|some s:State | some trans.(e->s) or one trans.(e->s)
-- div,1
-- equiv pair end
-- equiv pair start,2
some s : State | Event in s.trans.State
-- div,2
-- equiv pair end
-- equiv pair start,1
some s:State |all e:Event| some trans.(e->s)
-- div,1
-- equiv pair end
-- equiv pair start,1
all e:Event | one s:State | e in ~(Init.trans)[s]
-- div,1
-- equiv pair end
-- equiv pair start,1
all e:Event | some s:State | e in ~(Init.trans)[s]
-- div,1
-- equiv pair end
