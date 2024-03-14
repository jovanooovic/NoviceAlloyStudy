-- equiv pair start,2
some State.trans.State
-- div,2
-- equiv pair end
-- equiv pair start,2
all s:State | some s.trans.State
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:State | one (s.trans).State
-- div,1
-- equiv pair end
-- equiv pair start,1
all e: Event | lone e.(State.trans)
-- div,1
-- equiv pair end
