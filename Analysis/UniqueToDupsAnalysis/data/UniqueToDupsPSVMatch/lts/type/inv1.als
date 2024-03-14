iden[State]
-- div,1
trans.State
-- div,1
State.trans
-- div,3
(State:>trans)
-- div,1
(State :> trans)
-- div,1
some State:>trans
-- div,1
all e : Event | e
-- div,1
always State.trans
-- div,2
trans.State = State
-- div,3
State in Event.trans
-- div,1
State.trans in State
-- div,1
~trans.trans in iden
-- div,4
iden in ~trans.trans
-- div,1
iden in trans.~trans
-- div,1
some (State :> trans)
-- div,1
all e : Event | trans
-- div,1
all s:State | s.trans
-- div,3
all e : Event | e.trans
-- div,1
always (State in trans)
-- div,1
all s : State | s.trans
-- div,3
all e : Event | trans.e
-- div,2
some State.trans & State
-- div,1
iden in trans.State.Event
-- div,3
iden in trans.Event.State
-- div,1
iden in State.trans.~trans
-- div,1
all e : Event | trans.State
-- div,2
State = trans.(Event->State)
-- div,1
all s : State | iden in ~s.s
-- div,1
all s:State | s.trans != none
-- div,3
no s : State | s.trans = none
-- div,2
all e : Event | trans.e.trans
-- div,1
always (trans.(Event->State))
-- div,1
all e : Event | trans.State.e
-- div,1
iden in State.trans.~trans.State
-- div,1
all s : State | s.trans in State
-- div,1
all s : State | some Event.s.trans
-- div,1
all s : State | iden in ~s.Event.s
-- div,1
all s:State | some t:trans | t in s
-- div,1
let t = trans | iden in trans.trans
-- div,1
let r = State->trans | iden in ~r.r
-- div,1
let s = State <: trans | s.~s in iden
-- div,1
let t = trans | iden in (trans.trans)
-- div,1
always (State in trans.(Event->State))
-- div,1
all s:State |some e:Event | e in s.trans
-- div,1
let k = trans.State | iden[State] in ~k.k
-- div,1
all s:State | some t:trans | t in s.trans
-- div,1
let k = trans.State | iden(State) in ~k.k
-- div,1
all s : State, e : Event | lone e.s.trans
-- div,1
let k = trans.State | iden{State} in ~k.k
-- div,1
all s:State , e:Event | some e->s in trans
-- div,1
all s: State | some e: State | s.trans = e
-- div,1
all s: State | some e: State | s.Event = e
-- div,1
all s:State , e:Event | some e->s in s.trans
-- div,1
let t = trans | iden in (trans.trans <: Event)
-- div,1
let t = trans | iden in (trans.trans) <: State
-- div,1
let t = trans | iden in (trans.trans) :> State
-- div,1
let t = trans | iden in (trans.trans :> Event)
-- div,1
all s:State , e:Event | some (e->s) in s.trans
-- div,1
all s1 : State | some s2 : State | s1 -> s2 in trans
-- div,1
all s1, s2:State | some e:Event | (s1->e->s2 in trans and e not in iden)
-- div,2
all s1, s2:State | some e:Event | (s1->e->s2 in trans and s1.~s2 not in iden)
-- div,1
