Init in Event
-- div,1
State in Init
-- div,5
some Init.trans
-- div,2
some ^(Init.trans)
-- div,1
some Event.(Init.trans)
-- div,2
some Event.^(Init.trans)
-- div,2
Init = trans.State.Event
-- div,1
State in Init.*(Event.trans)
-- div,2
all s : State | one Init
-- div,1
State-Init in Event.(Init.trans)
-- div,1
State in Init.trans[Event] + Init
-- div,4
all s:State | some s.trans
-- div,1
State-Init in Event.^(Init.trans)
-- div,3
all s : State | some s.trans[Event]
-- div,1
all s : State | some s.trans.State
-- div,1
all s : State | s in s.trans[Event]
-- div,1
all s : State | some Init.(s<:trans)
-- div,1
all s:State | some s.trans :> Init
-- div,1
all s : State | some s.(Init<:trans)
-- div,6
all i: Init | Event.(i.trans) = State
-- div,2
all s:State | s in Init.*(s.trans)
-- div,1
all e: Event | e.(Init.trans) = State
-- div,1
all i:Init | State in Event.(i.trans)
-- div,1
all x : Init | State in x.trans.Event
-- div,2
all s:State | Event->s in Init.trans
-- div,2
all e : Event | State = Init.^(e.trans)
-- div,1
all s:State | Init->Event->s in trans
-- div,2
all e : Event | State = e.^(Init.trans)
-- div,3
all s : State | s in Init.*(trans.State)
-- div,2
all e:Event | State in e.^(Init.trans)
-- div,1
all x : Init | State in (*(x.trans)).Event
-- div,1
all s : State | s in Init.*(Event.trans)
-- div,4
all e : Event | State in Init.*(e.trans)
-- div,1
all s : State | s in Init.*(trans[State])
-- div,1
all x : Init | State in Event.*(x.trans)
-- div,4
all i:Init | State in Event.^(i.trans)
-- div,1
all s : State | s in Init.*(trans.Event)
-- div,1
all s : State | State in Init.*(s.trans)
-- div,3
all x  : Event | State in Init.*(trans.x)
-- div,2
all x  : Event | State in *(Init.trans).x
-- div,1
all x : State | State in Event.*(x.trans)
-- div,2
State in Init.^(State->State) and #State != 1
-- div,1
all s1 : (State-Init) |  one (Init.trans).s1
-- div,1
all s : State, i:Init | s in i.trans.s
-- div,1
all s1 : (State-Init) |  some (Init.trans).s1
-- div,1
all s: State | some (*(trans[Event]).s & Init)
-- div,1
all x : Init | State in Event.*(x.trans) + x
-- div,1
all s:(State-Init) | s in Event.(Init.trans)
-- div,1
all s:(State-Init) | s in Init.(Event.trans)
-- div,2
all s : State, i : Init | some s.(i <: trans)
-- div,1
all i: Init, e: Event | e.(i.trans) = State
-- div,1
all s : State, i : Init | some (i <: trans).s
-- div,2
all i : Init, e : Event | State = e.(i.trans)
-- div,1
all s:State, i:Init |  some i.^(s.trans)
-- div,2
all s : State | some s.(Init<:trans:>State)
-- div,1
all s:State | Init->Event->(s-Init) in trans
-- div,1
all x : Init, y : State | State in y.(x.trans)
-- div,1
all s:State, i:Init | s in State.(i.trans)
-- div,1
all e : Event | State = Init + (e.^(Init.trans))
-- div,1
all s:State, i:Init | s in (i.trans).State
-- div,2
all x : Init, y : Event | State in y.(x.trans)
-- div,2
all e : Event | State = (e.^(Init.trans)) + Init
-- div,1
all s : State, i:Init | s in i.trans.Event
-- div,1
all s:(State-Init) | s in Event.^(Init.trans)
-- div,1
all s : Init | State in s.^(s->Event.(s.trans))
-- div,1
all s:(State-Init) | s in Init.^(Event.trans)
-- div,1
all i : Init, e : Event | State = e.^(i.trans)
-- div,2
all x : Init, y : Event | State in y.*(x.trans)
-- div,4
all x : Init, y : State | State in y.^(x.trans)
-- div,1
all x : Init, y : Event | State in *(x.trans).y
-- div,1
all s:State, i:Init |  some (Event.^(i.trans))
-- div,1
all x : Init, y : Event | State in y.^(x.trans)
-- div,1
all x : Init, y : Event | State in x.*(trans.y)
-- div,1
all i : Init, s : State | s in i.*(trans[Event])
-- div,1
all s : State, e : Event| State in e.^(s.trans)
-- div,2
all s : Init | State in  s.^(State->Event.(s.trans))
-- div,1
all s : Init | State in State.^(s->Event.(s.trans))
-- div,1
all i:Init| no ((State-Init)  - (Event.^(i.trans)) )
-- div,1
all s : Init | State in ^(s->Event.(s.trans)).State
-- div,1
all s : Init | State->State in ^(s->Event.(s.trans))
-- div,1
all x : Init, y : Event | State in y.*(x.trans) + x
-- div,1
all s : Init | State->State in ^(State->Event.(s.trans))
-- div,1
all s: State | all e: Event | e->s in Init.trans
-- div,1
all s : State | some e : Event | e.(s.trans) in Init
-- div,1
all s : State, i:Init, e:Event |  s in trans.e.i
-- div,1
all s : State, i:Init, e:Event |  s in i.trans.e
-- div,1
all s : State, i:Init, e:Event |  s in trans.i.e
-- div,1
all s : State, i : Init | some i.trans.Event.trans.s
-- div,1
Init.(^{ s, ns : State | s->Event->ns in trans }) = State
-- div,5
all s : State, i : Init | some (i.trans).Event.(trans.s)
-- div,1
all i:Init, s:State, e:Event | i->e->s in trans
-- div,1
all s:State| some i:Init | i->Event->s in trans
-- div,1
all i:Init | some e:Event | State in e.*(i.trans)
-- div,3
Init.^{s1, s2 : State | s1->Event->s2 in trans} = State
-- div,1
all i :Init | some e:Event| State in e.^(i.trans)
-- div,1
Init.*{s1, s2 : State | s1->Event->s2 in trans} = State
-- div,3
all s:State, s1:State, e:Event | e->s1 in s.trans
-- div,1
all i:Init | some e:Event | no  (State  - (e.*(i.trans) ))
-- div,1
all s:State-Init| some e:Event | s in Init.trans[e]
-- div,7
some Init and all i:Init|  no ((State-Init)  - (Event.^(i.trans)) )
-- div,1
all i:Init|some Init implies  no ((State-Init)  - (Event.^(i.trans)) )
-- div,2
all s:State-Init| some e:Event | s in ^(trans.e).Init
-- div,1
all s:State-Init| some e:Event | s in ~(Init.trans)[e]
-- div,1
all s:State-Init| some e:Event | s in e.^(Init.trans)
-- div,3
all i:Init| some State implies   no ((State-Init)  - (Event.^(i.trans)) )
-- div,1
Init.{s1 : State, s2 : State | s1->Event->s2 in trans} = State
-- div,1
Init.*{s1 : State, s2 : State | s1->Event->s2 in trans} = State
-- div,1
all i:Init, s:State, e:Event | i!=s and i->e->s in trans
-- div,1
all i:Init | some e:Event | ( State in e.*(i.trans) ) or no Init
-- div,1
all i:Init | some e:Event | no ((State-Init)  - (Event.^(i.trans)) )
-- div,1
all i:Init | some e:Event | some Init implies State in e.*(i.trans)
-- div,1
all i:Init | some e:Event | some  Init and no  (State  - (e.*(i.trans) ))
-- div,1
all i : Init | i.^{s1, s2 : State | s1->Event->s2 in trans} = State
-- div,4
all i:Init | some e:Event | some  Init implies no  (State  - (e.*(i.trans) ))
-- div,1
all i : Init | i.*{s1, s2 : State | s1->Event->s2 in trans} = State
-- div,2
all i:Init| some State implies some Init and    no ((State-Init)  - (Event.^(i.trans)) )
-- div,1
all s: State | some (*{s1, s2: State | s1 in s2.trans[Event]}.s & Init)
-- div,1
all i:Init| some trans implies some Init and    no ((State-Init)  - (Event.^(i.trans)) )
-- div,1
all s: State | some (*{s1, s2: State | s1->s2 in trans.Event}.s & Init)
-- div,1
all s: State | some (*{s1, s2: State | s1->s2 in trans[Event]}.s & Init)
-- div,1
all s: State | some (*{s1, s2: State | s1->Event->s2 in trans}.s & Init)
-- div,1
all s: State | some (*{s1, s2: State | some (s2 <: trans :> s1)}.s & Init)
-- div,1
Init.*({x: State, y: State | some e: Event | x.trans[e] = y }) = State
-- div,1
Init.^trans_bin = State
}

fun trans_bin : State -> State {
    {s1, s2 : State | s1->Event->s2 in trans }
-- div,1
Init.*trans_bin = State
}

fun trans_bin : State -> State {
    {s1, s2 : State | s1->Event->s2 in trans }
-- div,2
all u : Init | State in u.*{ x : State, y : State | x->Event->y in trans}
-- div,2
some Init and  some (State-Init) and all i:Init|    no ((State-Init)  - (Event.^(i.trans)) )
-- div,1
all i : Init, s : State | s in i.(*{s1, s2 : State | s1->Event->s2 in trans})
-- div,1
all i : Init, s : State | s in i.(^{s1, s2 : State | s1->Event->s2 in trans})
-- div,1
let t = { s2, s1 : State | some e : Event | s1->e->s2 in trans } | State in Init.(^t)
-- div,1
all i : Init | i.(^{s1, s2 : State | some e : Event | s1->e->s2 in trans}) = State
-- div,1
all u : Init | State in u.*{ x : State, y : State | some e : Event | x->e->y in trans}
-- div,2
some u : Init | State in u.*{ x : State, y : State | some e : Event | x->e->y in trans}
-- div,1
all i : Init, s : State | s in i.(^{s1, s2 : State | some e : Event | s1->e->s2 in trans})
-- div,1
all u : Init | State in (u.*{ x : State, y : State | some e : Event | x->e->y in trans}) + u
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  all i:Init |(State) in i.^adj
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  all i:Init |(State) in i.*adj
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  some i:Init | (State) in i.*adj
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  all u : State | Init in u.(^t)
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  all i:Init |(State-Init) in i.^adj
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  all u : Init | State in u.^t
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  all u : Init | State in u.*t
-- div,1
let adj = {x,y : State | some e : Event | x->e->y in trans} | 
  	all i : Init, s : State | i->s in *adj
-- div,1
let adj = {x,y : State | some e : Event | x->e->y in trans} | 
  	all i : Init, s : State | i->s in ^adj
-- div,2
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  all i:Init | some Init implies (State) in i.*adj
-- div,1
let adj = {x,y : State | some e : Event | x->e->y in trans} | 
  	all disj i : Init, s : State | i->s + s->i in ^adj
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  all u : State | one e : Init | e in u.(^t)
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  all u : State | some e : Init | e in u.(^t)
-- div,1
