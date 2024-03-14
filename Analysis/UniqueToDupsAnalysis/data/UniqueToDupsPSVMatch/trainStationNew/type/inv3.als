Exit.Track
-- div,1
Exit.succs
-- div,1
none Exit.succs
-- div,1
no succs in Exit
-- div,1
succs not in Exit
-- div,1
no Exit.succs.Track
-- div,1
all e:Exit | succs.e
-- div,1
all x:Exit | succs.x
-- div,1
Exit implies no succs
-- div,1
Exit & succs.none
-- div,1
no succs.Track = Exit
-- div,1
not some succs in Exit
-- div,1
Exit => no Track.succs
-- div,1
some (Track-Exit).Exit
-- div,1
no Track.succs in Exit
-- div,1
all t: Track | t.Entry
-- div,1
no Exit in succs.Track
-- div,1
Exit = none Track.succs
-- div,2
none Track.succs in Exit
-- div,1
all ex:Exit | ex.succs={}
-- div,1
all e : Exit | not e.succs
-- div,3
all t : Exit | not t.succs
-- div,1
all x: Exit | none x.succs
-- div,1
all e:Exit | not e.^(succs)
-- div,1
all e : Exit | none e.succs
-- div,6
all e:Exit | e not in succs
-- div,1
all e : Exit | none succs.e
-- div,2
all exit : univ | exit.succs
-- div,1
all e1:Exit | e1 not in succs
-- div,1
all e : Exit | none (e.succs)
-- div,1
all et : Exit | none et.succs
-- div,1
all y: Track | no Exit.succs.y
-- div,1
no Exit.succs and Exit.signals
-- div,1
all ex:Exit | no Track.succs[ex]
-- div,1
all e:Exit | no Track in e.succs
-- div,1
all t: Track | no t.succs in Exit
-- div,2
all e:Exit | no Track in e->succs
-- div,1
no (Track-Exit) & (no Track.succs)
-- div,1
all t : Track | no t.succs in Exit
-- div,1
all x:Exit, y:Track | no x.succs.y
-- div,1
all t : Track in Exit | no t.succs
-- div,1
all ex:Exit | no Track.succs[ex+1]
-- div,1
all t : Track - Exit | set succs.t
-- div,1
all t:Track | succs.t iff t in Exit
-- div,1
all t: Track | none t.succs in Exit
-- div,1
all t:Track| t in Exit iff t.^succs
-- div,1
all x:Track | no x.succs => x & Exit
-- div,1
all t : Track | #t.succs && t in Exit
-- div,1
all x:Track | no x.succs => x is Exit
-- div,1
all t : Track | no t.succs not in Exit
-- div,1
all t:Track | t in Exit <=> t.^(succs)
-- div,2
all t: Track | t is Exit => no t.succs
-- div,1
all t:Track | t in Exit implies t.succs
-- div,1
all t: Track | t.succs implies Exit in t
-- div,1
all t : Track | not t.succs implies Exit
-- div,1
all e : Exit | no e.succs and e in succs
-- div,1
all t:Track | t in Exit implies t.^succs
-- div,1
all t,a:Track| t in Exit implies t.succs
-- div,1
all t: Track | t in Exit implies t.succs
-- div,1
all t:Track| t in Exit iff not t.^(succs)
-- div,1
all e:Exit, t:Track | no t not in e.succs
-- div,1
all t: Track | t in Exit iff t.succs none
-- div,1
all t: Track | t in Exit iff t.succs = {}
-- div,1
all t: Track | t in Exit iff none t.succs
-- div,1
all t : Exit | t implies t not in t.(succ)
-- div,1
all t : Track | t in Exit iff none t.succs
-- div,1
all t : Track | not t.succs implies t=Exit
-- div,1
all t : Track | t in Exit iff none succs.t
-- div,1
all e : Track | e in Exit iff none e.succs
-- div,1
all t : Track | t.succs=0 implies t & Exit
-- div,1
all t:Track | t in Exit implies (t.^succs)
-- div,1
all t : Track | no t.succs in  (t in Exit)
-- div,1
all t : Track | #t.succs=0 implies t & Exit
-- div,3
all t : Track | no t.succs implies t & Exit
-- div,2
all t:Track | (t& Exit) implies no(t.succs)
-- div,1
all e:Exit | all t:Track | no e->t in succs
-- div,1
all t: Track | (t & Exit) implies no t.succs
-- div,1
all t : Track | t in succs implies t in Exit
-- div,1
all t : Track | not t.succs implies t = Exit
-- div,1
all t: Track | Exit implies t not in t.succs
-- div,1
all t:Track | t in Exit implies none t.succs
-- div,1
all e:Exit | all t:Track | no (e->t in succs)
-- div,1
all t : Track | not t.succs implies t in Exit
-- div,2
all t: Track | t.succs none implies t in Exit
-- div,1
all t: Track | none t.succs implies t in Exit
-- div,2
all t : Track | none t.succs implies t in Exit
-- div,2
all t : Track | t in Exit implies none t.succs
-- div,2
all t:Track | succs.t in signals iff t in Exit
-- div,1
all t,t1 : Track | not succs implies t in Exit
-- div,1
all x:Track-(Junction + Entry)| no x.succs.Track
-- div,1
all t : Track | t not in succs implies t in Exit
-- div,1
all exit : univ | exit in Exit implies none ^exit
-- div,1
all x,y:Track| x in Exit implies no x->y in succs
-- div,1
all t,t2: Track | t2 not in succs implies t in Exit
-- div,2
all x,y:Track| x in Exit implies no (x->y in succs)
-- div,1
all track : Track | no track.succs -> track in Exit
-- div,1
all t,t2:Track | Exit in t implies no t in t2.^succs
-- div,1
all exit : univ | exit in Exit implies none in succs
-- div,1
all t1,t2:Track | t2 in t1.succs implies (t1 & Exit)
-- div,1
all exit : univ | exit in Exit implies exit.*(succs)
-- div,1
all exit : univ | exit in Exit implies exit.^(succs)
-- div,1
all t,a:Track| t in Exit implies t.succs not in succs
-- div,1
all track : Track | none track.succs => track in Exit
-- div,1
all track : Track | none succs.track => track in Exit
-- div,1
all exit : univ | exit in Exit implies none exit.succs
-- div,2
all e:Track,z:Track-e| e not in succs implies e in Exit
-- div,1
all exit : univ | exit in Exit implies none ^exit.succs
-- div,1
all t : Track | t in Exit implies no t not in Track.succs
-- div,1
all exit : univ | exit in Exit implies none exit.^(succs)
-- div,1
all track : univ | none track.succs implies track in Exit
-- div,1
all exit : univ | exit in Exit implies none exit.*(succs)
-- div,2
all track : univ | track in Track implies none track.succs
-- div,1
all e : Exit | no ((e.succs) and (e&Junction) and (e&Entry))
-- div,1
all t : Track | some t&Exit implies no (t.succs and t.signals)
-- div,1
Exit = Track-(all t : Track | some t.succs)





no Exit.succs
-- div,1
all exit : univ | exit in Exit implies none Track in exit.succs
-- div,1
all t1,t2:Track | t1->t2 not in succs implies t1 and t2 not in Exit
-- div,1
all t: Track| #t.succs=0 implies t in Exit
all t: Exit | no t in Entry
-- div,1
all t:Track | t not in t.succs^
all t:Track | no t.succs implies t in Exit
-- div,1
all track : univ | track in Track and none track.succs implies track in Exit
-- div,3
all exit : Exit | all entry : Entry | all junction : Junction | entry and junction not in exit.succs
-- div,1
all t1,t2:Track | t2 in t1.succs implies Exit not in t1
all t1:Track | (Exit & t1) implies no t1.succs
-- div,1
all t1,t2:Track | t2 in t1.succs implies Exit not in t1
all t1:Track | (Exit & t1) implies (Exit & t1)
-- div,1
all t1,t2:Track | t2 in t1.succs implies no (t1 & Exit)
all t1:Track | some t2:Track | (t1 & Exit) implies t2 in t1.succs
-- div,1
all t1,t2:Track | t2 in t1.succs implies no (t1 & Exit)
all t1:Track | (t1 & Exit) implies (some t2:Track | t2 in t1.succs)
-- div,1
all exit, entry, junction : univ | exit in Exit and entry in Entry and junction in Junction implies (entry and junction) not in exit.succs
-- div,1
