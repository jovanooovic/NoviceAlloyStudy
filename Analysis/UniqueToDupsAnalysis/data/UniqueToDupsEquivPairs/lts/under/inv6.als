-- equiv pair start,2
all e: Event | some e->State
-- div,2
-- equiv pair end
-- equiv pair start,2
all e: Event | lone State.trans.e
-- div,2
-- equiv pair end
-- equiv pair start,1
all e:Event | some (State.trans).State
-- div,1
-- equiv pair end
