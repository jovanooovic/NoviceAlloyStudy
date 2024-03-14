-- equiv pair start,6
some Entry
-- div,4
some Entry & Track
-- div,1
some t : Track | t in Entry
-- div,1
-- equiv pair end
-- equiv pair start,20
Exit in Track
-- div,1
Entry in Track
-- div,1
all e:Entry | some e
-- div,2
Entry in Track
Exit in Track
-- div,3
all t:Track | lone (t & Entry & Exit)
-- div,1
Entry in Track.*(succs) and Exit in Track.*(succs)
-- div,1
all e: Entry, x: Exit | some e && some x
-- div,1
all t : Track | Entry in Track and Exit in Track
-- div,1
all x: Entry, y : Exit | x in Track && y in Track
-- div,1
all ex:Exit, e:Entry | e in Track && ex in Track
-- div,1
all ex : Exit, en: Entry | ex in Track and en in Track
-- div,1
(all t: Entry| some Entry) && (all t: Exit | some Exit)
-- div,1
all e : Entry | all ex : Exit | e in Track and ex in Track
-- div,1
all t : Track & Entry | some t
all t : Track & Exit | some t
-- div,1
all t1 : Track & Entry | all t2 : Track & Exit | some t1 and some t2
-- div,1
Entry in Track or Exit in Track or Entry in Track.^(succs) or Exit in Track.^(succs)
-- div,1
Entry in Track or Exit in Track and Entry in Track.^(succs) or Exit in Track.^(succs)
-- div,1
-- equiv pair end
-- equiv pair start,1
some Exit & Track
-- div,1
-- equiv pair end
-- equiv pair start,1
some Entry or one Exit
-- div,1
-- equiv pair end
-- equiv pair start,4
some Entry or some Exit
-- div,1
some t: Track | t in Entry or t in Exit
-- div,2
some t : Track | t in Exit or t in Entry
-- div,1
-- equiv pair end
-- equiv pair start,10
all t: Track| some Entry and some Exit
-- div,3
(all x: Track| some Entry && some Exit)
-- div,1
all t:Track | some Exit and some Entry
-- div,1
all t:Track | #Entry > 0 and #Exit >0
-- div,1
all t : Track | some Entry & Track and some Exit & Track
-- div,1
all t : Track | some Entry
all t : Track | some Exit
-- div,1
(all x: Track| some Entry) && (all y: Track| some Exit)
-- div,1
all t:Track | some e:Entry ,ex:Exit | #e>=1 and #ex>=1
-- div,1
-- equiv pair end
-- equiv pair start,1
all e: Entry | some Exit and some Entry
-- div,1
-- equiv pair end
-- equiv pair start,3
some t: Track | Entry in Track and Exit in Track
-- div,1
some e,z:Track| e->z not in succs implies e in Exit and e->z in succs implies e in Exit
-- div,1
some e,z:Track| e->z not in succs implies e in Exit or e->z in succs implies e in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
some e,z:Track| e->z not in succs implies e in Exit
some e,z:Track| e->z in succs implies e in Exit
-- div,1
-- equiv pair end
