all s,r:State | (s.trans).State = (r.trans).State
-- div,2
all s,r :State | (r.trans).State = (s.trans).State
-- div,1
all s : State | s.trans.State = State.trans.State
-- div,1
all s, ss: State | s.trans.State = ss.trans.State
-- div,4
all s, s1 : State | (s.trans).State = (s1.trans).State
-- div,5
all s : State | (State.trans).State = (s.trans).State
-- div,1
all s : State | s.(trans.State) = State.(trans.State)
-- div,1
all s1,s2: State | s1.trans.State = s2.trans.State
-- div,18
all s1, s2: State | s1.(trans.State) = s2.(trans.State)
-- div,1
all disj s,t:State | s.trans.State = t.trans.State
-- div,1
all s,s1:State|  no( (s.trans).State  -  (s1.trans).State   )
-- div,1
all disj s, s1 : State | s.trans.State = s1.trans.State
-- div,2
all disj s, ss: State | s.trans.State = ss.trans.State
-- div,1
all s1, s2 : State | State.(~(s1.trans)) = State.(~(s2.trans))
-- div,6
all x: State, y: State | (x.trans).univ = (y.trans).univ
-- div,2
not some disj s1, s2:State | (s1.trans).State != (s2.trans).State
-- div,1
all disj s1, s2 : State | State.~(s1.trans) = State.~(s2.trans)
-- div,1
all s:State, s1:State | s.trans.State = s1.trans.State
-- div,3
all s, m: State, e: Event | some s.trans[e] => some m.trans[e]
-- div,1
all s1,s2:State,e:Event |some e.(s1.trans) implies some e.(s2.trans)
-- div,3
all disj s1,s2 :State |  no ((s1.trans).State) -((s2.trans).State) and no ((s2.trans).State) - ((s1.trans).State)
-- div,2
