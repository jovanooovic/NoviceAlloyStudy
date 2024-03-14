/*
All the states have the same events available.
*/
-- div,1
State in
-- div,1
Init^.trans
-- div,2
all s : State
-- div,1
let st = Node
-- div,1
all s:State |
-- div,1
State in Init.
-- div,1
all s: State |
-- div,1
all s1 : State |
-- div,1
all State in Init
-- div,1
State in Init.^tr
-- div,1
State in Init.*tr
-- div,1
Init in ^adj.State
-- div,1
Init->State in *tr
-- div,2
State in Init.^adj
-- div,3
State in Init.*adj
-- div,8
Init->State in ^tr
-- div,1
Init in State.^adj
-- div,1
Node in Init.*trans
-- div,1
State in init.^trans
-- div,1
States in init.^trans
-- div,1
All s:State | s.^Init
-- div,1
States = (Init.^trans)
-- div,1
State = Init.^function
-- div,1
all s: State | s^.trans
-- div,1
State in e.(Init.trans)
-- div,1
Init.^function in State
-- div,1
State in Init.^function
-- div,1
State-Init in Init.*adj
-- div,1
State in fromState[Init]
-- div,1
State in e.(Init.^trans)
-- div,1
State in Init.lookupState
-- div,2
all s : State | one Intit
-- div,1
State in Init.^onlyStates
-- div,1
State in Init.Trans.Event
-- div,1
State in Init.trans..trans
-- div,1
State in State.lookupState
-- div,1
State in Init.^lookupState
-- div,10
range[(Init.trans)] = State
-- div,1
Event^.(Init.trans) = State
-- div,1
State in Init.^(trans[Etat])
-- div,1
all s:State | s in Init.^adj
-- div,2
all s:State | Init in s.^adj
-- div,1
all s: State | Init^.function
-- div,1
for all i : Initial | trans.i
-- div,1
State in Event.^(Init.trans).
-- div,1
all i : Init | State in i.*adj
-- div,1
all s : State | s in Init.*adj
-- div,1
State in Events. (Init.^trans)
-- div,1
all s: State | s in Init.trans^
-- div,1
all s: State | Init in trans*.s
-- div,1
all i : Init | State in i . ^adj
-- div,1
all i : Init | State in i . *adj
-- div,1
all s1 : State |  ^(Init.trans).s
-- div,1
all s:State | s in :>(Init.trans)
-- div,1
all s: State | Init in (trans.s)*
-- div,1
State in Init + Init.^lookupState
-- div,1
all i : Initial | State in i.trans
-- div,2
State in fromState[Init].fromState
-- div,1
no ((States - Init)-(trans.~trans))
-- div,1
all s : State | some Initial.^trans
-- div,1
((init.trans)^[Event]).trans[Event]
-- div,1
for all i : Initial | trans.Initial
-- div,4
all s : State | s in Init.reachable
-- div,3
all s : State | s in reachable[Init]
-- div,1
all s : State | s in Init.^reachable
-- div,1
all i : Init, s : State | s in i.*tr
-- div,3
all s : State | s in Init.*reachable
-- div,2
State in (fromState[Init]).fromState
-- div,1
all s : State | State in e.(s.^trans)
-- div,2
all s:State-Init| some e:Event | s in
-- div,2
all s : State | s in Init.^onlyStates
-- div,4
all s : State | s in Init. (reachable)
-- div,1
all s : State | s in Init. *(reachable)
-- div,1
all e : Event | State = r.^(Init.trans)
-- div,1
all s:State-Init | s in ^(trans.e).Init
-- div,1
all s:State | some i:Init | s in i.^succ
-- div,2
all s: State | some i: Init |some i.^adj
-- div,1
State in Event.(Event(Init.trans.trans))
-- div,1
all x : Init | Node in (*(x.trans)).Event
-- div,1
all s: State | some i: Init | s in i.^adj
-- div,1
(all s:State | some i:Init | s in i.^succ)
-- div,1
all s : State | some i: Init | s in i.^adj
-- div,1
all s:State, some i:Init | s in i->Event->s
-- div,1
State in ((init.trans)[Event]).trans[Event]
-- div,1
State in ((init.trans)^[Event]).trans[Event]
-- div,1
all s:State, i:Init |  some (i.^trans :< s )
-- div,1
all x : Init | State in lone Event.*(x.trans)
-- div,1
for s: State | some e: Event | (Init.trans).e
-- div,1
all s : State | s in Init.reachable.reachable
-- div,2
for s: State | some i: Init | i in trans.s.Event
-- div,1
for s: State | some i: Init | i in trans.s.Event
-- div,1
all i:Init | some e:Event | State in e.(i.*tras)
-- div,2
all e : Event | State = Init + ((e.Init).^trans))
-- div,1
all s : Init <: trans | State in n.^(trans.Event)
-- div,1
some e:Event, some s:State| Init in ^trans.(e->s)
-- div,1
all s: State | some i: Init | i in  Event.(trans.s)
-- div,2
all x : Init, all y : Event | State in *(x.trans).y
-- div,1
all s:State |some e:Event | s in e.^(Initial.trans)
-- div,2
all s: State | some i: Init | i in  Event.(trans.s)
-- div,1
let adj={x,y:State | some e:Event |x->e->y in trans}
-- div,1
all s:State-Init| some e:Event | s in Init.trans^[e]
-- div,1
all s: State | some e: Event | all e->s in Init.trans
-- div,1
all s : State | let r[x] = x.tran[Event] | s in Init.*r
-- div,1
all s : State | s in Init.reachable.reachable.reachable
-- div,2
let adj =  {x,y:State | some e:Event | x->e->y in trans}
-- div,1
let ts : onlyStates[] |
  		all s : State | s in Init.^ts
-- div,1
let adj =  ({x,y:State | some e:Event | x->e->y in trans})
-- div,1
all s : State | s in Init && State in ^(s->Event.(n.trans))
-- div,1
for s: State | some e: Event | (Init.trans).^(Event->State)
-- div,1
let adj = ( all x,y:State | some e:Event | x->e->y in trans )
-- div,1
all e : Event | State = Init + (e.^(Init.trans))

/*
All the states have the same events available.
*/
-- div,1
all s : State | s in Init.reachable.reachable.reachable.reachable
-- div,1
Initial.{s1 : State, s2 : State | s1->Event->s2 in trans} = State
-- div,1
Init.*({x: State, y: State | any e: Event | x.trans[e] = y}) = State
-- div,1
let adj = ( all x,y:State | some e:Event | x->e->y in trans )
  	^adj
-- div,2
all s: State.trans.Event | s.^{y,x: State | some x.trans.y} = Initial
-- div,1
let r = {State->(State.trans.e) | e in Event} | 
	 		State in Init.^r
-- div,2
all  s : (State - Init)  | some e:Event |  some ( Init & trans^.(e->s)
-- div,1
let r = {State->(State.trans.e)| all e: Event} | 
	 		State in Init.^r
-- div,1
Init.*({x: State, y: State | (any e: Event | x.trans[e] = y) }) = State
-- div,1
let r = {all e: Event | State->(State.trans.e)} | 
	 		State in Init.^r
-- div,1
all  s : (State - Init)  | some e:Event |  some ( Init & trans^.(e->s) )
-- div,2
all u : Init | Node in  u.*{ x : State, y : State | x->Event->y in trans}
-- div,1
let r = {State->(State.trans.e)| all: e in Event} | 
	 		State in Init.^r
-- div,1
all s: State | some (*{s1, s2: State | some (s2 <: trans :> s1}.s & Init)
-- div,1
let adj = {s1,s2: State | some e s1.e.s2}
  all s: State | some i: Init | s in ^adj
-- div,1
let trans_bin = {s1 : State, s2 : State | some s1.trans.s2}
    Init.*trans_bin = State
-- div,1
let t = { s1,s2 : State | some e : Event | s1->e->s2  in trans } |
  	State in Init.(^t})
-- div,1
let adj = {s1,s2: State | s1 -> e -> s2 in trans}
  all s: State | some i: Init | s in ^adj
-- div,1
let adj={x,y:State | some e:Event |x->e->y in trans}
  
  all i:Init |(State-Init) in i.^adj
-- div,3
all x : Init | Node in x.*(trans.Event)

/*
All the states have the same events available.
*/
-- div,1
let t = { all s1,s2 : State | some e : Event | s1->e->s2  in trans } |
  	State in Init.(^t})
-- div,2
all x : Init  | Node in x.*(trans.Event)

/*
All the states have the same events available.
*/
-- div,1
let t = {all x,y : State, some z : Event | x->z->y in trans}
	all s : State | some Init.(s.^t)
-- div,2
all x : Init | Node in (*(x.trans)).Event

/*
All the states have the same events available.
*/
-- div,1
let t = {all x,y : State, some z : Event | x->z->y in trans}|
	all s : State | some Init.(s.^t)
-- div,1
no Init  implies no State and (some e:Event | all s:(State-Init) | some(Init & trans^.(e->s)) )
-- div,1
all e : Event | State = (e.(Init.^trans))

/*
All the states have the same events available.
*/
-- div,1
all e : Event | State = (e.^(Init.^trans))

/*
All the states have the same events available.
*/
-- div,1
let t = {all x,y : State, some z : Event | x->z->y in trans} |
	all s : State | some Init.(s.^t)
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans}
  all u : Init | State in u.*t
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans},
  all u : Init | State in u.*t
-- div,1
all x : Init, y : State | Node x.*(trans.Event)

/*
All the states have the same events available.
*/
-- div,1
}

fun f[t : trans] : State->State {
	{s1->s2 : State->State | s1 in trans.univ and s2 in univ.trans}
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  some e : Init | Node in e.(^t)
-- div,1
let t = {all x,y : State, some z : Event | x->z->y in trans}
	all s : State | State in Init.*(s.trans)
-- div,1
all e : Event | State = Init + (e.^(Init.^trans))

/*
All the states have the same events available.
*/
-- div,1
let adj = {s1,s2: State | some e: Event | s1 -> e -> s2 in trans}
  all s: State | some i: Init | s in ^adj
-- div,1
Init.*trans_bin = State
}

fun trans_bin : State -> State {
    {s1:Book, s2:Addr | s1->Event->s2 in trans }
-- div,1
one Init
}

fun f[t : trans] : State->State {
	{s1->s2 : State->State | s1 in trans.univ and s2 in univ.trans}
-- div,1
State in Init.(^onlyStates)
}

fun onlyStates : set State -> State {
  s1,s2: State | some e: Event | s1->e->s2 in trans
-- div,1
State = Init.(^onlyStates)
}

fun onlyStates : set (State -> State) {
  { (s1, s2) : State | some e : Event | s1->e->s2 in trans }
-- div,1
x and (all s:State | some i:Init | s in i.^succ)
}

pred x{
	all s1,s2:State | s1->s2 in succ iff some y:Event | s1->y->s2 in trans
-- div,1
all s1,s2 : State | some e : Event | s1->e->s2  in trans
  	State in Init.(^( s1,s2 : State | some e : Event | s1->e->s2  in trans))
-- div,1
x implies all s:State | some i:Init | s in i.^succ
}

pred x{
	all s1,s2:State | s1->s2 in succ iff some y:Event | s1->y->s2 in trans
-- div,1
x implies (all s:State | some i:Init | s in i.^succ)
}

pred x{
	all s1,s2:State | s1->s2 in succ iff some y:Event | s1->y->s2 in trans
-- div,1
all s : State | s in Init.*tran
}

/*
All the states have the same events available.
*/
fun tran[s : State] : set State {
  s.trans[Event]
-- div,1
State in ^fromState[Init]
}

/*
All the states have the same events available.
*/
fun fromState[s1: State] : set State {  
	s1.trans[Event]
-- div,1
all s : State | s in Init.*tran1
}

/*
All the states have the same events available.
*/
fun tran1[s : State] : set State {
  s.trans[Event]
-- div,1
all s : State | s in Init.*tran1
}

/*
All the states have the same events available.
*/
fun tran1 (s : State) : set State {
  s.trans[Event]
-- div,1
State in Init.^lookupState
}

/*
All the states have the same events available.
*/
fun lookupState[s: set State] : set State {  
	s.trans[Event]
-- div,3
all s : State | s in Init.*reachable
}

/*
All the states have the same events available.
*/
fun reachable[s : State] : set State {
  s.trans[Event]
-- div,1
all s : State | s in Init .* reachable
}

/*
All the states have the same events available.
*/
fun reachable[s : State] : set State {
  s.trans[Event]
-- div,1
State in fromState[Init].^fromState
}

/*
All the states have the same events available.
*/
fun fromState[s: set State] : set State {  
	s.trans[Event]
-- div,1
all s : State | s in Init. *(reachable)
}

/*
All the states have the same events available.
*/
fun reachable[s : State] : set State {
  s.trans[Event]
-- div,1
State in (fromState[Init]).^fromState
}

/*
All the states have the same events available.
*/
fun fromState[s: set State] : set State {  
	s.trans[Event]
-- div,1
all s: State | Init.^function(s)
}

/*
All the states have the same events available.
*/
fun function(s: State): State->State {
  {s1, s2: State | s1->Event->s2 in trans}
-- div,1
all s: State | Init.^function[s]
}

/*
All the states have the same events available.
*/
fun function[s: State]: State->State {
  {s1, s2: State | s1->Event->s2 in trans}
-- div,1
