State = trans.Event.State
-- div,1
always some State.trans.Event
-- div,1
all s:State | one s . trans
-- div,1
always (State in Event.trans.State)
-- div,1
iden in State.trans.~(trans.State)
-- div,1
all s: State | #(s.trans) > 0
-- div,1
all s: State | #(s.trans) >= 1
-- div,1
let k = State.trans | iden in ~k.k
-- div,1
let r = State.trans | iden in ~r.r
-- div,1
let k = State.trans | iden in k.~k
-- div,1
let k = trans.State | iden in k.~k
-- div,1
let k = trans.State | iden in ~k.k
-- div,3
all x : State | some x.trans.Event
-- div,1
no s : State | s.trans.Event = none
-- div,1
always (all s: State | some s.trans.Event)
-- div,1
all s1, s2:State | some e:Event | s1->e->s2 in trans
-- div,2
all s1, s2:State | some e:Event | (s1->e->s2 in trans and s1 != s2)
-- div,1
