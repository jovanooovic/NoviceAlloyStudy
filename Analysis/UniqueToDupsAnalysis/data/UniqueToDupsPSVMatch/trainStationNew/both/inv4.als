no (Track.succs)
-- div,1
no Track.^succs
-- div,1
Entry = (succs . Track)
-- div,1
Track in Entry.^succs
-- div,1
Track in Entry.*succs
-- div,1
Entry not in Track.^succs
-- div,1
no (succs.Track & Entry)
-- div,1
Track - Track.succs = Exit
-- div,1
Exit = Track - Track.succs
-- div,1
Entry = Track - succs.Entry
-- div,1
Entry = Track - ^succs.Track
-- div,1
all x:Entry | no x.succs
-- div,1
some x:Track | no succs.x
-- div,1
all e: Entry | no e.^succs
-- div,2
all t: Entry | no t.^succs
-- div,2
one Entry
Track in Entry.*succs
-- div,1
no succs.Entry
some Entry.succs
-- div,1
all t: Track | (Entry not in t.succs)
-- div,1
all e : Entry | e not in succs.Track
-- div,1
all e1,e2:Entry | e1->e2 in succs
-- div,1
all t:Track | no t & Track.succs
-- div,1
all entry : Entry | no entry.^succs
-- div,2
all t: Track - Entry | (Entry not in t.succs)
-- div,1
all x:Track | Entry in x implies no succs.x
-- div,1
all t : Track | no t.succs => t in Entry
-- div,1
one x:Track | x in Entry implies no succs.x
-- div,1
all t : Track | t in Entry implies t.succs = 0
-- div,1
Exit = Track-({ t : Track | no succs.t})
-- div,1
all t: Track| t in Entry  iff no t.succs
-- div,1
Entry = Track-({ t : Track | no succs.t})
-- div,1
all t:Track | some t.succs iff t in Entry
-- div,1
all t : Track | t in Entry implies t.succs = none
-- div,1
all t:Track | t in Entry <=> t not in succs.t
-- div,1
all t:Track | t in Entry iff no t.*succs
-- div,1
all t : Track | (t.succs)=none iff t in Exit
-- div,1
all t:Track | t in Entry iff no t.^succs
-- div,7
all t,a:Track| t in Entry implies a->t in succs
-- div,8
all t : Track | t in Entry <=> #succs.t > 0
-- div,1
all t : Track | t in Entry <=> #succs.t < 0
-- div,1
all t:Track | t in Entry iff no Track.succs
-- div,2
all t,e : Track| e in t.succs iff t not in Entry
-- div,1
all t: Track | t in Entry iff none in succs.t
-- div,1
all t: Track | t != Entry => t.succs not in Entry
-- div,1
all t,t2:Track | t not in t2.succs implies t in Entry
-- div,2
all t : Track | t in Entry implies t not in succs.Track
-- div,1
all t,t2:Track | t not in t2.succs implies Entry in t
-- div,1
all t : Track | (t.(~succs))=none iff t in Exit
-- div,1
all t: Track | t not in Entry => t.succs not in Entry
-- div,1
all t: Track | (t in Entry) <=>  t.succs not in Entry
-- div,1
all t : Track | t in Entry iff no Track.^succs
-- div,1
all t,e : Track| e in Entry iff (not(t in t.succs))
-- div,1
all t : Track | t in Entry iff t not in succs.Track
-- div,1
all t,t2:Track | Entry in t implies t2 not in t.^succs
-- div,1
all t1,t2:Track | t1->t2 in succs implies t1 in Entry
-- div,1
all t:Track | t not in Track.^succs implies Entry in t
-- div,3
all t1,t2:Track | t1->t2 in succs implies t2 in Entry
-- div,2
all e : Entry | all t: Track | e not in succs.t
-- div,1
all t,t2:Track | t2 not in t.^succs implies Entry in t
-- div,1
some t1,t2 : Track | t2 in t1.succs implies t1 in Entry
-- div,1
all t : Track | (t.^(~succs))=none iff t in Exit
-- div,1
all t : Track | (t not in Track.*(succs) <=> t in Entry)
-- div,1
all t: Track | t not in Entry => t.^(succs) not in Entry
-- div,1
all t1,t2:Track | t1->t2 in succs implies t1 not in Entry
-- div,2
all ta,td : Track | ta->td in succs implies ta not in Entry
-- div,1
all t: Track | t not in Entry => Entry not in t.^(succs)
-- div,1
all t: Track | t not in Entry <=> t.^(succs) not in Entry
-- div,1
all t: Track | t not in Entry <=> Entry not in t.^(succs)
-- div,1
all t1,t2: Track | t1 not in t2.^succs implies t1 in Entry
-- div,3
all t : Track | some e : Entry | e not in t.^succs
-- div,1
all t1,t2:Track| t1 in Entry iff t1 not in t2.*succs
-- div,1
all disj t,t2:Track | t in Entry <=> t not in t2.^(succs)
-- div,1
all t:Track | t not in (Track-t).^succs implies Entry in t
-- div,1
all x:Track, y:Track| y-> x not in succs implies x in Entry
-- div,4
all noEntryTrack : Track - Entry | Entry not in noEntryTrack.^succs
-- div,1
all a:Track, b:Track-a| a in Exit implies b->a not in succs
-- div,2
all t1,t2 : Track | t1 != t2 and t2 in t1.succs implies t1 in Entry
-- div,1
all x:Track, y:Track-x| y-> x not in succs implies x in Entry
-- div,1
all t:Track, x:Track-t| t in Entry iff t not in x.^succs
-- div,1
all t:Track, tt:Track-t | t in Entry <=> t not in tt.^succs
-- div,1
all t: Track| some a: Track| a not in t.succs <=> a in Entry
-- div,1
all t:Track | all t1:Track | t1->t not in succs implies t in Entry
-- div,1
all t : Track | all e : Entry | t not in Entry and e not in t.^succs
-- div,1
all t: Track| all e: Entry| e not in t.succs && some e.succs
-- div,1
all t1,t2: Track| t2 not in t1.succs && some t2.succs implies t2 in Entry
-- div,1
one a:Track|all b:Track-a| a->b in succs implies a in Entry
-- div,1
all a:Track| a in Exit implies (some b:Track-a| b->a not in succs)
-- div,1
one a:Track|all b:Track-a| a->b not in succs implies a in Entry
-- div,1
one a:Track|all b:Track-a| b->a not in succs implies a in Entry
-- div,1
all t1,t2,t3: Track| t1 not in t2.succs and t3 in t1.succs <=> t1 in Entry
-- div,1
all t : Track | all t2 : Track-t | t in Entry <=> no t2.succs & t
-- div,1
all t1:Track|all t2:Track-t1| t1 in Entry iff t1 not in t2.^succs
-- div,1
all t : Track | t not in Track.^succs implies t in Entry
Entry not in Track.^succs
-- div,1
Entry not in Track.^succs
all t : Track | t not in Track.^succs implies t in Entry
-- div,2
all x : Track | (x in Entry implies #(x.succs) = 0) and (#(x.succs) = 0 implies x in Entry )
-- div,1
all t:Track | t in Entry implies all ts:Track | ts!=t and ts->t not in succs
-- div,1
some a:Track| all b:Track-a | b->a in succs and a->b not in succs implies a in Entry
-- div,1
all t1,t2: Track| t2 not in t1.succs && some t2.succs && t2 not in t2.^(succs) implies t2 in Entry
-- div,2
all e : Entry | all t : Track | all s : Signal | t->e not in succs and e->s not in signals
-- div,1
all t : Entry | t not in Track.*succs
all t : Track | t not in Track.*succs implies t in Entry
-- div,1
all x : Track | x in Entry implies #(x.succs)=0
all x : Track | #(x.succs)=0 implies x in Entry
-- div,1
all t:Track | t not in Track.^succs implies Entry in t
all t:Track | Entry in t implies no t.succs
-- div,1
all t:Track | t not in Track.^succs implies Entry in t
all t:Track | Entry in t implies t.succs=none
-- div,1
all entry : Track | no succs.entry and (entry in Exit or entry not in Exit) and (entry in Junction or entry not in Junction)
-- div,2
all entry : Entry | no entry.^succs and (entry in Exit or entry not in Exit) and (entry in Junction or entry not in Junction)
-- div,1
all t : Track | all e : Entry | e not in t.^succs
all disj t1,t2 : Track | t1 not in t2.^succs implies t1 in Entry
-- div,1
all t1,t2:Track | t1 in t2.^succs implies no (t2 & Entry)

all t1:Track | no (t1 & Entry) implies (some t2:Track | t1 in t2.^succs)
-- div,2
