some trans
-- div,5
lone trans
-- div,4
some Init.trans
-- div,1
some State.trans
-- div,28
lone State.trans
-- div,3
lone trans.State
-- div,1
some trans.State
-- div,4
some State.trans.State
-- div,1
State in Event.(State.trans)
-- div,1
trans in State some -> Event -> State
-- div,1
some State.trans & Event->State
-- div,5
all s:State | some trans.s
-- div,4
all s:State | lone s.trans
-- div,4
all s:State | lone trans.s
-- div,2
~(trans.State).(trans.State) in iden
-- div,1
let s = State <: trans.State | s.~s in iden
-- div,1
all s1, s2:State | some e:Event | s1->e->s2 in trans implies s1!=s2
-- div,1
