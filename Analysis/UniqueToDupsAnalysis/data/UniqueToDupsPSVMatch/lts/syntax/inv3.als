}

fun lookupState: set State -> set State {  
	s.trans[Event]
-- div,1
lone State.transº.Event
-- div,1
one State -> lone Event
-- div,1
some State -> lone Event
-- div,1
all s : State | e.s.trans
-- div,1
all s:State | all e:Event |
-- div,1
all e:event, s:State | lone e
-- div,1
all s : State | lone e : Event
-- div,1
all s: State | lone State.trans.s
-- div,1
all s,s' : State |lone s.trans.s'
-- div,1
all s:State | all Event in s.trans
-- div,1
all s : State -> lone s.trans.Event
-- div,3
all s: State, e: Event | lone s.tans.e
-- div,1
all s:State,e:event | lone e.(s.trans)
-- div,1
all s: State | e: Event | lone e.trans.s
-- div,1
all s: State, e: Event | lone s.trans~.e
-- div,1
all s:State | lone s.trans

/*
All states are reachable from an initial state.
*/
-- div,1
all s:State | some s.trans

/*
All states are reachable from an initial state.
*/
-- div,1
all s:State, all e:Event | lone s.trans.e
-- div,1
always (all s: State | lone s.state.State)
-- div,1
all s: State, e: Event | lone I e.~s.trans
-- div,1
all s: State, e: Event | lone I e.(s.trans)
-- div,1
all s:State, all e:Event | lone s->e->State
-- div,1
all s: State | all e: Event | lone s.tran[e]
-- div,1
all s : State, e : evento | lone e.(s.trans)
-- div,1
all s: State | all e: Event | lone s.tran[e]
-- div,2
all s: State | e: Event | lone s.trans.State
-- div,1
all s1,s2:State, all e:Event | lone s1->e->s2
-- div,2
all s:State, all e:Event | lone s.trans.Event
-- div,1
all s1,s2 : State, e : Event |  one s.trans.s
-- div,1
all s:State all e:Event | lone e->s in s.trans
-- div,1
all s:State |one e: Event : lone e->s in trans
-- div,1
all s:State, e:Event | lone t:Trans | t in e->s
-- div,1
all s:State | all  e1:Event | e1.(s.trans)=lone
-- div,1
all s : State, e | ~(s.trans).(s.trans) in iden
-- div,1
all s:State, all e:Event | lone e->s in s.trans
-- div,1
all s : State |all (a,b),(x,y) : s.trans | b!=y
-- div,2
all s:State | all  e1:Event | (e1.(s.trans))=lone
-- div,1
all s:State | all  e1:Event | #(e1.(s.trans))=lone
-- div,2
all s: State | e : Event | lone n: State | e->n in s.trans
-- div,1
all s: State | f : Event | lone n: State | f->n in s.trans
-- div,1
all s: state | f : Event | lone n: State | f->n in s.trans
-- div,1
all s: state | set f : Event | lone n: State | f->n in s.trans
-- div,1
all s:State | all disj e1, e2:Events | e1.(s.trans)!=e2.(s.trans)
-- div,1
all s:s1:s2:State | s->s1 in trans and s->s2 in trans implies s1=s2
-- div,1
all s:s1:s2:State | s->s1 in Trans and s->s2 in Trans implies s1=s2
-- div,1
all s:State | e1,e2:Event | e1->s in s.trans and e2->s in s.trans implies e1=e2
-- div,1
all x, z, v : State, y : Event,  | x->y->z in trans and x->y->v in trans implies z=v
-- div,1
}

fun lookupState: set State -> set State {  
	{s1, s2: set State | s2 = s1.trans[Event]}
-- div,1
}

fun lookupState: State -> State {  
	{s1, s2: State | some e: Event | s2 = s1.trans[e]}
-- div,1
all s : State | all disj e1, e2 : Event | e1 in (s.trans).State and e2 in (s.trans).State implies s1 = s2
-- div,1
all s : State, e : Event | lone e.(s.trans)  
}

adj = {x,y : State | some e : Event | x -> e -> y in trans
-- div,1
all s : State , e : Event | lone e.(s.trans) 

}

fun adj: State -> State {
  {x,y : State | some (x.trans).y
-- div,2
all s : State, e : Event | lone s.trans[e]
}

fun tr : State -> State { { s1, s2 : State | s1->Event->s2 in trans
-- div,1
all s : State, e : Event | lone s.trans[e]
}

/*
All states are reachable from an initial state.
*/
fun reachable : State -> set State {
  let s : State | s->s.trans[Event]
-- div,1
