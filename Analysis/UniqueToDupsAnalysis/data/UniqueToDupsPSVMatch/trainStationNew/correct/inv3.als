Track - succs.Track = Exit
-- div,5
Exit = Track - succs.Track
-- div,15
Exit = Track - Track.~succs
-- div,1
all e : Track | no e.succs iff e in Exit
-- div,1
all x : Track | x in Exit iff no x.succs
-- div,1
all a:Track | a in Exit iff no a.succs
-- div,1
all t:Track |no t.succs iff t in Exit
-- div,41
all t:Track| t in Exit iff no t.succs
-- div,59
all t:Track | t not in Exit <=> some t.(succs)
-- div,1
all x:Track | x in Exit <=> no x.^succs
-- div,2
all t:Track| t in Exit iff no t.^succs
-- div,61
all t : Track | (t.succs)=none iff t in Exit
-- div,3
all t : Track | #t.succs = 0 <=> t in Exit
-- div,7
all t : Track | t in Exit <=> #t.succs = 0
-- div,1
all t : Track | t in Exit <=> #t.succs <= 0
-- div,1
all t: Track | t in Exit iff t.succs in none
-- div,3
all t:Track | t not in Exit <=> some t.^(succs)
-- div,2
all t1,t2:Track | t1 not in Exit <=> some t1.^(succs)
-- div,1
all x : Track - Exit | some x.succs
no Exit.succs
-- div,1
no Exit.succs
all t: Track | no t.succs => t in Exit
-- div,3
all t:Track | no t.succs => t in Exit
no Exit.succs
-- div,6
Exit = Track-({ t : Track | some t.succs})





no Exit.succs
-- div,1
all e : Track | e in Exit iff (all t : Track | t not in e.succs)
-- div,2
all t:Track | t in Exit iff all ts:Track | ts not in t.succs
-- div,4
all e : Track| e in Exit iff (not(some t : Track |t in e.succs))
-- div,1
all a:Track | a in Exit iff all a2:Track | a->a2 not in succs
-- div,3
all t : Track | (no t.succs implies t in Exit) and (t in Exit implies no t.succs)
-- div,1
all t: Track | (t in Exit implies no t.succs) and (no t.succs implies t in Exit)
-- div,2
all t : Track | no t.succs implies t in Exit
all e : Exit | no e.succs
-- div,4
all x : Track | (x in Exit implies #(x.succs) = 0) and (#(x.succs) = 0 implies x in Exit )
-- div,1
all x: Exit |no x.succs
all t: Track | (t in Exit) <=> no t.succs
-- div,1
all t : Track | #(t.succs) = 0 implies t in Exit
all e : Exit | #(e.succs) = 0
-- div,1
all t : Track |t in Exit implies no t.succs
all t : Track |no t.succs implies t in Exit
-- div,1
all t: (Track-Exit) |  some t.succs
all e: Exit, t: Track | e in t implies no t.succs
-- div,1
all t: Exit | #(t.succs)=0
all t: Track - Exit | some s : Track | s in t.succs
-- div,4
all t: Track | #(t.succs)=0 implies t in Exit
all t: Track |  t in Exit implies #(t.succs)=0
-- div,2
all x : Track | x in Exit implies #(x.succs)=0
all x : Track | #(x.succs)=0 implies x in Exit
-- div,1
all a:Exit,a2:Track | a->a2 not in succs
all a:Track | (all a2:Track | a->a2 not in succs) implies a in Exit
-- div,1
all t1,t2:Track | t2 in t1.succs implies no (t1 & Exit)
all t1:Track | no(t1&Exit) implies (some t2:Track | t2 in t1.succs)
-- div,5
all a:Track | a in Exit implies all a2:Track | a->a2 not in succs
all a:Track | (all a2:Track | a->a2 not in succs) implies a in Exit
-- div,1
