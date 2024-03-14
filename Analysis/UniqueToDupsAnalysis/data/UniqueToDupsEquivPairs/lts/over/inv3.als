-- equiv pair start,2
lone trans
-- div,1
all s : State, e : Event | lone trans
-- div,1
-- equiv pair end
-- equiv pair start,2
lone State.trans
-- div,2
-- equiv pair end
-- equiv pair start,5
lone Event.(State.trans)
-- div,5
-- equiv pair end
-- equiv pair start,6
all s:State | one s.trans
-- div,6
-- equiv pair end
-- equiv pair start,1
State.trans in Event  -> one State
-- div,1
-- equiv pair end
-- equiv pair start,9
all s:State | lone Event.(s.trans)
-- div,8
all s : State | all disj e1, e2 : State | e1 in Event.(s.trans) and e2 in Event.(s.trans) implies e1 = e2
-- div,1
-- equiv pair end
-- equiv pair start,4
let k = trans.State | iden in ~k.k
-- div,2
let k = trans.State | iden in k.~k
-- div,1
let R = State.trans | iden in ~R.R
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:State | lone (State-s).trans
-- div,1
-- equiv pair end
-- equiv pair start,10
State.trans in Event -> lone State
-- div,1
~(State.trans).(State.trans) in iden
-- div,5
let R = State.trans | ~R.R in iden
-- div,1
all e:Event| lone e.(State.trans)
-- div,1
all e : Event | lone e<:State.trans
-- div,2
-- equiv pair end
-- equiv pair start,49
trans in State -> lone Event -> State
-- div,1
all s:State | lone s.trans
-- div,38
all y : State | lone y.trans
-- div,2
all x : State | lone x.trans
-- div,1
always (all s: State | lone s.trans)
-- div,1
all s:State,e:Event | lone s.trans
-- div,4
all s:State| lone Event->State & s.trans
-- div,1
all s : State, e : Event | lone s.trans->e
-- div,1
-- equiv pair end
-- equiv pair start,4
all  e1:Event | #(e1.(State.trans))<1
-- div,2
all s : State, e : Event | no s.trans[e]
-- div,1
all s:State | all  e1:Event | #(e1.(s.trans))<1
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:State | s in Init.^(trans.Event)
-- div,1
-- equiv pair end
-- equiv pair start,1
State.trans in Event some -> one State
-- div,1
-- equiv pair end
-- equiv pair start,8
all e : Event | State->State in trans.e
-- div,2
all s : State, e : Event | one s.trans.e
-- div,1
all s : State, e : Event | one s.(e.trans)
-- div,1
all s:State, e:Event | some s.trans.e
-- div,2
all s:State, e:Event | some (s->e).trans
-- div,1
all s:State | all  e1:Event | e1.(s.trans)=1
-- div,1
-- equiv pair end
-- equiv pair start,6
all s: State, e: Event | one e.(s.trans)
-- div,4
all s:State | all  e1:Event | #(e1.(s.trans))=1
-- div,1
all e: Event, s:State |one s2: State | e->s2 in s.trans
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:State |one e: Event | lone s.trans
-- div,1
all s: State |one e: Event | lone s.trans->e
-- div,1
-- equiv pair end
