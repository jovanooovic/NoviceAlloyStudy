State.(State.trans) in Event
-- div,1
State.~(State.trans) in Event
-- div,2
State.trans.State = State.trans.State
-- div,1
all x : State | (x.trans.x) in Event
-- div,1
all s : State | s.trans.s in Event
-- div,1
all x : State | (x.trans).Event in Event
-- div,1
all x : State | State.(x.trans) in Event
-- div,2
all s:State | State.(s.trans) in Event
-- div,1
all s : State | s.trans.State in Event
-- div,1
all x : State | x.trans in State.trans
-- div,6
all x : State | (x.trans.State) in Event
-- div,1
all x : State | Event.(trans.x) in Event
-- div,2
all s : State | Event = s.(State->Event)
-- div,1
all x : State, e : Event | some x->e
-- div,1
all s : State | s.trans in State.trans
-- div,1
all s : State | Event in s.(State->Event)
-- div,1
all x, y : State | x.trans in State.trans
-- div,1
all s:State | Event.~(s.trans) in Event
-- div,1
all s:State | State.~(s.trans) in Event
-- div,4
all s:State | s.~(State.trans) in Event
-- div,1
all x : State, e : Event | some x->Event
-- div,1
all s: State | Event <: s.trans = s.trans
-- div,1
all x : State, e : Event | some x->e->State
-- div,3
all x : State, e : Event | some State->e->State
-- div,1
all x, y : State | some x->Event implies some y->Event
-- div,4
all s : State | Event.(s.trans) in Event.(State.trans)
-- div,1
all s1,s2:State | State.(s1.trans) = State.(s2.trans)
-- div,1
all s1,s2:State | s1.trans.Event = s2.trans.Event
-- div,2
all x : State, e : Event | some State->Event->State
-- div,1
all x, y : State, e : Event | some x->e implies some y->e
-- div,2
all s : State, e : Event | e.(s.trans) in Event.(State.trans)
-- div,1
all x, y : State | all e : Event | some x->e->y implies some y->e->y
-- div,1
all e:Event, s1,s2:State | e in (Init.trans)[s1] implies e in (Init.trans)[s2]
-- div,1
all s,s1:State,e:Event|some s2,s3:State | s->e->s2 in trans implies s1->e->s2 in trans
-- div,1
all s,s1:State,e:Event|some s2,s3:State | s->e->s2 in trans implies s1->e->s3 in trans
-- div,3
all disj s1, s2: State | all e: Event |some n: State| e->n in s1.trans implies e->n in s2.trans
-- div,1
all disj s1, s2: State | all e: Event |some n: State| e->n in s1.trans and e->n in s2.trans implies e=e
-- div,1
