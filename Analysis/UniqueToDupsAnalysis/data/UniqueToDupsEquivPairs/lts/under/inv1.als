-- equiv pair start,4
all s:State | some trans
-- div,3
all s : State | some State.trans
-- div,1
-- equiv pair end
-- equiv pair start,4
all s:State , e:Event | some e->s
-- div,1
let s = State <: Event.trans | s.~s in iden
-- div,1
let s = State <: trans.Event | s.~s in iden
-- div,1
let s = State <: State.trans | s.~s in iden
-- div,1
-- equiv pair end
