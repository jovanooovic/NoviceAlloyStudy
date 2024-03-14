trans
-- div,1
(Init.trans)
-- div,1
lone State.Init
-- div,1
lone State.Event
-- div,1
~trans.trans in id
-- div,1
lone trans & Event
-- div,1
trans.~trans in iden
-- div,1
~trans.trans in iden
-- div,1
lone State.~trans.Event
-- div,1
all s : State | s.trans
-- div,2
all e:Event| some e.~trans
-- div,1
all s:State | lone s.~trans
-- div,1
all t:trans | lone t
-- div,1
~trans.trans in trans->trans
-- div,1
~trans.trans in State->State
-- div,1
all s:State | lone s'=s.trans
-- div,1
all s : State | Event.s.trans
-- div,1
all s : State | lone s.~trans
-- div,2
all s:State | lone s.(~trans)
-- div,1
all s : State | lone ^s.trans
-- div,1
all s : State | lone ~trans.s
-- div,1
all s:State,e:Event | lone s.e
-- div,1
all e:Event| lone e.State.trans
-- div,1
all s : State | Event.(s.trans)
-- div,1
trans in Event some -> one State
-- div,2
all e : Event | State in trans.e
-- div,2
all e:Event| lone e.~State.trans
-- div,1
let k = ~trans.State | k.~k in iden
-- div,1
all e: Event, s:State | e in s.trans
-- div,1
all s:State,e:Event | lone e.s.trans
-- div,1
all s : State | lone (trans&s.trans)
-- div,1
all s:State, e:Event | trans in e->s
-- div,1
lone State->Event in s.(State.~trans)
-- div,1
all s : State | lone e : Event | s.e.S
-- div,1
all s:State,e:Event | lone s.e in trans
-- div,1
all s: State, e: Event | lone e.s.trans
-- div,1
all s:State, e:Event | one trans in e->s
-- div,1
all s : State, e: Event | lone e.s.trans
-- div,1
all s:State | all e:Event | e in s.trans
-- div,3
all s:State,e:Event | lone s->e in trans
-- div,2
all s:State, e:Event | lone s.trans <: e
-- div,1
all s : State | lone s.trans.State.Event
-- div,1
all s: State, e: Event | lone s.trans.~e
-- div,1
all s : State, e : Event | lone s.e.trans
-- div,3
all e : Event | State in trans.(e->State)
-- div,2
all s : State, e : Event | lone e.s.trans
-- div,4
all e:Event |some s:State | lone e.s.trans
-- div,1
all e : Event | State in trans.(e -> State)
-- div,1
all s: State | (~s.trans).(s.trans) in iden
-- div,2
all s : State | (Event.s).(s.Event) in iden
-- div,1
all s:State | lone Event in State.~(s.trans)
-- div,1
all s:State, e:Event | lone  s.trans.State.e
-- div,1
all s : State, e : Event | lone s.trans <: e
-- div,1
all s:State, e:Event | s.trans -> lone trans.e
-- div,1
all s:State |one e: Event | lone e->s in trans
-- div,1
all s : State, e : Event | lone (s.trans <: e)
-- div,3
all x : State, y : Event | lone x.trans.y.State
-- div,1
all s: State |one e: Event | lone s->e in State
-- div,1
all s:State, e:Event | s.trans lone ->  trans.e
-- div,1
all s:State, e:Event | trans.e lone ->  s.trans
-- div,1
all s,s1:State,e:Event | lone s->e->s1 in trans
-- div,1
all s:State, e:Event | lone t:trans | t in e->s
-- div,1
all s:State | all e:Event | lone e->s in s.trans
-- div,2
all s : State, e : Event | lone ((s.trans) <: e)
-- div,1
all s : State, e : Event | lone (~(s.trans) <: e)
-- div,3
all e:Event , s:State | lone e in s.(State.~trans)
-- div,1
all s:State |one e: Event | lone trans.e in s.trans
-- div,1
all s1, s2:State, e:Event | lone s1->e->s2 in trans
-- div,1
all e:Event |some s:State | lone e.s.trans in State
-- div,2
all e:Event |some s:State | lone e.(s.trans) in State
-- div,1
all s1, s2:State, e:Event | lone (s1->e->s2 in trans)
-- div,1
all s1,s2:State, e:Event | lone  (s1->e->s2) in trans
-- div,2
all s:State |some e: Event | s.trans implies lone e->s
-- div,1
all s : State.trans, e : Event | lone s.e
-- div,1
all s:State, s1:State, e:Event | lone e->s1 in s.trans
-- div,1
all s:State | all e:Event | lone e in s.(State.~trans)
-- div,1
all s : State | all t : trans.s | lone t
-- div,1
all s : State, e : s.trans | ~e.e in iden
-- div,3
all s:State |some e: Event | s.trans implies lone trans.e
-- div,1
all s:State | all e:Event | lone s->e in s.(State.~trans)
-- div,1
all s:State |some e: Event | s.trans implies lone trans.e->s
-- div,2
all s:State |some e: Event | s.trans implies lone e in trans
-- div,1
all s : State, e : Event | lone (e <: s.trans)
}

fun onlyStates : set State->State {
	{ aux : Event.(Init.trans) | Init -> aux }
-- div,4
all s,p:State | s.trans in Event & p.trans in Event implies s=p
-- div,1
all s,p:State | s.trans in Event & p.trans in Evente implies s=p
-- div,1
all s,p:State , e:Event | s.trans in e & p.trans in e implies s=p
-- div,2
Init + Event.(Init.trans) + Event.((Event.(Init.trans)).trans) + Event.((Event.((Event.(Init.trans)).trans)).trans)
-- div,1
