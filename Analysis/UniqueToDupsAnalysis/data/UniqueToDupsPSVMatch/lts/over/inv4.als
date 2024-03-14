some Init.trans.Event
-- div,2
Init.trans.Event = State
-- div,1
Event.(Init.trans) = State
-- div,6
Init.trans.State = State
-- div,2
State in Init.trans[Event]
-- div,10
State in Init.(Event.trans)
-- div,1
State in Init.trans.Event
-- div,3
(univ.^(Init.trans)) = State
-- div,1
Event.^(Init.trans) = State
-- div,6
Event.*(Init.trans) = State
-- div,1
State = Init.^(trans.State)
-- div,2
State = Init.^(Event.trans)
-- div,1
State = Event.^(Init.trans)
-- div,1
State = ^(Init.trans).State
-- div,2
(Init.^(Event.trans)) = State
-- div,1
Init.^(trans.Event) = State
-- div,2
State = Init.^(State.trans)
-- div,1
State in Event.*(Init.trans)
-- div,5
State in ^(Init.trans).State
-- div,1
State in Init.^(trans.Event)
-- div,2
State in Event.^(Init.trans)
-- div,4
State in Init.^(Event.trans)
-- div,8
State in ((Init.trans)[Event]).trans[Event]
-- div,1
State in Event.(Event.(Init.trans.trans))
-- div,1
all s : State | some Init.( s.trans)
-- div,1
all s : State | some (Init.trans).s
-- div,1
some (Init.trans).^(Event->State) & iden
-- div,2
all s : State | some s.(Init.trans)
-- div,3
all s1 : State |  one (Init.trans).s1
-- div,1
all s:State | Init.^(s.trans) = s
-- div,1
all s1 : State |  some (Init.trans).s1
-- div,3
all s : State | some (Init <: trans).s
-- div,2
all s:State | s.^(s.trans) = State
-- div,2
all s : State | some Init<:(s.trans)
-- div,1
all s : State | s in Init.trans.State
-- div,2
all s:State | s in Init.(Event.trans)
-- div,3
all s : State | s in State.(Init.trans)
-- div,1
all s : State | s in Init.trans.Event
-- div,1
all s : State | s in Init.(trans[State])
-- div,1
all s:State | s in Event.(Init.trans)
-- div,13
all s:State | State in s.trans.Event
-- div,1
all s1 : State |  some (^(Init.trans)).s1
-- div,1
all s : State | State in Init.^(s.trans)
-- div,1
all s : State | s in Init.^(trans.State)
-- div,2
all s:State | s in Init.^(Event.trans)
-- div,5
all s:State | s in Init.^(trans.Event)
-- div,4
all s:State | s in Event.*(Init.trans)
-- div,1
all s : State | s in ^(Init.trans).State
-- div,1
all s:State | s in Event.^(Init.trans)
-- div,3
all s:State | s in Init.^(State.trans)
-- div,1
State in (Init.trans[Event] + trans[Event].Init)
-- div,1
some e:Event| State in e.^(Init.trans)
-- div,1
State in (Init.trans[Event] + trans[Event].State)
-- div,1
all s:State | some Init <: (trans.Event.s)
-- div,1
State in {x:State | some Init.^(trans.x)}
-- div,1
State in {x:State | some ^(Init.trans).x}
-- div,1
all s : State | s in Init.trans[Event].trans[Event]
-- div,1
all s: State | some i: Init | s in Event.(i.trans)
-- div,1
all s: State | some i: Init | s in (i.trans.Event)
-- div,1
all s: State | some i: Init | i in Event.(trans.s)
-- div,1
all s:State | some e:Event | s in e.(Init.trans)
-- div,1
all s: State | some i: Init | i in trans.s.Event
-- div,1
all s:State |some e:Event | e->s in Init.trans
-- div,2
all s:State |some e:Event | s in e.^(Init.trans)
-- div,3
all s: State | some i: Init | s in Event.^(i.trans)
-- div,2
all s : State | some e : Event | s->e in ^(Init.trans)
-- div,1
all s: State | some i: Init | i in trans.(trans.s.Event).Event
-- div,1
all s : State | s in Init.(trans[Event]) + Init.trans[Event].trans[Event]
-- div,1
all s : State | s in Init.trans[Event] + Init.trans[Event].trans[Event]
-- div,3
Init.{s1 : State, s2 : State | some e : Event | s1->e->s2 in trans} = State
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  some i:Init | (State) in i.^adj
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  some e : Init | State in e.(^t)
-- div,1
