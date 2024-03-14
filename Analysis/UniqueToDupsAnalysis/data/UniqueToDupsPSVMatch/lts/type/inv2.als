lone Init.State
-- div,1
lone State in Init
-- div,1
one s : Init | no s'.Init
-- div,1
all s : State | one s.Init
-- div,1
all s : State | lone s.Init
-- div,1
all s: State | one s.~trans
-- div,1
all s : State | one i : Init | i in s.trans
-- div,2
