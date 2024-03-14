trans.
-- div,1
lone s.trans
-- div,1
some s.trans
-- div,1
some S.trans
-- div,2
all s: State |
-- div,1
all State.trans
-- div,1
lone State.Trans
-- div,1
some State.trans

/*
There is a single initial state.
*/
-- div,1
some s:State in s.trans
-- div,1
all State | trans != none
-- div,4
all s : State some s.trans
-- div,1
all s:State | some t:trans
-- div,2
all s: State | some s.trans
-- div,1
all s: State | some x.trans
-- div,1
all s : State | some s.tans
-- div,1
all s:State | s.trans = some
-- div,1
all s: State | some s.trans) > 0
-- div,1
all s: State | some s.transition
-- div,1
all s:State, some t:trans | t in s
-- div,1
all s:State | some t:trans in s.trans
-- div,1
all s : State | one s.trans

/*
There is a single initial state.
*/
-- div,1
all s: State, some e: State | s.trans = e
-- div,1
all s:State | some s.trans

/*
There is a single initial state.
*/
-- div,2
all s : State | all e->ns : s.trans | no s.trans
-- div,1
all s:State | some Event.(s.trans)

/*
There is a single initial state.
*/
-- div,1
all s : State | all (e->ns) : s.trans | no s.trans
-- div,1
all s1 : State , some s2 : State | s1 -> s2 in trans
-- div,1
all s:State | some ss:State | e:Event | e->ss in s.trans
-- div,1
all s1, s2:State | some e:Event | (s1->e->s2 in trans and s1 not s2)
-- div,1
