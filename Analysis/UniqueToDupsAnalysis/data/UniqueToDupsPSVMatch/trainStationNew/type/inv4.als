no (succs & Entry)
-- div,1
no Track.^succs.Entry
-- div,1
no Track.*succs.Entry
-- div,1
no Entry in Track.^succs
-- div,1
no (Entry in Track.succs )
-- div,1
all e:Entry| no succs.^(e)
-- div,1
all t:Entry| no (succs).^t
-- div,1
Track - Track.^succs
-- div,2
succs in Entry none -> Track
-- div,1
Entry = Track - ^(succs.Track)
-- div,1
all e : Entry | e not in succs
-- div,2
Entry = Track - ~(succs.Track)
-- div,1
all en : Entry | en not in succs
-- div,1
all e:Entry | no (e.succs).prev[e]
-- div,1
all t:Track| t in Entry iff t.^succs
-- div,1
all t:Track | t in Entry <=> t.^(succs)
-- div,1
all t : Track | t in Entry => not succs.t
-- div,1
no (Track-Track.^succs) & (Entry in Track)
-- div,1
all t: Track | t in Entry iff no (succs).^t
-- div,1
all e : Track | e in Entry iff none succs.e
-- div,1
all t: Track | t in Entry <=> not ^(succs).t
-- div,1
all t: Track | t not in Track.succs => Entry
-- div,1
all t: Track | t not in Track.succs <=> Entry
-- div,2
all t:Track | none succs.t implies t in Entry
-- div,2
all t : Track | (^t.succs)=none iff t in Exit
-- div,1
all t:Track | t in Entry implies t not succs.t
-- div,2
all x:Track-Entry | some succs.x
not succs.Entry
-- div,1
all t:Track | t in Entry implies t not i succs.t
-- div,1
all t:Track | t in Entry implies t not t.succs.t
-- div,1
all t:Track | Entry implies Entry not in succs.t
-- div,1
all t: Track | t in Entry <=> no t in Track.succs
-- div,1
all t,e : Track| t is Entry iff (t not in e.succs)
-- div,1
all t: Track | (t in Entry) <=> no t.succs in Entry
-- div,1
all t1,t2: Track| t1 in t2.succs implies t1 not Entry
-- div,1
all a:Track, b:Track-a| a in Exit implies some b->a not in succs
-- div,1
all t1 : Track | all t2 : Track | no t1 in t2.succs iff t1 in Entry
-- div,1
all t1 : Track | all t2 : Track | (no t1 in t2.succs) iff t1 in Entry
-- div,1
all y : Track | all x : Signal | (x in Entry and x in y.signals) implies all k : Track | no k in succs.y
-- div,2
all y : Track | all x : Signal | (x in Entry and x in y.signals) implies (all k : Track | no k in succs.y)
-- div,1
