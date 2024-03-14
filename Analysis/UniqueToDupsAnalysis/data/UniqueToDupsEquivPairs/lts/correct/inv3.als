-- equiv pair start,111
all s : State| ~(s.trans).(s.trans) in iden
-- div,8
all s:State, e:Event | lone s.trans[e]
-- div,68
all y : State, e : Event | lone e.(y.trans)
-- div,1
all e:Event, s:State| lone e.(s.trans)
-- div,9
all x : State, y : Event | lone y.(x.trans)
-- div,2
all s:State, e:Event | lone e <: s.trans
-- div,2
all s: State, e: Event | lone ~(s.trans).e
-- div,1
all e : Event, s : State | lone e<:s.trans
-- div,3
all s:State | all e:Event| lone e.(s.trans)
-- div,7
all e:Event |all s:State | lone e.(s.trans)
-- div,2
all s:State , e:Event| lone e->State & s.trans
-- div,1
all s: State | all e : Event | lone n: State | e->n in s.trans
-- div,1
all x, z, v : State, y : Event  | x->y->z in trans and x->y->v in trans implies z=v
-- div,1
all s,s1,s2:State,e:Event | s->e->s1 in trans and s->e->s2 in trans implies s1=s2
-- div,5
-- equiv pair end
