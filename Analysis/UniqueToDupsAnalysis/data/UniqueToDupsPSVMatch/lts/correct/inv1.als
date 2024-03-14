trans.State.Event = State
-- div,14
State = trans.State.Event
-- div,1
State in trans.State.Event
-- div,1
no s:State | no s.trans
-- div,2
iden[State] in trans.State.Event
-- div,5
trans in State -> some Event -> State
-- div,1
all s:State | some s.trans
-- div,118
all x : State | some x.trans
-- div,3
all s : State | some Event.(s.trans)
-- div,2
always (all s: State | some s.trans)
-- div,1
all s:State | some s.trans:>State
-- div,1
all s: State | some e: Event | some s.trans[e]
-- div,3
all s:State |some e:Event | e.(s.trans) != none
-- div,1
