Init in Init.^adj
-- div,1
Init in Init.*adj
-- div,3
Init in State.*adj
-- div,1
Init in Init.^adj.*adj
-- div,2
all s:State | one i:Init
-- div,1
Init in Event.(State.trans)^
-- div,1
all s:State | one i:Init | i in
-- div,1
all s : Init.^tr | s.^tr in Init
-- div,2
all s : Init.^tr | Init in s.^tr
-- div,1
all s : Init.^adj | Init in s.*adj
-- div,2
all s : Init.^adj | Init in s.^adj
-- div,2
all s : State | Init in ~(^strans)
-- div,1
all s : Init.*adj | Init in s.*adj
-- div,2
all s: Init.^adj | some s.^adj & Init
-- div,1
all s: Init.*adj | some s.*adj & Init
-- div,1
all s : State | Init in s.^onlyStates
-- div,1
all s:  Init.^adj | some s.^adj & Init
-- div,1
all s : Init.^adj | some s.^adj & Init
-- div,1
(all s : State | Init in s.^onlyStates)
-- div,1
all s : Init.*adj | some s.^adj <: Init
-- div,1
all s : Init.^adj | some s.^adj <: Init
-- div,1
all s : Init.*adj | some s.*adj <: Init
-- div,1
all s:State-Init | Init in e.^(s.trans)
-- div,1
all s: in Init.^adj | some s.^adj & Init
-- div,1
all n : State-Init | Init in Node.^trans.n
-- div,1
all s : Init.^tr | some i : Init | i in s.^tr
-- div,1
all s: State | some (s.*(trans..Event) & Init)
-- div,1
all r : (Init.^function) | Init in r.^function
-- div,2
all s: State | from[Init, to] => from[to, Init]
-- div,1
some s: State | sin s.^trans.State.Event = Init
-- div,1
all to: State | from[Init, to] => from[to, Init]
-- div,1
all i: Init, r : (i.^function) | i in r.^function
-- div,2
(all s : State.^onlyState | Init in s.^onlyStates)
-- div,1
all r : (Init.^function) | some Init & r.^function
-- div,1
some i: Init, r : (i.^function) | i in r.^function
-- div,1
(all s : State.^onlyStates | Init in s.^onlyStates)
-- div,2
some i: Initial, r: Event.State.trans | i in r.^trans
-- div,1
(no trans) or
	(all s : State | Init in s.^onlyStates)
-- div,1
all s: State | s in s.^{x, y: State | some (x.trans).y}}
-- div,1
all r : (Init.^function) | all i: Init | i in r.^function
-- div,1
all i, s : State | s in i.^reachable => i in s.^reachable
-- div,2
(State = Init) or
	(all s : State | Init in s.^onlyStates)
-- div,1
all i, s : State | s in i.^reachable <=> i in s.^reachable
-- div,1
(all s : (State.^onlyStates - Init) | Init in s.^onlyStates)
-- div,1
all s : State | s in Init.^reachable => Init in s.^reachable
-- div,1
all s: State | s in Init.^edge implies some (Init & s.^edge)
-- div,1
all i : Init, s : State | s in i.*reachable => i in s.*reachable
-- div,1
all i : Init, s : State | s in i.^reachable => i in s.^reachable
-- div,1
let t = {x: State, y: State | some (x.trans).y }
  Init in Init.^t
-- div,1
let t = {x: State, y: State | some (x.trans).y };
  Init in Init.^t
-- div,1
let trans2 = {s1, s2 : State | some s1.trans.s2} |\n    no State.trans2
-- div,1
all s : State | s in Init.^reachable => some i : Init | i in s.^reachable
-- div,1
all s : State | (s in Init.(^onlyStates)) implies (Init in s.(^onlyStates))
-- div,1
all s : State | (s in Init.(^onlyStates)) implies (Init in s.~(^onlyStates))
-- div,1
all s1, s2 : State | (s1 in s2.(^onlyStates)) implies (s2 in s1.(^onlyStates))
-- div,1
all s1, s2 : State | (s1 in s2.(^onlyStates)) implies (s2 in s1.~(^onlyStates))
-- div,1
all s : State, i : Init | (s in i.(^onlyStates)) implies (i in s.(^onlyStates))
-- div,1
all s : State {
      some i : Init | s in i.^reachable => i in s.^reachable
    }
-- div,1
all s : State {
      some i : Init | s in i.*reachable => i in s.*reachable
    }
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  Init.^adj & adj^.Init
-- div,1
let t = {x: State, y: State | some (x.trans).y } |
  	all s: i.^t | some s.^t & Init
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} | all s : State | Init in s.~t}
-- div,1
all s : State | (one Init) and ((s in Init.(^onlyStates)) implies (Init in s.(^onlyStates)))
-- div,1
let t = {x: State, y: State | some (x.trans).y } |
  	all i: Init | all s: i.*t | i in s.^t or i == s
-- div,1
let adj = {s1,s2: State | some e: Event | s1 -> e -> s2 in trans} |
  all r: Init.^ts | some i: Init | i in r.^adj
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
   all Init.^adj implies some ( (Init.^adj).^adj & Init )
-- div,1
let adj = {s1,s2: State | some e: Event | s1 -> e -> s2 in trans} |
  all r: Event.(State.trans) | some i: Init,  | i in r.^adj
-- div,1
fun edge : State -> State {
    s1, s2: State | some s1.trans.s2
  }

  all s: State | s in Init.^edge implies some (Init & s.^edge)
-- div,1
all s : State | some i: Init | s.isReachableFromState[i] implies i.isReachableFromState[s]
}

pred isReachableFromState[s: State, i: State]{
  	s in i.^onlyStates
-- div,1
all s : State | some i1,i2: Init | s.isReachableFromState[i1] implies i2.isReachableFromState[s]
}

pred isReachableFromState[s: State, i: State]{
  	s in i.*onlyStates
-- div,2
all s : State | some i: Init | s.isReachableFromState[i] implies i.isReachableFromState[s]
}

pred isReachableFromState[s: State, i: State]{
  	s = i or s in i.*onlyStates
-- div,1
all s : State | s in Init.^reachable {
      some i : Init | i in s.^reachable
    }
}

fun reachable : State -> set State {
	{ s0 : State, s1 : State | s1 in s0.trans[Event] }
-- div,1
