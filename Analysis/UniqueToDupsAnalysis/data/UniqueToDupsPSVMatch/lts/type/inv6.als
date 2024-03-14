Event = trans.State
-- div,1
State.trans in State
-- div,1
Event in State.trans
-- div,2
all e:Event | some State.e
-- div,1
all e:Event | e.(State.trans)
-- div,1
all e:Event | some e.State.trans
-- div,2
all e:Event | some State.e.State
-- div,1
all e: Event | some State.~trans.e
-- div,1
all e:Event| e in (State.trans)State
-- div,1
all e:Event | some State->e in trans
-- div,1
all e: Event | some e->State in trans
-- div,1
all e:Event| some s:State | s in trans.e
-- div,1
all e:Event| some s:State | s in e->State
-- div,1
all e:Event| some s:State | some e.s.trans
-- div,1
all e:Event | some s:State | e->s in trans
-- div,1
all e: Event | some trans.e in State.trans
-- div,2
all e:Event| some s:State | some s.~trans.e
-- div,1
all e: Event | some e->State in State.trans
-- div,1
all e:Event| some s:State | e in s->trans.State
-- div,1
all e:Event| some s:State | s in (e.State).trans
-- div,1
some e:Event| some s:State | e in s->trans->State
-- div,1
all e:Event| some s:State | s in (e->State).trans
-- div,1
all e: Event | some State.trans[e]
}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/
fun edge : State -> State {
  all s1, s2: State | some s1.trans.s2
-- div,1
all e:Event | some s:State | some e in ~(Init.trans)[s]
-- div,1
all e:Event |some s,s1:State | some (s1->e->s) in trans
-- div,1
