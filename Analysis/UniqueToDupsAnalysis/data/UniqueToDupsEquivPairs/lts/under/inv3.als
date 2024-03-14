-- equiv pair start,70
lone Event.trans
-- div,1
lone trans.Event
-- div,2
(Event.(State.trans)) in State
-- div,1
((State.trans).Event) in State
-- div,1
all s:State | lone s'
-- div,1
all e : Event | lone trans.e
-- div,1
all  y : Event | lone trans.y
-- div,1
all e:Event, s:State | lone e
-- div,1
all s:State | lone s.trans.Event
-- div,5
all s : State, e : Event | one (s->e)
-- div,2
all s : State | lone (s<:trans).Event
-- div,1
~(State.trans).(State.trans) in State->State
-- div,1
all s:State | s.trans.State in Event
-- div,2
all s:State, e:Event | lone e->s
-- div,1
all e : Event | trans.e in State->State
-- div,1
all e : Event | ~(trans.e).(trans.e) in iden
-- div,1
all e : Event | lone e<:(State.trans.State)
-- div,1
all s:State,e:Event | lone s.trans.e
-- div,15
all s:State, e:Event | lone e.trans.s
-- div,1
all x : State, y : Event | lone x.trans.y
-- div,4
all x : Event, y : State | lone y.trans.x
-- div,1
all s : State, e : Event | lone s.(e.trans)
-- div,2
all s : State, e : Event | lone (s->e).trans
-- div,2
all s:State, e:Event | lone s <: trans.e
-- div,2
all s: State, e: Event | lone e.~(s.trans)
-- div,1
all s:State,e:Event | lone s.trans.Event
-- div,1
all s1, s2:State, e:Event | lone s1->e->s2
-- div,1
always (all s: State, e: Event | lone s.trans.e)
-- div,1
all s: State | all e: Event | lone s.trans.e
-- div,1
all e: Event | all s: State | lone s.trans.e
-- div,1
all s:State, s1:State, e:Event | lone e->s1
-- div,1
all s : State, e : Event | lone (s->e & State.trans)
-- div,1
all s1,s2:State | all e:Event | lone s1->e->s2
-- div,2
all s: State | iden & (Event->State) in (s.trans).~(s.trans)
-- div,2
all s:State| some s2:State | no ((s.trans).s2) - Event
-- div,2
all s: State, e: Event | (iden & (s->e)) in (s.trans).~(s.trans)
-- div,1
all s : State, e : Event | lone s1 : State | s.trans[e] = s1
-- div,1
all s : State, e, e1 : Event | s->e in State.trans and s->e1 in State.trans => e = e1
-- div,1
all s : State, disj e, e1 : Event | s->e in State.trans and s->e1 in State.trans => e = e1
-- div,1
all e: Event, s:State | some s1,s2:State |  (s.trans = e->s2 and s.trans = e->s1) implies s1=s2
-- div,1
-- equiv pair end
