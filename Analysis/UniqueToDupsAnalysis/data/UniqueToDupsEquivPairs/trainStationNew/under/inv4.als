-- equiv pair start,99
no succs.Entry
-- div,10
no (Track.succs & Entry)
-- div,3
no Entry & Track.succs
-- div,2
all e:Entry| no succs.e
-- div,3
all x:Entry | no succs.x
-- div,5
all t: Entry | no succs.t
-- div,3
all e: Entry | no e.~succs
-- div,2
all x: Entry | #(succs.x) = 0
-- div,1
all e: Entry | no e.~^succs
-- div,2
all e: Entry | no e.^~succs
-- div,1
all x: Entry | x not in Track.succs
-- div,2
all t: Entry | t not in Track.succs
-- div,2
all e: Entry | e not in Track.succs
-- div,6
all t: Track | no (t.succs & Entry)
-- div,1
all e: Entry| e not in Track.^succs
-- div,1
all e:Track | e in Entry implies no succs.e
-- div,4
all x:Track | x in Entry implies no succs.x
-- div,1
all t : Track | t in Entry => no succs.t
-- div,3
all en : Entry , t : Track| en not in t.succs
-- div,1
all t : Track | t in Entry implies no t.~succs
-- div,1
all t : Track | t in Entry => succs.t = none
-- div,1
all t,e : Track| e in Entry implies (e not in t.succs)
-- div,1
all t: Track| t in Entry  => t not in Track.succs
-- div,8
all t,t1 : Track | t in Entry implies t not in t1.succs
-- div,1
all e : Entry | no t : Track |  e in t.succs
-- div,1
all t1,t2 : Track | t2 in t1.succs implies t2 not in Entry
-- div,1
all e: Entry| e in Track implies e not in Track.^succs
-- div,1
all t1,t2: Track| t1 in Entry implies t1 not in t2.succs
-- div,2
all e: Entry | all t: Track | e not in t.succs
-- div,2
all t : Track | t in Entry => t !in Track.^succs
-- div,4
all entry : univ | entry in Entry implies no succs.entry
-- div,2
all t1,t2:Track | t1->t2 in succs implies t2 not in Entry
-- div,2
all ta,td : Track | ta->td in succs implies td not in Entry
-- div,1
all e:Entry | all t:Track | t->e not in succs
-- div,4
all e : Entry | all t : Track | e not in t.^succs
-- div,2
all t1, t2 : Track | t1 in Entry implies t1 not in t2.^succs
-- div,1
all t : Track | all e : Entry | e not in t.^succs
-- div,4
all t1,t2:Track | t2 in t1.succs implies no (t2 & Entry)
-- div,1
all t1, t2 : Track | t1 in Entry implies t2.succs in Track-t1
-- div,1
all t : Track, t2 : Track | t in Entry implies t not in t2.succs
-- div,1
all e: Entry, t: Track | e in Track implies e not in Track.^succs
-- div,1
all t:Track | t in Entry implies all ts:Track | ts->t not in succs
-- div,2
all entry : Entry | no succs.entry and (entry in Exit or entry not in Exit) and (entry in Junction or entry not in Junction)
-- div,1
-- equiv pair end
-- equiv pair start,7
no (none & Track.succs)
-- div,1
all e:Entry | no e.prev
-- div,2
all e:Entry | #prev[e]=0
-- div,1
all e:Entry | no e.succs.prev
-- div,2
all y : Track | all x : Signal | (x in Entry and x in y.signals) implies no y.succs
-- div,1
-- equiv pair end
-- equiv pair start,3
all e: Entry | e not in Entry.succs
-- div,1
all e: Entry | e not in succs.Entry
-- div,1
all e1,e2:Entry | e1->e2 not in succs
-- div,1
-- equiv pair end
-- equiv pair start,14
all t: Track | no succs.t => t in Entry
-- div,5
all x:Track | no succs.x implies x in Entry
-- div,3
all t:Track | no (^succs).t implies t in Entry
-- div,1
all t : Track | no t.~succs implies t in Entry
-- div,1
all t : Track | t not in Track.succs implies t in Entry
-- div,2
all entry : univ | entry in Track and no succs.entry implies entry in Entry
-- div,1
all entry : univ | entry in Track and no succs.entry and entry not in entry.^succs implies entry in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t = Entry implies no succs.t
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Track | t in Entry implies t not in t.succs
-- div,1
all t:Track | t in Entry implies t not in succs.t
-- div,1
-- equiv pair end
-- equiv pair start,4
all en : Entry , t : Track-Entry| en not in t.succs
-- div,1
all noEntryTrack : Track - Entry | no (Entry & noEntryTrack.^succs)
-- div,3
-- equiv pair end
-- equiv pair start,4
all t:Track | t in Entry implies Entry not in succs.t
-- div,4
-- equiv pair end
-- equiv pair start,1
all e: Entry, t: Track | e in t implies e not in t.^succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj t,t2:Track | t in Entry <=> t not in Track.^(succs)
-- div,1
-- equiv pair end
-- equiv pair start,6
all t : Track |  t in Entry implies t not in (Track-t).succs
-- div,1
all e : Entry | no t : Track-e | e in t.succs
-- div,1
all disj t,t2:Track | t in Entry => t not in t2.^(succs)
-- div,1
all t,t1 : Track | t!=t1 and t in Entry implies t not in t1.succs
-- div,1
all t:Track, tt:Track-t | t in Entry => t not in tt.succs
-- div,1
all t:Track | t in Entry implies all ts:Track | ts!=t implies ts->t not in succs
-- div,1
-- equiv pair end
