on Init
-- div,1
lone Iinit
-- div,1
one Initial
-- div,1
one i : Init
-- div,1
one s : Init
-- div,1
no disj i,j : Init
-- div,1
no disj i1,i2 : Init
-- div,1
no disj i1, i2 : Init
-- div,1
lone Init & lone State
-- div,1
all i1,i2 : Initial | i1 = i2
-- div,1
one s:State | all s2.State | s not in Event.(s2.trans)
-- div,2
all s:State | one s { Event.(s.trans) in Event.(State.trans) }
-- div,1
