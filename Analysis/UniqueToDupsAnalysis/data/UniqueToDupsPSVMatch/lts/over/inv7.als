Init in (Event.~(State.trans))
-- div,1
one Init and Init in (Event.~(State.trans))
-- div,1
all s : State | some (^(s.trans) :> Init)
-- div,1
all s1:State | Init in (s1.trans).State
-- div,1
all x : Event | some Init.(^(~(trans.x)))
-- div,2
all s : State | Init in Event.^(s.trans)
-- div,1
all x : Event | (trans.x) in State one -> one Init
-- div,1
all x : State | (x.trans) in Event one -> one State
-- div,1
all x : Event | (trans.x) in State one -> one State
-- div,2
let ss = {x,y: State | some x.trans.y} {
   		ss = ~ss 
  }
-- div,1
all s : State | some e : Event | (e->Init) in (^(s.trans))
-- div,1
all s : State | Init in s.^{x,y : State | some (x.trans).y}
-- div,1
let trans2 = {s1, s2 : State | some s1.trans.s2} | no State.trans2
-- div,1
let trans2 = {s1, s2 : State | some s1.trans.s2} | iden in ^trans2
-- div,2
all x : State, y : Init, z : Event | trans in y one -> one z one -> one x
-- div,3
let ss = {x,y : State | y in Init and some y.trans.x} {
   		ss = ~ss 
  }
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    iden in ^trans_bin
-- div,1
all s1, s2:State, e:Event | s1->e->s2 in trans implies s2->e->s1 in trans
-- div,1
all e:Event,s1,s2:State | s1->e->s2 in trans implies s2->e->s1 in trans
-- div,1
all s1,s2:State, e1,e2:Event  | s1->e1->s2 in trans implies s2->e2->s1 in trans
-- div,4
all s: Event.(State.trans) | s in ^{x,y: State | some x.trans.y}.Init
-- div,1
all s: Event.(State.trans) | Init in s.^{x,y: State | some x.trans.y}
-- div,1
all x : State, y : Init, z : Event | trans in y one -> one z one -> one x and x != y
-- div,2
all x : State, y : Init, z : Event | trans in y one -> one z one -> one x and z != y
-- div,2
all s1,s2:State, e1,e2,e3,e4:Event  | s1->e1->s2 in trans implies s2->e2->s1 in trans
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    iden in ^trans_bin . *trans_bin
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    iden in *trans_bin . ^trans_bin
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    iden in ^trans_bin . ^trans_bin
-- div,2
let t = {x,y : State | some z : Event | x->z->y in trans} |
	State in (^t).Init
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
	State in Init.(^(~t))
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
	State in Init.~(^t)
-- div,1
let adj = {x,y: State | some (x.trans).y} | all s:Init.^adj | Init in s.^adj
-- div,1
let t = {x: State, y: State | some (x.trans).y } |
    all s: Init.^t | Init in s.^t
-- div,2
all e:Event,s1,s2:State |some e1:Event| s1->e->s2 in trans implies s2->e1->s1 in trans
-- div,2
all s1,s2:State, e1,e2:Event  | s1->e1->s2 in trans implies s2->e2->s1 in trans and s1 in e2.(s1.trans)
-- div,1
let adj = {x,y: State | some (x.trans).y} | all s:Init.^adj | Init in s.^adj and lone Init
-- div,1
let t = {x: State, y: State | some (x.trans).y } |
  	all i: Init | all s: i.*t | i in s.*t
-- div,1
let t = {x: State, y: State | some (x.trans).y } |
  	all i: Init | all s: i.*t | i in s.^t
-- div,2
let t = {x: State, y: State | some (x.trans).y } |
  	all i: Init | all s: i.^t | i in s.^t
-- div,2
all s : State | Init in s.trans[Event] + s.trans[Event].trans[Event] + s.trans[Event].trans[Event].trans[Event]
-- div,1
all s : State | Init in s + s.trans[Event] + s.trans[Event].trans[Event] + s.trans[Event].trans[Event].trans[Event]
-- div,1
let t = {x: State, y: State | some (x.trans).y } |
  	all i: Init | all s: i.*t | i in s.^t or i = s
-- div,1
let t = {x: State, y: State | some (x.trans).y } |
  	all i: Init | all s: i.^t | i in s.^t or i = s
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    all s : State | s in (Init.^trans_bin) implies Init in s.^trans_bin
-- div,1
all s: State | s in Init.^{s1, s2: State | some s1.trans.s2} implies Init in s.^{s1, s2: State | some s1.trans.s2}
-- div,1
all s: State | s in Init.*{s1, s2: State | some s1.trans.s2} implies Init in s.*{s1, s2: State | some s1.trans.s2}
-- div,1
let adj = {s1,s2: State | some e: Event | s1 -> e -> s2 in trans} |
  all r: Event.(State.trans) | some i: Init | i in r.^adj
-- div,1
all to: State | reachable[Init, to] => reachable[to, Init]
}

pred reachable[from, to: State]{
   	let rel = { s1, s2: State | some s1 -> Event -> s2 & trans } |
  		to in from.^rel
-- div,1
all s1,s2:State, e1,e2:Event  | s1->e1->s2 in trans implies s2->e2->s1 in trans
  	all s:State,e1,e2:Event | s->e1->s in trans implies s->e2->s in trans
-- div,1
all s1,s2:State, e1,e2:Event  | s1->e1->s2 in trans implies s2->e2->s1 in trans
  	all s:State,e1,e2:Event | s->e1->s in trans implies s->e1->s in trans
-- div,1
