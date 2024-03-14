-- equiv pair start,48
Init.^{x,y: State | some x.trans.y} = State
-- div,9
Init.^{s1, s2: State | some s1.trans.s2} = State
-- div,1
State in Init.^{s1, s2: State | s2 in s1.trans[Event]}
-- div,1
Init.^({x: State, y: State | some (x.trans).y }) = State
-- div,3
let adj = {x,y: State | some (x.trans).y} | State in Init.^adj
-- div,1
all s : State | Init.^{x,y : State | some x.trans.y} = State
-- div,1
let trans2 = {s1, s2 : State | some s1.trans.s2} |
    Init.^trans2 = State
-- div,1
State in Init.(^{s1,s2 : State | some e : Event | s1->e->s2  in trans})
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    Init.^trans_bin = State
-- div,1
let rel = { s1, s2: State | some s1 -> Event -> s2 & trans } |
  		State in Init.^rel
-- div,1
State in Init.(^{ x : State, y : State | some e : Event | x->e->y in trans})
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
	State in Init.(^t)
-- div,2
let t = { s1, s2 : State | some e : Event | s1->e->s2 in trans} | State in Init.(^t)
-- div,2
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
 (State) in Init.^adj
-- div,1
let adj = { s1, s2 : State | some e : Event | s1->e->s2 in trans} | State in Init.^adj
-- div,2
State = Init.(^onlyStates)
}

fun onlyStates : set State -> State {
  { s1,s2: State | some e: Event | s1->e->s2 in trans }
-- div,1
State in Init.(^onlyStates)
}

fun onlyStates : set State -> State {
  { s1,s2: State | some e: Event | s1->e->s2 in trans }
-- div,2
let rel = { s1, s2: State | some s1 -> Event -> s2 & trans } |
  		all s: State | s in Init.^rel
-- div,1
State = Init.(^onlyStates)
}

fun onlyStates : set State -> State {
  { s1, s2: State | some e : Event | s1->e->s2 in trans }
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  State in Init.(^t)
-- div,1
State = Init.~(^onlyStates)
}

fun onlyStates : set State -> State {
  { s2, s1: State | some e : Event | s1->e->s2 in trans }
-- div,1
State = Init.(^onlyStates)
}

fun onlyStates : set (State -> State) {
  { s1, s2: State | some e : Event | s1->e->s2 in trans }
-- div,1
State = Init.(^onlyStates)
}

fun onlyStates : set (State -> State) {
  { s1, s2 : State | some e : Event | s1->e->s2 in trans }
-- div,6
State in Event.(Init.trans) + Event.((Event.(Init.trans)).trans) + Event.((Event.((Event.(Init.trans)).trans)).trans)
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  all s:State | s in  Init.(^t)
-- div,1
all s : State | s in Init.trans[Event] + Init.trans[Event].trans[Event] + Init.trans[Event].trans[Event].trans[Event]
-- div,2
let adj = {s1,s2: State | some e: Event | s1 -> e -> s2 in trans} |
  all s: State | some i: Init | s in i.^adj
-- div,1
let t = { x : State, y : State | some e : Event | x->e->y in trans} |
  all s:State | some i:Init | s in  i.(^t)
-- div,1
-- equiv pair end
