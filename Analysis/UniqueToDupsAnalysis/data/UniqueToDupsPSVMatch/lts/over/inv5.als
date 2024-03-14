Event in State
-- div,1
one State->Event
-- div,1
State->Event in iden
-- div,1
Event in Event<:State
-- div,1
Event in State<:Event
-- div,1
State.trans = trans.State
-- div,1
State in State.(trans.Event)
-- div,3
Event in (State.(State.trans))
-- div,1
Event in Event.(State.trans)
-- div,2
trans:>State = Event<:trans
-- div,1
all x : State | State in x<:Event
-- div,1
all x : State | Event in x<:Event
-- div,1
all x : State | State in x:>Event
-- div,1
all s : State | some (s.trans).Event
-- div,1
all x, y : State | x.trans = y.trans
-- div,1
all s: State | Event <: trans = trans
-- div,2
all x, y : State | x.trans in y.trans
-- div,1
all x : State | State.trans = x.trans
-- div,2
all x : State | x.trans = State.trans
-- div,5
all s : State | some Event.(s<:trans)
-- div,1
all s : State | s.trans = State.trans
-- div,1
all s : State | Event = (s.trans).State
-- div,1
all x, y : State | x->Event->y in trans
-- div,1
all s : State | Event in s.(trans.Event)
-- div,1
all s,s1:State|  s.trans in s1.trans
-- div,1
all s : State | Event in (s.trans).State
-- div,1
all x : State | State.trans in x.trans
-- div,1
all x : State | Event.(x.trans) in Event
-- div,5
all s1,s2:State | s1.trans = s2.trans
-- div,2
all s:State | Event->State in s.trans
-- div,1
all x : State | x->Event->State in trans
-- div,2
all s : State | State.(~(s.trans)) = Event
-- div,1
all s1,s2 :State | Event->s2 in s1.trans
-- div,1
all s:State | Event in State.~(s.trans)
-- div,9
all s:State | Event in Event.~(s.trans)
-- div,1
all s,s1:State|  no( s.trans  - s1.trans )
-- div,1
all s : State, e : Event | one e.(s.trans)
-- div,3
all s : State, e : Event | some (s.trans).e
-- div,2
all s:State, e:Event | some e.(s.trans)
-- div,5
all s:State, e:Event | s->e->s in trans
-- div,1
all x, y : State, e : Event | x->e->y in trans
-- div,1
not some disj s1, s2:State | (s1.trans) != (s2.trans)
-- div,1
all s,s1:State,e:Event | s->e->s1 in trans
-- div,1
all x : State, e : Event | x->e->State in trans
-- div,1
all s1, s2:State, e:Event | s1->e->s2 in trans
-- div,1
all s:State | all e:Event |  some e<:s.trans
-- div,2
all s1,s2,s3:State | s3.~(s1.trans) = s3.~(s2.trans)
-- div,1
all x: State, y: State | (x.trans).univ = (univ.trans).y
-- div,2
all s:State | all e:Event | e in State.~(s.trans)
-- div,2
all s1,s2 : State, e : Event | e.(s1.trans) = e.(s2.trans)
-- div,1
all x : State | some e : Event | x.trans = State.trans
-- div,1
all x, y : State | some e : Event | x->Event->y in trans
-- div,1
all s,s1:State|  s.trans in s1.trans and s1.trans in s.trans
-- div,1
all s:State | Event in State.~(s.trans) and Event in State.~(Init.trans)
-- div,1
all s1, s2:State, e:Event | s1->e->s2 in trans and s1->e->s1 in trans
-- div,1
all x, y : State | all e : Event | x->e->y in trans and y->e->y in trans
-- div,1
{state: State, event: Event | some event.(state.trans)}.~{state: State, event: Event | some event.(state.trans)} = univ->univ
-- div,1
