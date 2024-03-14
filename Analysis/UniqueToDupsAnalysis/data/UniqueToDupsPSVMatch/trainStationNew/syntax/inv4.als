all
-- div,1
Track in begin.*succs
-- div,1
Track - Tracks.^succs
-- div,1
all e:Entry | first = e
-- div,1
no (Track.succs | Entry)
-- div,1
all e:Entry | #prevs[e]=0
-- div,1
all e:Entry | no prevs[e]
-- div,1
Entry = no (succs . Track)
-- div,2
all t:Entry| no (succs)^.t
-- div,1
Track - Tracks.succs = Entry
-- div,1
all t:Track | t in Entry <=>
-- div,5
some first e:Entry | e in Track
-- div,3
no succs.Entry
some Entry.suucs
-- div,1
e:Entry iff no e in Track.succs
-- div,8
all e:Entry | no e.succs.prevs[e]
-- div,1
all e:Entry | Track.succs.first = e
-- div,1
all e : Entry | e not in Truck.succs
-- div,1
ll t:Track | t in Entry <=> no succs.t
-- div,1
all t:Track | t in Entry <=> no succ.t
-- div,1
all t,e:Track| t->e in succs t in Entry
-- div,1
all t:Task| t in Entry <=> no (succs).t
-- div,1
all t : Track | no succs.t iff in Entry
-- div,1
all t:track | t in Entry iff no succs.t
-- div,1
all t : Track | t in Entry iff no succ.t
-- div,1
all e:Entry, t:Track | t.succs.first = e
-- div,1
all t:Track | t in Entry iff no ^(succs).y
-- div,1
all t:Track | t in Entry <=> no (succs)^.t
-- div,1
all t: Track | t in Entry iff #succs.t == 0
-- div,1
all t: Track | t in Entry iff no (succs)^.t
-- div,1
all t : Track | t in Entry implies t not in
-- div,2
all e:Entry, t:Track | t.succs.first = Entry
-- div,1
all e : Entry | none t : Track | e in t.succs
-- div,2
all t:Track | t in Entry <=> no ^(succs).t

}
-- div,1
all e: Entry | all t: Tracks | e not in t.succs
-- div,1
all t : Track | t = Entry implies #((succs)^.t)=0
-- div,2
all t1,t2:Track| t in Entry iff t1 not in t2.*succ
-- div,1
all t : Tracks | t in Entry implies t.succs = none
-- div,1
all t: Track | t in Entry <=> t not in Track.^succ
-- div,1
all t1,t2:Track| t1 in Entry iff t1 not in t2.*succ
-- div,1
all t : Track | t in Entry <=> t not in Track.^(succ)
-- div,2
no succs.Entry
all t: Track | no succs.t => t in Start
-- div,1
all e : Track | e not in Track.(^.succs) iff e in Entry
-- div,1
all  t : Track |  t in entry <=> t not in Tracks.^succs
-- div,1
all  t : Track |  t in Entry <=> t not in Tracks.^succs
-- div,1
all t1,t2:Track | t1->t2 in succs implies t2 no in Entry
-- div,1
all e:Entry, t:Track | e in t.succs => t.succs.first = e
-- div,1
all t1, t2 : Track | t1 in Entry implies t1 not in t2^.succs
-- div,1
all t: Track | (t in Entry) <=> no pred: t.succs | pred in Entry
-- div,1
all e : Track | none t : Track | e in Entry implies e in t.succs
-- div,2
all t : Track | t not in Track.succs implies t in Entry
-- div,3
all a:Track| a in Exit implies some b:Track-b| b->a not in succs
-- div,1
all t : Track, t2 : Track | t in Entry implies t1 not in t2.succs
-- div,1
all a:Track| a in Exit implies (some b:Track-b| b->a not in succs)
-- div,1
all t:Track | t in Entry implies all ts:Tracks | ts->t not in succs
-- div,1
all t1,t2 in Track | t1 != t2 and t2 in t1.succs implies t1 in Entry
-- div,1
all t : Track| some s: Track |s not in succs.t iff (some e: Entry | s == e)
-- div,1
all t : Track| some s: Track |s not in t.succs iff (some e: Entry | s == e)
-- div,1
all entry : univ | entry in Tracks and no succs.entry implies entry in Entry
-- div,1
all t : Track| (some s : Track | s not in t.succs) iff (some e: Entry | s == e)
-- div,1
all y : Track | all x : Signal | (x in Entry and x in y.signals) implies all k : track | no k in succs.y
-- div,1
