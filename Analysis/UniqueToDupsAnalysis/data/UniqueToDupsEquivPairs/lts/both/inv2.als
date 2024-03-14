-- equiv pair start,2
no Init
-- div,1
all i : Init | State - Init = i
-- div,1
-- equiv pair end
-- equiv pair start,4
one State
-- div,3
one s:State | { Event.(s.trans) in Event.(State.trans) }
-- div,1
-- equiv pair end
-- equiv pair start,2
lone State
-- div,1
(lone Init) and (lone State)
-- div,1
-- equiv pair end
-- equiv pair start,1
one Init.trans
-- div,1
-- equiv pair end
-- equiv pair start,2
one State && no trans
-- div,1
one State && all s:State | no s.trans
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:State | Init in s
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:State | no s.trans
-- div,1
-- equiv pair end
-- equiv pair start,3
one s : State | no trans.s
-- div,3
-- equiv pair end
-- equiv pair start,2
all s : State | one i : Init | i in s
-- div,2
-- equiv pair end
-- equiv pair start,1
one i:Init | i not in Event.(State.trans)
-- div,1
-- equiv pair end
