-- equiv pair start,1
some Event
-- div,1
-- equiv pair end
-- equiv pair start,2
some State->Event
-- div,1
some State->Event->State
-- div,1
-- equiv pair end
-- equiv pair start,1
one Event.(State.trans)
-- div,1
-- equiv pair end
-- equiv pair start,5
State.trans = Event->State
-- div,2
all e:Event | e->State in State.trans
-- div,1
all s:State | Event in s.~(State.trans)
-- div,1
all e:Event | Event->State in State.trans
-- div,1
-- equiv pair end
-- equiv pair start,6
Event = State.(trans.State)
-- div,1
Event = (State.trans).State
-- div,1
Event in State.(trans.State)
-- div,1
Event in State.trans.State
-- div,2
Event in State.~(State.trans)
-- div,1
-- equiv pair end
-- equiv pair start,1
State in Event.(State.trans)
-- div,1
-- equiv pair end
-- equiv pair start,10
all s : State | some s->Event
-- div,1
all x : State | some x->Event
-- div,3
all x, y : State | some x->Event
-- div,1
all x : State | some x->Event->State
-- div,2
all x : State | some y : State | some x->Event->y
-- div,1
all x, y : State | some e : Event | some x->e implies some y->e
-- div,1
all x, y : State | some e : Event | some x->e->y implies some y->e->y
-- div,1
-- equiv pair end
-- equiv pair start,6
all x : State | some (x.trans)
-- div,2
all s : State | some Event.(s.trans)
-- div,4
-- equiv pair end
-- equiv pair start,1
all s:State, e:Event | lone e.(s.trans)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y : State | some x.trans & y.trans
-- div,1
-- equiv pair end
-- equiv pair start,1
all s,r :State | (r.trans).s = (s.trans).r
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : State | some e : Event | one e.(s.trans)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1,s2:State | s1.~(s1.trans) = s2.~(s2.trans)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj s1, s2 : State | #(s1.trans) = #(s2.trans)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y : State | some e : Event | x->e->y in trans
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1,s2:State | Event.(s1.trans) = Event.(s2.trans)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: State, y: State | (x.trans).univ = (univ.trans).x
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1, s2 : State | one Event.(s1.trans) & Event.(s2.trans)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y : State | x->Event->y in trans implies y->Event->y in trans
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y : State | x->Event->y in trans implies y->Event->x in trans
-- div,1
-- equiv pair end
-- equiv pair start,2
all s1,s2:State |some e:Event |some e.(s1.trans) implies some e.(s2.trans)
-- div,2
-- equiv pair end
-- equiv pair start,3
all x, y : State | all e : Event | x->e->y in trans implies y->e->y in trans
-- div,3
-- equiv pair end
-- equiv pair start,1
all x, y : State | some e : Event | x->e->y in trans implies y->e->y in trans
-- div,1
-- equiv pair end
-- equiv pair start,2
all e:Event, s1,s2:State | e in ~(Init.trans)[s1] implies e in ~(Init.trans)[s2]
-- div,1
all e:Event, disj s1,s2:State | e in ~(Init.trans)[s1] implies e in ~(Init.trans)[s2]
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj s1, s2 : State | some e : Event | one e.(s1.trans) iff one e.(s2.trans)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y, z : State | some e : Event | x->e->y in trans implies y->e->x in trans
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj s1, s2 : State | some e : Event | some e.(s1.trans) iff some e.(s2.trans)
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj s1, s2 : State | some e : Event | one e.(s1.trans) implies one e.(s2.trans)
-- div,2
-- equiv pair end
-- equiv pair start,1
all x, y : State | some e : Event | x->e->State in trans implies y->e->State in trans
-- div,1
-- equiv pair end
-- equiv pair start,1
some e:Event, disj s1,s2:State | e in ~(Init.trans)[s1] implies e in ~(Init.trans)[s2]
-- div,1
-- equiv pair end
-- equiv pair start,1
some e:Event | all disj s1,s2:State | e in ~(Init.trans)[s1] implies e in ~(Init.trans)[s2]
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1, s2 : State | all e1, e2 : Event | some e1.(s1.trans) and some e2.(s2.trans) implies e1 = e2
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj s1, s2 : State | some e : Event | one e.(s1.trans) implies one e.(s2.trans) else no e.(s1.trans)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj s1, s2: State | all e1, e2: Event |some n: State| e1->n in s1.trans and e2->n in s2.trans implies e1=e2
-- div,1
-- equiv pair end
