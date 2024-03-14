State->Event
-- div,1
Event in (trans)
-- div,1
Event in State.Event
-- div,1
Event in State.trans
-- div,1
Event in Event.State
-- div,1
Event in trans.State
-- div,1
all s:State | s.trans
-- div,1
State in State<:trans
-- div,1
Event in State<:trans
-- div,1
Event in State:>trans
-- div,1
Event in (trans.Event)
-- div,1
Event in (State.trans)
-- div,1
Event in (Event<:trans)
-- div,1
trans in Event -> State
-- div,1
Event in (Event:>trans)
-- div,1
Event in State -> State
-- div,1
Event in Event -> State
-- div,1
trans in State -> State
-- div,1
all s: State | s.trans.s
-- div,2
all x : State | x->Event
-- div,2
all x : State | some x.Event
-- div,1
all s:State | Event.(s.trans)
-- div,3
Event in Event<:(State.trans)
-- div,1
State in State.(trans<:Event)
-- div,1
State in (State<:trans).Event
-- div,1
State in Event.(State<:trans)
-- div,1
Event in (Event:>State.trans)
-- div,1
all s:State | (s.trans).Event
-- div,1
all s:State | (s.trans)->Event
-- div,1
all s:State | Event->(s.trans)
-- div,1
all s : State | Event in trans
-- div,1
all s : State | Event = s.trans
-- div,1
all s : State | Event.(s.trans)
-- div,2
all x : State | Event.x in Event
-- div,1
all s : State | s.trans in Event
-- div,3
all s : State | Event in s.trans
-- div,2
all x : State | (trans) in Event
-- div,1
all x : State | State in x.trans
-- div,1
all x : State | x.trans in Event
-- div,2
all s : State | (s.trans) = Event
-- div,2
all x : State | x:>trans in Event
-- div,1
all x : State | State in x->Event
-- div,1
all x : State | x<:trans in Event
-- div,1
all s : State | Event in s<:trans
-- div,2
all x : State | (trans.x) in Event
-- div,1
Event in State.trans -> State.trans
-- div,2
trans in State.trans -> State.trans
-- div,1
all x : State | some (x.Event.State)
-- div,1
all x : State | some x.trans in Event
-- div,1
all s,s1:State,e:Event | s->e in trans
-- div,1
all s : State, e : Event | e.(s.trans)
-- div,1
all s : State, e : Event | s.trans in e
-- div,1
all s:State | s.(State.~trans) in Event
-- div,2
all s:State | all e:Event |  e<:s.trans
-- div,2
all s : State | s.trans in State<:trans
-- div,1
all s : State, e : Event | e in s.trans
-- div,1
all s : State, e : Event | s->e in trans
-- div,2
all s : State, e : Event | one e.s.trans
-- div,1
all s:State, e:Event | some s->e in trans
-- div,1
all x : State | Event:>(trans.x) in Event
-- div,1
all x : State | Event:>(x.trans) in Event
-- div,1
all x : State | Event<:(trans.x) in Event
-- div,1
all x : State | Event<:(x.trans) in Event
-- div,1
all x : State | Event.(trans<:x) in Event
-- div,1
all s : State, e : Event | one (e.s).trans
-- div,1
all s : State, e : Event | some (s.trans)<:e
-- div,1
all s1,s2 : State | no ((s1.Event)-(s2.Event))
-- div,1
all s1,s2 : State | no ((Event.s1)-(Event.s2))
-- div,1
{x,y: State | Event in x.(trans.y)}
-- div,1
{x,y: State | x.(trans.y) in Event}
-- div,1
all s : State, e : Event | e.(s.trans) in State.trans
-- div,1
all x, y : State | x->y in trans implies y->y in trans
-- div,1
all x, y : State | some e : Event | some x->e->y in trans
-- div,1
all x : State | some e : Event | x.e->State = State.trans
-- div,1
all x : State | some e : Event | x.e->State = State.e->Stat
-- div,1
all x : State | some e : Event | x.e->State = State.e->State
-- div,1
{x,y: State | Event in Event<:x.(trans.y)}
-- div,1
all s1,s2:State |some e:Event | e.(s1.trans) implies e.(s2.trans)
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
  	State in t
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
  	trans in t
-- div,1
all x, y, z : State | some e : Event | x->y in trans implies y->x in trans
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
  	trans in State.t
-- div,1
all s1, s2: State | all e: Event |some n: State| e->n in s1.trans = e->n in s2.trans
-- div,1
all s1, s2: State | all e: Event |some n: State| e->n in s1.trans & e->n in s2.trans
-- div,1
all s1, s2 : State, e1, e2 : Event | some e1.(s1.trans) and e2.(s2.trans) implies e1 = e2
-- div,1
all s1, s2 : State | all e1, e2 : Event | some e1.(s1.trans) and e2.(s2.trans) implies e1 = e2
-- div,1
{state: State, event: Event | some event.(state.trans)}.~{state: State, event: Event | some event.(state.trans)} = univ
-- div,1
all disj s1, s2: State | all e: Event |some n: State| e->n in s1.trans and e->n in s2.trans implies n.~trans.s1 = n.~trans.s2
-- div,1
