trans.Event
-- div,1
Init in ~trans
-- div,1
trans = ~trans
-- div,1
Init in ~trans.State
-- div,1
trans.~trans in iden
-- div,1
Init in ~trans.Event
-- div,1
Init in ^(Init.trans)
-- div,1
Init in ~(trans.State)
-- div,1
all s : State | Init in ~s
-- div,1
State.trans.~trans in iden
-- div,1
all s : State | some ~State
-- div,1
all s : State | some ~trans
-- div,1
Init in Event.(State.^trans)
-- div,1
all s : State | some ~s.trans
-- div,1
Init in ^Event.~(State.trans)
-- div,1
some trans.State.Event = Init
-- div,1
all s : State | some (s + ~s)
-- div,1
all s : State | Init in ~(^s)
-- div,1
Init in ~(Event.(trans.State))
-- div,1
all s : State | some ~s<:trans
-- div,1
all s:State | s.trans=~s.trans
-- div,2
Init in ~(Event.(State.trans))
-- div,1
all s:State | Init in s.~^trans
-- div,1
all s : State | Init in ^(~trans)
-- div,1
all s1:State | Init in (s1.trans)
-- div,1
some ~trans.(Event.(State.trans))
-- div,1
all s : State | Init in s.~(trans)
-- div,1
all s : State | Init in s.^(trans)
-- div,1
all x : Event | Init.^(~(trans.x))
-- div,1
all s : State | Init in ^(s.trans)
-- div,1
some (Event.(State.trans)) . ~trans
-- div,1
all s : State | s.*(trans + ~trans)
-- div,1
all s : State | Init in ^(~trans.s)
-- div,1
all s : State | Init in ^(~s.trans)
-- div,1
all s : State | Init in ~(^s.trans)
-- div,1
all s : State | Init in ^(~trans<:s)
-- div,1
all s : State | Init in ~(^s<:trans)
-- div,1
all s : State | Init in ^(~s<:trans)
-- div,1
all x : Event | Init.(^(~(trans.x)))
-- div,1
all s: State | s in Event.(s.^trans)
-- div,2
all s: State | s in Event.(s.*trans)
-- div,1
all s:State | Init.trans in s.~^trans
-- div,1
all s:State-Init | Init in ^(s.trans)
-- div,1
all s: State | Init in (^trans.s).Event
-- div,1
all s : State | some (Init & ^(s.trans))
-- div,1
all s: State | some s.*trans[Event] & Init
-- div,1
all s:State | one i:Init | i in (^trans.s)
-- div,1
all s:State | one i:Init | i in (s.^trans)
-- div,1
all s:State-Init | Init in Event.(s.~trans)
-- div,1
all n : State-Init | Init in State.^trans.n
-- div,1
all s:State-Init | Init in Event.(s.^trans)
-- div,1
all s: State | some (s.*trans[Event] & Init)
-- div,1
Init in State.^{x,y: State | some x.~trans.y}
-- div,1
all s: State | some (s.*(s.trans.Event) & Init)
-- div,1
some s: State | s in s.^trans.State.Event = Init
-- div,1
all s:State | one i:Init | i in State.(s.^trans)
-- div,1
all s:State | one i:Init | i in (s.^trans).Event
-- div,1
all s:State | one i:Init | i in Event.(s.^trans)
-- div,1
all s:State | one i:Init | i in (^trans.s).Event
-- div,1
all s:State | one i:Init | i in Event.(^trans.s)
-- div,1
all s:State | one i:Init | i in (s.^trans).State
-- div,1
some i: Init, r: Event.State.trans | i in r.^trans
-- div,1
(Event.(State.trans)).(Event.~(State.trans)) in iden
-- div,1
some i: Init, r: Event.(State.trans) | i in r.^trans
-- div,1
(Event.(State.trans)).~(Event.(State.trans)) in iden
-- div,1
all s:State | some trans.s implies s.~^trans :> Init
-- div,1
all s:State | some trans.s implies ^(s.trans) :> Init
-- div,1
all s: Event.(State.trans) | Init in (s.~trans).Event
-- div,1
all s: Event.(State.trans) | Init in Event.(s.~trans)
-- div,1
all s:State | some trans.s implies (s.~^trans) :> Init
-- div,1
all s:State | s in trans.State implies s in State.^trans
-- div,1
all s:State | s in trans.State implies s in ^trans.State
-- div,1
all s: Event.(State.trans) | Init in (^trans.State.Event)
-- div,1
all s1, s2:State, e:Event | s1->e->s1 in trans implies ~e
-- div,1
all e : Event | some e.(Init.trans) implies e.~(Init.trans)
-- div,1
all e : Event | some e.(Init.trans) implies ~(Init.trans).e
-- div,1
all s:State | some trans.s implies (s.trans).^Event :> Init
-- div,1
let ss = {x : State | some Init.trans.x} {
   		ss = ~ss 
  }
-- div,1
all s:State | some trans.s implies ^((s.trans).Event) :> Init
-- div,1
all s1, s2:State, e:Event | s1->e->s1 in trans implies ~(s1->e->s1)
-- div,1
all s:State | s in Event.(trans.State) implies s in Event.(State.^trans)
-- div,1
all s:State | s in Event.(trans.State) implies s in Event.(^trans.State)
-- div,1
let trans2 = {s1, s2 : State | some s1.trans.s2} |
    iden in Init.^trans2
-- div,1
all s : State | (some ((Init.^trans) :> s)) implies (some ((s.^trans) :> Init))
-- div,2
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    Init in ~(^trans_bin)
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  Init.^adj & adj.^Init
-- div,1
all t : trans | Init in State.^{x,y : State | some (x.t).y}
-- div,1
all s: Event.(State.trans) | trans.(Event.State) in ^{x,y: State | some x.trans.y}.s
-- div,1
let trans2 = {s1, s2 : State | some s1.trans.s2} |
    State.trans2
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
	all s : State | Init in ~t
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    State.^trans_bin.Init = State
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
	all s : State | Init in ~s.t
-- div,1
let trans2 = {s1, s2 : State | some s1.trans.s2} |
    Init in (Init.^trans2 + Init->Init)
-- div,2
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  some Init in (Init.^adj).^adj
-- div,1
let trans2 = {s1, s2 : State | some s1.trans.s2} |
    Init in (Init.^trans2 + (Init->Init))
-- div,1
let adj = {x,y : State | some e : Event | x->e->y in trans} | ^adj
-- div,2
all s1,s2:State, e1,e2:Event  | s1->e1->s2 in trans implies s2->e2->s1 in trans and s1 in s1.trans
-- div,2
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  all i: Init.^adj|  (some Init in i.^adj )
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  all i: Init.^adj|  (some Init in (i.^adj).^adj )
-- div,1
all s1, s2 : State, e1, e2 : Event | (s1->e1->s2 in trans) implies ((s2->e2->s1 in trans) and (s1 in s1.trans))
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  some i:Init| i.^adj  implies (some Init in (i.^adj).^adj )
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  some i:Init| some i.^adj  implies (some Init in (i.^adj).^adj )
-- div,1
all r : (Init.^function) | lone Init in r.^function
}

fun function: State->State {
  
  {s1, s2: State | some (s1.trans).s2}
-- div,1
all r : (Init.^function) | some Init in r.^function
}

fun function: State->State {
  
  {s1, s2: State | some (s1.trans).s2}
-- div,1
all i: Init, r : (i.^function) | some i in r.^function
}

fun function: State->State {
  
  {s1, s2: State | some (s1.trans).s2}
-- div,1
