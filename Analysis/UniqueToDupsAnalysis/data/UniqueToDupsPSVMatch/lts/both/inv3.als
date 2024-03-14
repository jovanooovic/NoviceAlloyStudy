one trans.State
-- div,1
lone trans.State
-- div,2
one State.trans.State
-- div,2
lone State.trans.State
-- div,3
State.trans.State = Event
-- div,1
trans.State.Event = State
-- div,1
(State.trans.State & Event) = Event
-- div,1
all s:State | lone trans.s
-- div,7
all s : State | some s.trans
-- div,2
(State.trans).~(State.trans) in iden
-- div,1
all s : State | #s.trans <=1
-- div,2
all s,k : State |one s.trans.k
-- div,1
let k = trans.State | ~k.k in iden
-- div,2
let k = trans.State | k.~k in iden
-- div,2
all s,k : State |lone s.trans.k
-- div,1
all s: State | lone State.trans.s
-- div,1
let st = trans.State | ~st.st in iden
-- div,1
all s:State | lone s.trans.State
-- div,10
all s: State| some s.trans.State
-- div,1
let k = ~(trans.State) | k.~k in iden
-- div,1
let k = ~(trans.State) | ~k.k in iden
-- div,1
all s1, s2 : State | lone (s1.trans.s2)
-- div,1
State->State in ~(State.trans).(State.trans)
-- div,1
all s : State | s.trans.State = Event
-- div,1
all s:State | lone State.~(s.trans)
-- div,2
all s:State | Event = s.trans.State
-- div,1
all s:State | s->Event->State in trans
-- div,1
always (all s: State | lone s.trans.State)
-- div,1
all s:State, e:Event | some e.(s.trans)
-- div,3
all s:State, e:Event | lone trans.(s->e)
-- div,1
all s: State |one e: Event | lone s->e
-- div,1
all s : State | some e : Event | one (s->e)
-- div,1
all s : State | some e : Event | lone (s->e)
-- div,3
all s1,s2 : State, e : Event |  one s1.trans.s2
-- div,1
all s,s1:State,e:Event | s->e->s1 in trans
-- div,1
all s: State |one e: Event | lone trans.e
-- div,1
Init.^{x,y: State | some (x.trans).y} = State
-- div,1
all s:State |one e: Event | lone s.trans.e
-- div,2
all s:State | one e:Event |  e->s in s.trans
-- div,2
all s:State | all e:Event |  e->s in s.trans
-- div,1
all s:State | lone e:Event |  e->s in s.trans
-- div,4
all s1, s2:State | one e:Event | lone s1->e->s2
-- div,1
all s:State | lone e:Event {  e->s in State.trans }
-- div,1
all s: State | (iden & (Event->Event)) in (s.trans).~(s.trans)
-- div,2
all e: Event, s:State |some s2: State | e->s2 in s.trans
-- div,1
all s:State | all disj e1, e2:Event | e1.(s.trans)!=e2.(s.trans)
-- div,1
all s : State {
    	all disj e1,e2 : Event | some s.trans[e1] implies no s.trans[e2]
    }
-- div,1
all s : State, e, e1 : Event | s->e in trans.State and s->e1 in trans.State => e = e1
-- div,1
all s : State, disj e, e1 : Event | s->e in trans.State and s->e1 in trans.State => e = e1
-- div,2
all s:State | all e1,e2:Event | e1->s in s.trans and e2->s in s.trans implies e1=e2
-- div,1
all s : State | all disj e1, e2 : Event | e1 in (s.trans).State and e2 in (s.trans).State implies e1 = e2
-- div,1
all s:State | some s1,s2:State, e:Event |  (s.trans = e->s2 and s.trans = e->s1) implies s1=s2
-- div,1
