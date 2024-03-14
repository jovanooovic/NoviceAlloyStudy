Track in Entry.*succs and no Entry->Entry
-- div,1
all t,e : Track| e in Entry iff (e not in t.succs)
-- div,1
all t,e : Track| t in e.succs iff t not in Entry
-- div,1
all t,e : Track| t in Entry iff (t not in e.succs)
-- div,1
all t,e : Track| e in t.succs iff e not in Entry
-- div,1
all t1, t2: Track | t1 != t2 and t1 not in t2.succs
-- div,1
all t,e : Track| e in Entry iff (not(e in t.succs))
-- div,1
all t1,t2: Track| t1 in Entry <=> t1 not in t2.succs
-- div,3
all t1,t2: Track| t1 not in t2.succs <=> t1 in Entry
-- div,1
all t1,t2:Track| t1 in Entry iff t1 not in t2.^succs
-- div,1
all t1,t2: Track| t2 not in t1.succs && some t2.succs
-- div,1
all t : Track | (no t.*succs & Entry <=> t in Entry)
-- div,1
all t : Track, t2 : Track | t in Entry <=> t not in t2.succs
-- div,1
all t:Track, x:Track| t in Entry iff t not in x.^succs
-- div,1
all e : Track | no t : Track | e in Entry implies e in t.succs
-- div,1
all t1 : Track | all t2 : Track | (t1 not in t2.succs) iff t1 in Entry
-- div,1
all t1:Track | not some t2:Track | t2->t1 in succs => t1 in Entry
-- div,1
Entry not in Track.*succs
all t : Track | t not in Track.^succs implies t in Entry
-- div,1
all t : Entry | t not in Track.^succs
all t1,t2 : Track | t1 not in t2.succs implies t1 in Entry
-- div,2
all t : Entry | t not in Track.^succs
all t1,t2 : Track | t1 not in t2.^succs implies t1 in Entry
-- div,1
all t : Track | all e : Entry | e not in t.^succs
all t1,t2 : Track | t1 not in t2.succs implies t1 in Entry
-- div,4
all t1, t2 : Track | t1 in Entry implies t1 not in t2.^succs
all t1, t2 : Track | t1 not in t2.^succs implies t1 in Entry
-- div,1
all t : Track | all e : Entry | e not in t.^succs
all t1,t2 : Track | t1 not in t2.^succs implies t1 in Entry
-- div,3
all t1, t2 : Track | t1 in Entry implies t2.succs in Track-t1
all t1, t2 : Track | t2.succs in Track-t1 implies t1 in Entry
-- div,1
all t1:Track | not some t2:Track | t2->t1 in succs => t1 in Entry
all t1:Track | some t2:Track | t2->t1 in succs => not t1 in Entry
-- div,1
