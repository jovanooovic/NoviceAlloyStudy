all e: Event | some e->State
-- div,2
all e: Event | lone State.trans.e
-- div,2
all e:Event | some (State.trans).State
-- div,1
