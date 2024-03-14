^Init
-- div,1
Init.Event
-- div,1
Init.State
-- div,1
Init.^trans
-- div,2
State.^Init
-- div,1
State.^trans
-- div,1
Init.trans
-- div,2
Event.trans
-- div,2
trans = State
-- div,1
trans.trans
-- div,3
State.trans
-- div,1
no Init.~trans
-- div,3
some Init.Event
-- div,1
^(Init.trans)
-- div,1
some Init.^trans
-- div,1
Event.State.trans
-- div,1
Init.trans.^Event
-- div,1
Init.trans = State
-- div,2
Event.trans = State
-- div,1
Init.*trans = State
-- div,3
State = Init.^trans
-- div,1
Init.^trans = State
-- div,2
State = ^Init.trans
-- div,1
State in Init.trans
-- div,3
trans.*Init = State
-- div,1
State in Init.^trans
-- div,5
Init in State.^trans
-- div,3
Init.*trans in State
-- div,1
trans = Event->State
-- div,1
(Init.trans) = State
-- div,1
Event.(Init.trans)
-- div,2
Init.trans.Event
-- div,1
trans in Init.*trans
-- div,1
State in Init.*trans
-- div,1
Event.^trans = State
-- div,1
Init.^trans in State
-- div,1
trans.Event.trans
-- div,1
State = (Init.^trans)
-- div,1
(Init.^trans) = State
-- div,1
State in  Init.^trans
-- div,1
(Init.*trans) = State
-- div,1
State.^trans in State
-- div,1
Init.(*trans) = State
-- div,2
State = ^(Init.trans)
-- div,2
State = Init.^(trans)
-- div,1
all s: State | s.^Init
-- div,1
State in Init.^(trans)
-- div,1
all i : Init | i.trans
-- div,1
State in ^(Init.trans)
-- div,2
State in Init.(^trans)
-- div,1
Event.^(Init.trans)
-- div,2
Event.Init.trans = State
-- div,2
Init.^trans.Event = State
-- div,1
Init.trans.*Event = State
-- div,1
Event.Init.^trans = State
-- div,1
State in Init.trans.trans
-- div,1
all s:State | s in ^trans
-- div,1
Init.trans.^Event = State
-- div,1
State in Event.Init.trans
-- div,5
State in Init.trans.^Event
-- div,1
Init.Event.*trans in State
-- div,1
Event.trans in Init.*trans
-- div,1
all s:State | s in s.trans
-- div,1
some *(Event.(Init.trans))
-- div,1
(univ.^Init.trans) = State
-- div,1
State.trans in Init.*trans
-- div,1
some ^(Event.(Init.trans))
-- div,1
(Init.trans).*Event = State
-- div,1
State in Init.^trans[Event]
-- div,2
Event.trans in State.*trans
-- div,1
all s:State | Init.trans:>s
-- div,1
State in ^Init.trans[Event]
-- div,1
^Event.(Init.trans) = State
-- div,1
Event.(Init.^trans) = State
-- div,2
State in Event.(Init.^trans)
-- div,1
Init.*(~trans.Event) = State
-- div,1
State in ^(Init.trans.Event)
-- div,1
State in ^Init.(Event.trans)
-- div,1
Init.(Event.*trans) in State
-- div,1
all s:State | Init.trans :> s
-- div,1
all s:State | Init <: s.trans
-- div,2
State in Event. (Init.^trans)
-- div,1
all i:Init | State in i.trans
-- div,1
all s:State | s :> Init.trans
-- div,2
all s:State | s in Init.trans
-- div,3
Event.trans.trans.Event
-- div,1
all s1 : State |  (Init.trans)
-- div,2
State in Init <: ^trans[Event]
-- div,1
all s1 : State |  (Init.Event)
-- div,1
all s:State | s in Init.*trans
-- div,1
all s : State | s.(Init.trans)
-- div,1
all s:State | s :>(Init.trans)
-- div,2
all s:State | s in Init.^trans
-- div,3
all i : Init | Event.(i.trans)
-- div,1
all s:State | s in s->Event->s
-- div,1
State in ^(Event.(Init.trans))
-- div,1
all s: State | s in Init.trans
-- div,1
State-Init in Event.Init.trans
-- div,1
all s:State | s <:(Init.trans)
-- div,1
all s:State | s.^trans = State
-- div,1
all s:State | s in (Init.trans)
-- div,1
all i :Init | State in i.^trans
-- div,1
all s : State | Init.*(s.trans)
-- div,1
all i : Init | State in i.trans
-- div,1
State in Init.Event.trans.trans
-- div,1
State in Init.trans.Event.trans
-- div,1
all s : State | s in Init.trans
-- div,2
all i : Init | State = i.^trans
-- div,2
State in Init <: ^(trans.Event)
-- div,1
all s: State | s in ^Init.trans
-- div,1
all s: State | s in Init.^trans
-- div,1
all s1 : State |  ^(Init.trans)
-- div,1
all s:State | s :>(Init.^trans)
-- div,1
State-Init in Event.Init.^trans
-- div,1
all s1 : State |  (Init->Event)
-- div,1
all s:State | s in Init.(trans)
-- div,1
all s:State | State in s.^trans
-- div,1
State in Init <: ^(trans[Event])
-- div,1
all s : State | some Init.^trans
-- div,1
all s: State | Init in (trans.s)
-- div,1
all s:State | s in Init.(^trans)
-- div,1
all s:State | s in Init.(*trans)
-- div,1
all s : State | s in Init.*trans
-- div,3
all e : Event | State = e.^trans
-- div,1
all i : Init | State in i<:trans
-- div,1
all s : State | s.trans in State
-- div,1
all s:State | s.^s.trans = State
-- div,1
all s : State | s in Init.^trans
-- div,2
Init.*(State.trans.Event) = State
-- div,1
State-Init in Event.(^Init.trans)
-- div,1
some i : Init | State in i<:trans
-- div,1
State-Init in Event.(Init.^trans)
-- div,1
all s:State | Init.trans.trans:>s
-- div,1
all i : Init | State = ^(i.trans)
-- div,1
all s : State | s in (Init.trans)
-- div,1
all i :Init | State in ^(i.trans)
-- div,1
all s : State | s in (Init.^trans)
-- div,1
all s : State | s in Init.^(trans)
-- div,3
all s1 : State |  ^(Init.trans).s1
-- div,1
all x : Init | State in *(x.trans)
-- div,1
Init.*(State.trans[Event]) = State
-- div,1
all s : State | s in Init.*(trans)
-- div,5
all s:State, i:Init | s in i.trans
-- div,1
no ((State - Init)-(trans.~trans))
-- div,2
State in Init.trans.^(trans.Event)
-- div,1
all s : State | Init.trans in State
-- div,1
all s:State | some s.^trans :> Init
-- div,1
Init.(*trans.(State.Event)) = State
-- div,1
all s:State | Init.Event.s in trans
-- div,1
all e : Event | State = ^Init.trans
-- div,1
State in ~(Init.trans.trans).^Event
-- div,1
all s : State | s in Init.*(~trans)
-- div,1
all s:State, i:Init | s in i.^trans
-- div,2
all e : Event | State = Init.^trans
-- div,1
all s:State, i:Init |  i.^(s.trans)
-- div,1
all s:State | some (s.^~trans):>Init
-- div,1
all s : State | some s.(Init:>trans)
-- div,1
all s:State | s in Init.trans:>State
-- div,1
State->State in Init->^(Event.trans)
-- div,1
all s:State - Init | s in Init.trans
-- div,1
all s : State, i:Init | s in trans.i
-- div,1
all s:State, i:Init | s in (i.trans)
-- div,1
all s:State | some s.^~trans :> Init
-- div,2
all s : Init | ^(s->Event.(s.trans))
-- div,1
all s : State, i:Init | s in i.trans
-- div,2
all s:State | some Init <: (Event.s)
-- div,1
all s:State | Event->s in Init.^trans
-- div,1
all s: State | some (*trans.s & Init)
-- div,1
all s:State - Init | s in Init.^trans
-- div,1
State in (Init.trans)^(~(Init.trans))
-- div,1
all s:State | s :>(Init.trans.^trans)
-- div,1
all s:State | Event->s in ^trans.Init
-- div,2
all s:State | State in s.^trans.Event
-- div,1
all s:State | s in Event.(Init.^trans)
-- div,1
all s: State | s in Init.^trans[Event]
-- div,1
State in Event.Event(Init.trans.trans)
-- div,1
all s:State | (s.trans).^Event = State
-- div,1
all e: Event | e.(Init.^trans) = State
-- div,1
some (Init.trans)[Event].^trans & iden
-- div,2
all i:Init | State in Event.(i.^trans)
-- div,1
all s:State | s in ^Event.(Init.trans)
-- div,3
all i:Init | State in Event.(^i.trans)
-- div,1
State in Event.Event(Init.State.State)
-- div,1
State in (Init.trans).^(~(Init.trans))
-- div,1
all s:State | s in ^(Event.Init.trans)
-- div,1
all s:State | (s.trans).^State = State
-- div,1
all s : State | s in Init.*trans[Event]
-- div,1
all s : State | some (s.~(Init.^trans))
-- div,4
all s1 : State |  (Init->Event) in trans
-- div,1
all s: State | all e: Event | Init.trans
-- div,1
all s: State | State in Event.(s.*trans)
-- div,1
all s : State, i : Init | i->s in ^trans
-- div,2
all s:State | s in ^(Event.(Init.trans))
-- div,2
all s:State |some e:Event | Init.^(e->s)
-- div,9
all s:State | some i:Init | s in i.trans
-- div,1
all s:State | some i:Init | s in trans.i
-- div,1
all s : Init | ^(State->Event.(s.trans))
-- div,1
all s : State | State in Init.*(s<:trans)
-- div,1
all s : State | s in Init . *trans[Event]
-- div,1
all s1 : State |  some ((Init.^trans)).s1
-- div,1
State in {x:State | some (Init.^trans).x}
-- div,1
all s1 : State |  some ((Init.trans)).^s1
-- div,1
all e : Event | State = ^(e.(Init.trans))
-- div,1
State.(Event.trans) in Init.(Event.*trans)
-- div,1
all s: State | all e: Event | Init.trans.e
-- div,1
all s:State | some Init <: trans.(Event.s)
-- div,2
all s:State | some (s.Event.^~trans):>Init
-- div,1
all s:State | some s.Event.^~trans :> Init
-- div,1
all s : State, e : Event | s in Init.^trans
-- div,1
all s:State |some e:Event | s in Init.trans
-- div,1
all s:State, i:Init | s in (i.trans)->State
-- div,1
all s1 : State |  s1.(Init->Event) in trans
-- div,1
all s:State, i:Init | s in State->(i.trans)
-- div,1
some e: Event | Init.trans implies *trans.e
-- div,1
all s:State| some i:Init | s in i->Event->s
-- div,1
Init.*{s1, s2: State | s1.trans.s2} = State
-- div,1
State in ~(Event.(Init.trans.trans)).^Event
-- div,1
all s: State | some i: Init | s in i.^trans
-- div,1
all s:State, i:Init |  some (i.^trans :> s )
-- div,1
all s:State | s in Init.*(State.trans.Event)
-- div,1
all s:State | some (s.Event).^~trans :> Init
-- div,1
all s:State | s in Init.*(Event.State.trans)
-- div,7
all s: State | some (*trans[Event].s & Init)
-- div,1
all s:State | s in Init.*(State.trans.State)
-- div,1
all s : State, i : Init | i->s in trans.trans
-- div,1
all s:(State-Init) | s in Event.(Init.^trans)
-- div,1
all s : Init | State in ^(s->Event.(s.trans))
-- div,1
all i : Init, s : State | s in i.*trans[Event]
-- div,1
all i : Init, e : Event | State = ^e.(i.trans)
-- div,1
all s:State | s in ^(Event.(Init.trans)).trans
-- div,1
all s1 : State |  s1.(Init->Event) in s1.trans
-- div,1
all s : State | s in Init.*(trans.Event.State)
-- div,1
all s : State | s in Init.*(trans.State.Event)
-- div,1
all s : State, i : Init | i.trans.Event.trans.s
-- div,1
all s:State| some i:Init | i->Event->s in State
-- div,1
all s:State |some e:Event | e->s in Init.^trans
-- div,1
all s : State, e : Event| State in e.(s.^trans)
-- div,1
all s : State, e : Event | s in e.(Init.^trans)
-- div,1
all s : Init <: trans | ^(s->(Event.(s.trans)))
-- div,1
all s : State | some s.trans implies Init.trans
-- div,1
some e: Event | all s: State | s in Init.^trans
-- div,1
all s : State | s in Init.(trans[Event][State])
-- div,1
all e : Event | State = Init + ((e.Init).^trans)
-- div,1
all e : Event | State = Init + (e.(^Init.trans))
-- div,1
all s : State, e : Event | State in ^(e.s.trans)
-- div,1
all s:State | s in ^((Event.(Init.trans)).trans)
-- div,1
State in Init.trans.^(State->State.trans[Event])
-- div,1
all s : State | s in Init . *(trans.State.Event)
-- div,1
all s : Init <: trans | State in ^(Event.s.trans)
-- div,1
all s:State | some e:Event | s in ^e.(Init.trans)
-- div,1
all s: State | some i: Init | s in Event.i.^trans
-- div,1
some e: Event | all s: State | s in Init.^trans.e
-- div,1
all s : Init <: trans | State in s.^(trans.Event)
-- div,1
all i:Init | some e:Event | State in e.(i.*trans)
-- div,1
all s:State-Init| some e:Event | s in Init.^trans
-- div,1
all s : Init <: trans | State in ^(s.trans.Event)
-- div,1
State in (Init.trans[Event] + ~Init.trans[Event])
-- div,1
all s : State, e : Event | State in ^(e.(s.trans))
-- div,1
all x : Init, y : State | some (Event.(x.trans)).y
-- div,1
all s : State, i:Init, e:Event |  s in i.trans.e.s
-- div,1
all s:State, s1:State,e:Event, t:trans | s->e in t
-- div,1
all s : Init <: trans | State in ^(Event.(s.trans))
-- div,1
all s : State, i : Init | i->s in trans.trans.trans
-- div,1
all s: State | some i: Init | s in (i.*trans.Event)
-- div,1
all s:State - Init |some e:Event| s in e.Init.trans
-- div,1
some e: Event | all s: State | Init.trans implies s
-- div,1
all s: State | some i: Init | s in (Event.^i.trans)
-- div,1
all s:State-Init| some e:Event | s in ~(Init.trans)
-- div,1
all s : Init <: trans | State in *(Event.(s.trans))
-- div,1
all s : State | Init.^{x,y : State | some x.trans.y}
-- div,1
all s:State-Init| some e:Event | s in Init.^trans[e]
-- div,1
all s:State-Init| some e:Event | s in ^e.(Init.trans)
-- div,1
all s: State | all e: Event | Init.trans implies e->s
-- div,2
all s:State-Init |some e:Event | s in ^e.(Init.trans)
-- div,1
all s:State-Init| some e:Event | s in e.(Init.^trans)
-- div,1
all s : Init <: trans | State in ^(s->Event.(s.trans))
-- div,1
all s:State-Init| some e:Event | s in (s.e.Init.trans)
-- div,1
all s: State | some (*{ss: State | ss.trans}.s & Init)
-- div,1
all s : Init <: trans | State in *(s->Event.(s.trans))
-- div,2
some e: Event | all s: State | Init.trans implies e->s
-- div,1
all s: State | s in Init or some e: Event | trans[e].s
-- div,1
all s:State, s1:State,e:Event, t:trans | s->e in trans
-- div,2
State in (Init.trans[Event] + State.trans[Event].Init)
-- div,1
all s:State - Init |some e:Event| s in e.(Init.^trans)
-- div,1
all s:State-Init| some e:Event | s in ^(s.e.Init.trans)
-- div,1
let x = Init <: trans | State in ~(Event.(State.trans))
-- div,1
all s : State | Init.^{x,y : State | x.trans.y} = Evebt
-- div,1
all s : State | Init.^{x,y : State | x.trans.y} = State
-- div,1
all s: State | s in Init or (some e: Event | trans[e].s)
-- div,1
all s : Init <: trans | State in ^(s->(Event.(s.trans)))
-- div,1
all s1, s2 : State | (s1 in Init) implies(s2 in s1.^trans)
-- div,1
all s: State | (s in Init) or (some e: Event | trans[e].s)
-- div,1
some e: Event | all s: State | Init.trans and e->s in trans
-- div,1
all s : State | s in Init && State in ^(s->Event.(s.trans))
-- div,1
all s : State | some e : Event | s->e in Init.^(State.trans)
-- div,1
all s : State | some e : Event | s.(e.(Init.trans)) in State
-- div,1
all s1, s2 : State | (s1 in Init) implies(s2 in (s1.^trans))
-- div,1
all s: State | some (*{ss: State | ss.trans.Event}.s & Init)
-- div,1
all s : (Init <: trans).Event.State | ^(s->(Event.(s.trans)))
-- div,1
all s1, s2 : State | (s1 in Init) implies (s2 in (s1.^trans))
-- div,2
all s: State | all e: Event | one Init.^trans implies s->e->s
-- div,1
no Init  implies no State and  all i :Init |  i.trans & State
-- div,1
all s: State | all e: Event | Init.trans implies e->s in State
-- div,1
all s: State | all e: Event | Init.trans in trans implies e->s
-- div,1
all s: State | all e: Event | Init.trans implies e->s in trans
-- div,2
all s: State | some e: Event | Init.trans in trans implies e->s
-- div,1
some e: Event | all s: State | Init.trans implies e->s in trans
-- div,1
all s: State | some (*{ss: State, e: Event | ss.trans}.s & Init)
-- div,1
all s: State | some (*{ss: State, e: Event | ss.trans.e}.s & Init)
-- div,1
no Init  implies no State and  all i :Init|(State-Init).^~(i.trans)
-- div,1
let r = all e: Event | State->(State.trans.e) | 
	 		State in Init.^r
-- div,2
{s1 : State, s2 : State | s1->Event->s2 in trans}
-- div,1
let r = {all e: Event | State->(State.trans.e)} | 
	 		State in Init.^r
-- div,1
all s: State | all e: Event | Init.trans in trans implies e->s in trans
-- div,1
all s: State | some e: Event | Init.trans in trans implies e->s in State
-- div,1
all s: State | some e: Event | Init.trans in trans implies e->s in trans
-- div,1
all s: State | some (*{s1, s2: State | some s1.trans[Event].s2}.s & Init)
-- div,1
all s1, s2 : State , e : Event | (s1 in Init) implies (s2 in (s1.e.^trans))
-- div,1
all s: State | some e: Event | Init.trans in trans implies trans.e in trans
-- div,1
all i : Init, s : State | some i.*{s1, s2 : State | s1->Event->s2 in trans}.s
-- div,1
all s1, s2 : State , e : Event | (s1 in Init) implies (s2 in (e.(s1.^trans)))
-- div,1
Init.*{s1, s2 : State | s1->Event->s2 in trans} = State
}

fun trans_bin : State -> State {
-- div,1
no Init  implies no State and  all i :Init|some e:Event |  e.(i.trans) & State
-- div,1
all s: State | some e: Event | Init.trans in trans implies trans.e->s in State
-- div,1
all s: State | some e: Event | Init.trans in trans implies trans.e->s in trans
-- div,2
all i : Init, s : State | some i.(*{s1, s2 : State | s1->Event->s2 in trans}).s
-- div,1
all s: State | some e: Event | Init.trans in trans implies ~trans.e->s in trans
-- div,1
let t = { all x,y : State | some z : Event | x->z->y in trans} | State in Init.(^t)
-- div,1
let t = {all x,y : State | some z : Event | x->z->y in trans} |
	State in Init.(^t)
-- div,1
all s:State, s1:State,e:Event, t:trans | s->e in s.trans
-- div,1
all s:State, s1:State,e:Event, t:trans | s->e in s1.trans
-- div,1
let t = { some s1, s2 : State | some e : Event | s1->e->s2 in trans } | State in Init.(^t)
-- div,1
no Init  implies no State and (some e:Event | all s:(State) | some (Init & trans.(e->s)) )
-- div,1
let t = {all x,y : State | some z : Event | x->z->y in trans} |
	all s : State | some (s.^t)
-- div,1
let t = { all s1,s2 : State | some e : Event | s1->e->s2  in trans } |
  	State in Init.(^t)
-- div,1
no Init  implies no State and (some e:Event | all s:(State-Init) | some (Init & trans.(e->s)) )
-- div,1
let t = {all x,y : State | some z : Event | x->z->y in trans} |
	all s : State | some Init.(s.^t)
-- div,1
let t = {all x,y : State | some z : Event | x->z->y in trans} |
	all s : State | some Init<:(s.^t)
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  all u : State | some Init in u.^t
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  all u : State | some Init in u.(^t)
-- div,1
let t = {all x,y : State | some z : Event | x->z->y in trans} |
	all s : State | some i : Init | s in i.(^t)
-- div,1
let adj = {s1,s2: State | some e: Event | s1 -> e -> s2 in trans} |
  all s: State | some i: Init | s in ^adj
-- div,1
some r1: State->Event | some r2: Event->State | r1.Event->r2 = trans && State in Init.^(r1.r2)
-- div,2
Init.^adj

}

/*
All the states have the same events available.
*/
fun adj: State -> State {
{ x,y : State | some (x.trans).y }
-- div,1
all s1,s2 : State | some e : Event | s1->e->s2  in trans
  	State in Init.(^(all s1,s2 : State | some e : Event | s1->e->s2  in trans))
-- div,1
State in ^(lookupState[Init])
}

/*
All the states have the same events available.
*/
fun lookupState[s: set State] : set State {  
	s.trans[Event]
-- div,1
all s: State | Init.^function
}

/*
All the states have the same events available.
*/
fun function: State->State {
  {s1, s2: State | s1->Event->s2 in trans}
-- div,2
