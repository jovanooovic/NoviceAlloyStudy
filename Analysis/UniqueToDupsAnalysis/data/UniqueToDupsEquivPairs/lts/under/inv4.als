-- equiv pair start,18
Init in State
-- div,1
no trans[Event]
-- div,1
some *(Init.trans)
-- div,2
all s : State | { }
-- div,2
Init.*(Event.trans) in State
-- div,2
State.(Event.trans) in Init.*(Event.trans)
-- div,2
all i:Init | i.trans in State.trans
-- div,1
all s:State, s1:State, e:Event | lone s.trans.Event
-- div,3
all i : Init | i.(^{s1, s2 : State | s1->Event->s2 in trans}) in State
-- div,1
all s: State.trans.Event | s.^{y,x: State | some x.trans.y} = Init
-- div,1
all s: State.trans.Event | s.^{y,x: State | some e : Event | x->e->y in trans} = Init
-- div,2
-- equiv pair end
-- equiv pair start,8
no Init  implies no State
-- div,1
State in Init.^(State->State)
-- div,1
State-Init in Init.(Init->(State-Init))
-- div,1
all s : State | some Init.*(s.trans)
-- div,1
no Init  implies no State and  all i :Init|some (State-Init).^~(i.trans)
-- div,1
no Init  implies no State and  all i :Init|(State-Init)in  (State).~(i.trans)
-- div,1
no Init  implies no State and  all i :Init|(State-Init)in  (State-Init).~(i.trans)
-- div,1
no Init  implies no State and  all i :Init|some e:Event | some e.(i.trans) & State
-- div,1
-- equiv pair end
-- equiv pair start,3
State in State.trans[Event]
-- div,2
all s: State | (s in Init and some trans.s.Event) or (some trans.s.Event)
-- div,1
-- equiv pair end
-- equiv pair start,1
State in Init.^(trans.State.Event->State)
-- div,1
-- equiv pair end
-- equiv pair start,4
State in Init.^(State->State.trans[Event])
-- div,4
-- equiv pair end
-- equiv pair start,1
State in Init.^(State->State) or #State = 1
-- div,1
-- equiv pair end
-- equiv pair start,15
Init.*{s1, s2: State | some s1.trans.s2} = State
-- div,1
Init.*{x: State, y: State | some (x.trans).y } = State
-- div,4
Init.*{s1, s2: State | some e: Event | s1->e->s2 in trans} = State
-- div,2
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    Init.*trans_bin = State
-- div,1
all s: State | some (*{s1, s2: State | s2 in s1.trans[Event]}.s & Init)
-- div,1
let rel = { s1, s2: State | some s1 -> Event -> s2 & trans } |
  		State in Init.*rel
-- div,1
all s: State | some (*{s1, s2: State | some (s1 <: trans :> s2)}.s & Init)
-- div,2
let trans_bin = {s1 : State, s2 : State | some s1.trans.s2} |
    Init.*trans_bin = State
-- div,1
let rel = { s1, s2: State | some s1 -> Event -> s2 & trans } |
  		all s: State - Init | s in Init.*rel
-- div,1
State in Init + Event.(Init.trans) + Event.((Event.(Init.trans)).trans) + Event.((Event.((Event.(Init.trans)).trans)).trans)
-- div,1
-- equiv pair end
-- equiv pair start,4
all s: State | (s in Init) or (some trans.s.Event)
-- div,2
all s:State-Init| some e:Event | s in e.^(State.trans)
-- div,1
all s: State | (s in Init) or (some e: Event | some trans.s.e)
-- div,1
-- equiv pair end
-- equiv pair start,6
all s : State | some e : Event | e.(s.trans) in State
-- div,5
all s : State | some e : Event | e.(Init.trans) in State
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: State | Init in trans.s.Event or (some trans.s.Event)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: State | s in Init or Init in trans.s.Event or (some trans.s.Event)
-- div,2
-- equiv pair end
-- equiv pair start,1
all i:Init| no trans implies one State or     no ((State-Init)  - (Event.^(i.trans)) )
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: State | (s in Init) or (some pre:State | (not pre in s) and (pre in trans.s.Event))
-- div,1
-- equiv pair end
