-- equiv pair start,4
lone trans
-- div,4
-- equiv pair end
-- equiv pair start,43
some trans
-- div,5
some State.trans
-- div,28
some trans.State
-- div,4
some State.trans.State
-- div,1
some State.trans & Event->State
-- div,5
-- equiv pair end
-- equiv pair start,1
some Init.trans
-- div,1
-- equiv pair end
-- equiv pair start,1
lone trans.State
-- div,1
-- equiv pair end
-- equiv pair start,3
lone State.trans
-- div,3
-- equiv pair end
-- equiv pair start,4
all s:State | lone s.trans
-- div,4
-- equiv pair end
-- equiv pair start,2
all s:State | lone trans.s
-- div,2
-- equiv pair end
-- equiv pair start,5
State in Event.(State.trans)
-- div,1
all s:State | some trans.s
-- div,4
-- equiv pair end
-- equiv pair start,1
~(trans.State).(trans.State) in iden
-- div,1
-- equiv pair end
-- equiv pair start,1
trans in State some -> Event -> State
-- div,1
-- equiv pair end
-- equiv pair start,1
let s = State <: trans.State | s.~s in iden
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1, s2:State | some e:Event | s1->e->s2 in trans implies s1!=s2
-- div,1
-- equiv pair end
