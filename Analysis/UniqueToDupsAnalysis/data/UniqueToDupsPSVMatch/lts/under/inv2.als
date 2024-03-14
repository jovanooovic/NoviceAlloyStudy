lone Init
-- div,7
some Init
-- div,1
some State
-- div,2
no disj i,j : Init { }
-- div,1
all i : Init | one i
-- div,1
all s : State | one s
-- div,1
all i : Init | lone i
-- div,1
all i,j : Init | i = j
-- div,1
all x, y : Init | x = y
-- div,1
all s : State | one Init
-- div,1
all s : State | #s = 1
-- div,1
all s1,s2:Init | s1=s2
-- div,1
all i1,i2 : Init | i1 = i2
-- div,1
all x, y : Init | some x implies x = y
-- div,1
all x, y : Init | x = y and some x
-- div,1
all s1,s2:State | s1 in Init and s2 in Init implies s1=s2
-- div,1
