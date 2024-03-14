-- equiv pair start,7
Exit = none
-- div,1
Exit = succs.none
-- div,1
all e:Exit | no e.*succs
-- div,1
all e : Exit | all t : Track | e!=t and e->t not in succs
-- div,1
all e : univ | e in Exit iff (all t : univ | t in Track and e->t not in succs)
-- div,1
all t:Track | t in Exit implies all ts:Track | t!=ts and t->ts not in succs
all t:Track | t in Exit implies all s:Signal | t->s not in signals
-- div,1
all t:Track | t in Exit implies all ts:Track | t!=ts and t->ts not in succs
all t:Track | t in Exit implies all s:Signal, ss:Semaphore, sss:Speed | t->s not in signals and t->ss not in signals and t->sss not in signals
-- div,1
-- equiv pair end
-- equiv pair start,44
no succs.Exit
-- div,5
no Exit.~succs
-- div,1
(succs . Exit) = none
-- div,1
no Exit <: ~succs
-- div,1
no Exit&Track.succs
-- div,1
no Track.succs & Exit
-- div,4
all x:Exit | no succs.x
-- div,3
all e: Exit | no succs.e
-- div,4
all t : Exit | no succs.t
-- div,1
all et : Exit | no succs.et
-- div,2
all t : Exit | #succs.t = 0
-- div,2
all t : Exit | t not in Track.succs
-- div,1
all x: Exit | x not in Track.succs
-- div,1
all t:Track | no (t.succs & Exit)
-- div,2
all t : Exit | no t&Track.succs
-- div,1
all t : (Track & Exit) | #succs.t = 0
-- div,1
all e : Exit, t : Track | t not in succs.e
-- div,1
all t : Track | t in Exit => no succs.t
-- div,5
all x:Exit, y: Track | y->x not in succs
-- div,1
all ex : Exit, t : Track | ex not in t.succs
-- div,1
all t,a:Track| t in Exit implies a->t not in succs
-- div,2
all t : Track | t in Exit implies t not in Track.succs
-- div,1
all x:Exit | all y: Track | y->x not in succs
-- div,1
all ta,td : Track | ta->td in succs implies td not in Exit
-- div,1
-- equiv pair end
-- equiv pair start,2
one Exit.succs
-- div,2
-- equiv pair end
-- equiv pair start,10
no succs.Track
-- div,1
no Track.succs
-- div,1
all t: Track | no t.succs
-- div,2
all y: Track | no succs.y
-- div,1
all y: Track | no y.succs
-- div,1
all track : Track | no track.succs
-- div,1
all t:Track | Exit in Track implies no t.succs
-- div,1
all t : Track |all r: Track | r not in t.succs
-- div,1
all track : univ | track in Track implies no track.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some Exit.succs
-- div,1
-- equiv pair end
-- equiv pair start,5
Track not in Exit
-- div,1
some Track-Exit
-- div,1
some t:Track | t in Exit implies all ts:Track | t!=ts and t->ts not in succs
-- div,2
some t:Track | t in Exit implies all ts:Track | t!=ts and t->ts not in succs
some t:Track | t in Exit implies all s:Signal | t->s not in signals
-- div,1
-- equiv pair end
-- equiv pair start,6
all e: Exit | no succs
-- div,1
all e : Exit | no Track.succs
-- div,1
all t : Track | t in Exit implies no succs
-- div,1
all t: Track | t in Exit implies no succs.Track
-- div,2
all e:Exit | e in Track => no Track.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
Track not in Exit.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
Exit not in Track.succs
-- div,2
-- equiv pair end
-- equiv pair start,1
some (Track-Exit).succs
-- div,1
-- equiv pair end
-- equiv pair start,2
Exit not in succs.Track
-- div,2
-- equiv pair end
-- equiv pair start,1
one t:Track | no t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
Track.succs = Exit.succs
-- div,1
-- equiv pair end
-- equiv pair start,3
all e:Exit | one e.succs
-- div,1
all t: Exit | #(t.succs)=1
-- div,1
all x:Track | x in Exit => one x.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | t in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
one t:Track | no Exit.succs
-- div,1
-- equiv pair end
-- equiv pair start,7
Exit = Track - (Track.succs)
-- div,3
all t:Track | t in Exit iff no succs.t
-- div,3
all t:Track | no succs.t iff t in Exit
-- div,1
-- equiv pair end
-- equiv pair start,9
no Exit.succs
no Exit.signals
-- div,5
all t: Track | t in Exit => (no t.succs and no t.signals)
-- div,1
all t : Track | some t&Exit implies no t.succs and no t.signals
-- div,3
-- equiv pair end
-- equiv pair start,3
all t:Track | t not in t.succs
-- div,2
all t1,t2:Track | t1->t2 in succs implies t1 != t2
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | Exit not in succs.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | Exit not in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Track - Exit | lone x.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | t.succs not in Exit
-- div,1
-- equiv pair end
-- equiv pair start,6
all t:Track| no t.succs => t = Exit
-- div,4
all t:Track| #t.succs=0 => t = Exit
-- div,2
-- equiv pair end
-- equiv pair start,15
all t : Track - Exit | some succs.t
-- div,1
all t : Track - Exit | #succs.t > 0
-- div,1
all t : Track - Track.succs | t in Exit
-- div,1
all t : Track | no succs.t => t in Exit
-- div,7
all t:Track | no t.~succs implies t in Exit
-- div,1
all tr : Track | no succs.tr implies tr in Exit
-- div,1
all t : Track | t not in Track.succs implies t in Exit
-- div,1
all track : Track | no succs.track => track in Exit
-- div,1
all track : Track | #succs.track = 0 =>  track in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Track| x in Entry => no x.succs
-- div,1
-- equiv pair end
-- equiv pair start,7
all t : Track - Track.succs | Exit in t
-- div,1
all t : Track | no succs.t => Exit in t
-- div,2
all t : Track | #succs.t = 0 => Exit in t
-- div,2
all t:Track | t not in Track.^succs implies Exit in t
-- div,1
all track : Track | #succs.track = 0 => Exit in track
-- div,1
-- equiv pair end
-- equiv pair start,3
all t: Track | Exit in t <=> no t.succs
-- div,1
all t:Track | no t.succs implies Exit in t
all t:Track | Exit in t implies no t.succs
-- div,2
-- equiv pair end
-- equiv pair start,13
all t : Track - succs.Track | Exit in t
-- div,2
all t:Track| no t.succs => Exit in t
-- div,6
all t: Track| #t.succs=0 implies Exit in t
-- div,1
all t:Track, e:Exit | #t.succs=0 => t = e
-- div,1
all track : Track | #track.succs = 0 => Exit in track
-- div,2
all e : Exit | all t: Track | #(t.succs)=0 implies t in e
-- div,1
-- equiv pair end
-- equiv pair start,21
all t : Track | Exit in t => no t.succs
-- div,12
all t : Track | Exit in t => #t.succs = 0
-- div,3
all t1,t2:Track | Exit in t1 implies t2 not in t1.succs
-- div,1
all t,t2:Track | Exit in t implies t2 not in t.^succs
-- div,1
all t1,t2:Track | t2 in t1.succs implies Exit not in t1
-- div,1
all t1,t2:Track | t2 in t1.succs implies Exit not in t1
all t1:Track | Exit in t1 implies no t1.succs
-- div,1
all t1,t2:Track | t2 in t1.succs implies Exit not in t1
all t1,t2:Track | Exit in t1 implies no t1.succs
-- div,1
all t1,t2:Track | t2 in t1.succs implies Exit not in t1
all t1,t2:Track | Exit in t1 implies t2 not in t1.succs
-- div,1
-- equiv pair end
-- equiv pair start,4
all t : Track | Exit in t => no succs.t
-- div,3
all t,t2:Track | Exit in t implies t not in t2.^succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Track | x = Exit implies no succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all e : Exit | no e.succs and e in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | no t.succs iff t in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t=Exit iff not no t.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Track | #succs.t = 0 && Exit in t
-- div,1
all t : Track | #t.succs = 0 && Exit in t
-- div,1
-- equiv pair end
-- equiv pair start,5
all t : Track | t in Exit => t in t.succs
-- div,2
all e1,e2:Exit | e1->e2 not in succs implies e1 != e2
-- div,3
-- equiv pair end
-- equiv pair start,11
all e : Track-Junction-Entry | no e.succs
-- div,1
all t: Track - Entry - Junction | no t.succs
-- div,3
all t : Track - Junction - Entry | no t.succs
-- div,3
all x:Track-(Junction + Entry)| no x.succs
-- div,2
all t : Track - Junction - Entry | #t.succs=0
-- div,1
all t: Track - Entry - Junction | no t.succs and (t not in t.succs)
-- div,1
-- equiv pair end
-- equiv pair start,1
Junction not in Exit and Entry not in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
Track.succs = Junction.succs + Entry.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all e:Exit | one t:Track | t not in e.succs
-- div,1
all e : Exit | one t : Track | e->t not in succs
-- div,1
-- equiv pair end
-- equiv pair start,3
some t:Track | no t.succs implies t in Exit
-- div,1
some x:Track| no x.succs implies x in Exit
-- div,1
some e,z:Track| e->z not in succs implies e in Exit
-- div,1
-- equiv pair end
-- equiv pair start,3
all t: Track | t in Exit iff t.succs in univ
-- div,1
all t: Track | t in Exit iff none in t.succs
-- div,2
-- equiv pair end
-- equiv pair start,2
all e : Exit | no e.succs and e not in Entry
-- div,2
-- equiv pair end
-- equiv pair start,2
all t:Track | t in Exit <=> t not in succs.t
-- div,1
all t:Track | t in Exit <=> t not in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track - Entry - Junction | t in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
Exit = Track-(Track.succs)





no Exit.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Track - Entry - Junction | no succs.t
-- div,1
all t : Track - Junction - Entry | no succs.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all t,a:Track| a->t in succs implies t in Exit
-- div,1
-- equiv pair end
-- equiv pair start,4
all e : Exit | no e.succs and e in Track.succs
-- div,1
all t : Track | t in Exit implies (no t.succs and t in Track.succs)
-- div,1
all exit : univ | exit in Exit implies no exit.succs and some track: Track | exit in track.succs
-- div,1
all exit : univ | exit in Exit implies no exit.succs and some track: Track | track->exit in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all ex:Exit | ex in Track => ex in Entry.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all e:Exit | one t:Track | t not in e.^(succs)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t in Exit <=> t not in t.^(succs)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2:Track | t1 not in Exit => one t1.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | no t.succs - t implies t in Exit
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Track | t in t.(succs) implies t in Exit
-- div,2
-- equiv pair end
-- equiv pair start,5
all t:Track | t not in t.succs implies t in Exit
-- div,4
all x,y:Track| x->y not in succs and x->x not in succs implies x in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Track - Exit | some succs.x
no Exit.succs
-- div,1
-- equiv pair end
-- equiv pair start,3
all t:Track | no t.succs implies Exit in t.signals
-- div,1
all x : Exit | all y : Track | x in y.signals iff no y.succs
-- div,2
-- equiv pair end
-- equiv pair start,7
all x,y:Track| x->y not in succs implies x in Exit
-- div,1
all e,z:Track| e->z not in succs implies e in Exit
-- div,1
all t,t1 : Track | t1 not in t.succs implies t in Exit
-- div,1
all t1,t2: Track | t2 not in t1.succs implies t1 in Exit
-- div,2
all t1,t2:Track | t1->t2 not in succs implies t1 in Exit
-- div,2
-- equiv pair end
-- equiv pair start,2
all t,a:Track| a->t not in succs implies t in Exit
-- div,1
all t1,t2:Track | t1->t2 not in succs implies t2 in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | Exit in t.signals implies no t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
no Exit.succs
some Junction.succs
some Entry.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all e : Entry | e not in Exit and e not in Junction
-- div,2
-- equiv pair end
-- equiv pair start,1
all t1,t2:Track | t1 not in Exit => one t1.^(succs)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track - Junction - Entry | t not in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all ta,td : Track | ta->td in succs implies td!=Exit
-- div,1
-- equiv pair end
-- equiv pair start,3
some e : Exit, t : Track | no t.succs implies e in t
-- div,2
some e : Exit | all t : Track | e in t.signals => no t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some e : Exit, t : Track | e in t implies no t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2:Track | t1 not in t2.^(succs) => t2 in Exit
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Track | t not in t.^(succs) implies t in Exit
-- div,2
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in t.succs and t not in Exit.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all a:Track, b:Track-a| a in Entry implies b->a in succs
-- div,1
-- equiv pair end
-- equiv pair start,6
all a:Track, b:Track-a| a in Entry implies a->b in succs
-- div,6
-- equiv pair end
-- equiv pair start,6
all t: Track | no t.succs => t in Exit and t not in Entry
-- div,2
all t:Track | no t.^(succs) => t in Exit and t not in Entry
-- div,1
all track : Track | no track.succs implies track in Exit and track not in Entry
-- div,1
all track : Track | no track.succs implies track in Exit and all entry : Entry | track!=entry
-- div,1
all track : Track | no track.^succs implies track in Exit and all entry : Entry | track!=entry
-- div,1
-- equiv pair end
-- equiv pair start,3
all e:Track,z:Track-e| z->e not in succs implies e in Exit
-- div,2
all e:Track,z:Track-e| e->z not in succs implies z in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all track : Track | no succs.track => Track - track in Exit
-- div,1
-- equiv pair end
-- equiv pair start,5
all x:Track, y:Track-x| x->y not in succs implies x in Exit
-- div,3
all e:Track,z:Track-e| e->z not in succs implies e in Exit
-- div,1
all t1,t2: Track | t1!=t2 and t2 not in t1.succs implies t1 in Exit
-- div,1
-- equiv pair end
-- equiv pair start,3
all x : Exit | all y : Track | x in y.signals iff no succs.y
-- div,3
-- equiv pair end
-- equiv pair start,2
all t: Track | t in Exit => t not in Junction and no t.succs
-- div,1
all t: Exit | #t.succs = 0
all t: Exit | t not in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all a:Track, b:Track-a| a in Entry implies a->b not in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all a:Track, b:Track-a| a->b not in succs implies a in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all a:Track, b:Track-a| b->a not in succs implies a in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all a:Track, b:Track-a| a in Entry implies b->a not in succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Track - Entry - Junction | t in t.succs || no t.succs
-- div,1
all t : Track - Entry - Junction | t in t.succs || no Track&t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Track| one y:Track| x in Exit implies x->y not in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track| one f : Track | t=Exit implies f not in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
one a:Track|all b:Track-a| b->a not in succs implies a in Exit
-- div,2
-- equiv pair end
-- equiv pair start,1
one a:Track|all b:Track-a| a->b not in succs implies a in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all y : Track | all x : Signal | (x in Exit and x in y.signals)
-- div,1
-- equiv pair end
-- equiv pair start,1
one e:Track | all t:Track | e->t not in succs implies e in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | no t.succs => t in Exit
Track not in Track.^succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some e:Track | all t:Track | e->t not in succs implies e in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
one e:Track | all t:Track | e->t not in succs implies e in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track| #t.succs=0 implies t in Exit
all t: Exit | no Entry
-- div,1
-- equiv pair end
-- equiv pair start,2
Track = Junction+Entry+Exit
all t: Track | t in Exit => no t.succs
-- div,2
-- equiv pair end
-- equiv pair start,12
all t : Track | no t.succs => t in Exit && t not in Junction+Entry
-- div,3
all t: Track | no t.succs implies (t in Exit and t not in Entry and t not in Junction)
-- div,1
all t:Track | no t.^(succs) => t in Exit and t not in Entry and t not in Junction
-- div,2
all t: Track| #t.succs=0 implies t in Exit && t not in Entry && t not in Junction
-- div,2
all t: Track | #t.succs = 0 implies t in Exit and t not in Junction and t not in Entry
-- div,1
all track : Track | no track.succs implies track in Exit and track not in Entry and track not in Junction
-- div,1
all t:Track | no t.^(succs) and t not in t.^(succs) => t in Exit and t not in Entry and t not in Junction
-- div,1
all track : univ | track in Track and no track.^succs implies track in Exit and track not in Junction and track not in Entry
-- div,1
-- equiv pair end
-- equiv pair start,5
all e : Exit | e not in Junction and e not in Entry and no e.succs
-- div,2
all t: Track | t in Exit => t not in Junction+Entry and no t.succs
-- div,1
all t: Exit| no t.succs
all t: Exit | t not in Junction
all t: Exit | t not in Entry
-- div,1
all t: Track | t in Exit => no t.succs
all t: Track | t in Exit => t not in Junction
all t: Track | t in Exit => t not in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | some t2:Track | Exit in t implies t not in t2.^succs
-- div,1
-- equiv pair end
-- equiv pair start,2
some t:Track | t in Exit implies all ts:Track | t->ts not in succs
-- div,2
-- equiv pair end
-- equiv pair start,4
all tr : Track | (no tr.succs or tr in tr.succs) implies tr in Exit
-- div,4
-- equiv pair end
-- equiv pair start,1
all tr : Track | (no succs.tr or tr in succs.tr) implies tr in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | t in Exit => no t.succs
no (Entry & Junction & Exit)
-- div,1
-- equiv pair end
-- equiv pair start,2
all t,a:Track| t->a not in succs and a->t in succs implies t in Exit
-- div,1
all t:Track,a:Track-t| t->a not in succs and a->t in succs implies t in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1:Track | some t2:Track | t2 in t1.succs implies Exit not in t1
-- div,1
-- equiv pair end
-- equiv pair start,2
all t,a:Track| a->t not in succs and t->a in succs implies t in Exit
-- div,1
all t:Track,a:Track-t| a->t not in succs and t->a in succs implies t in Exit
-- div,1
-- equiv pair end
-- equiv pair start,2
all e:Exit | e not in Entry
all t: Track| #t.succs=0 implies t in Exit
-- div,1
all t: Track| #t.succs=0 implies t in Exit
all t: Exit | t not in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all ex:Exit | ex in Track => ex in Entry.succs and ex in Junction.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2 : Track | t1->t2 in succs implies t2 not in Exit
no Exit.succs
-- div,1
-- equiv pair end
-- equiv pair start,3
all t:Track | no t.succs implies t in Exit
all t:Track | t not in t.succs
-- div,1
all t:Track | t not in t.succs
all t:Track | no t.succs implies t in Exit
-- div,2
-- equiv pair end
-- equiv pair start,1
all t : Track| some t1 : Track - {t} | t in Exit implies t1 not in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in t.^succs
all t:Track | no t.succs implies t in Exit
-- div,1
-- equiv pair end
-- equiv pair start,2
all t: Track| #t.succs=0 implies t in Exit
all t: Exit | t not in Junction
-- div,2
-- equiv pair end
-- equiv pair start,1
all t : Track | t.succs = none implies t not in Entry and t not in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track| some t1 : Track - {t} | t in Exit implies t1 not in t.^succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Exit, ts:Track, s:Signal | t->ts not in succs and t->s not in signals
-- div,1
all e : Exit | all t : Track | all s : Signal | e->t not in succs and e->s not in signals
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track| (t in Exit implies no (t.succs & Track)) and some (t.~succs)
-- div,1
-- equiv pair end
-- equiv pair start,1
all e : Exit | no e.succs
all e : Entry | e not in Exit and e not in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all exit : univ | exit in Exit implies all track : Track | track in exit.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all exit : univ | exit in Exit implies all track : Track | track in exit.*(succs)
-- div,2
-- equiv pair end
-- equiv pair start,1
some e : Exit, t : Track | e in t implies no t.succs
all t : Track | t.succs != t
-- div,1
-- equiv pair end
-- equiv pair start,1
all a:Track, b:Track-a| a->b not in succs and a->a not in succs implies a in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all a:Track, b:Track-a| b->a not in succs and a->a not in succs implies a in Entry
-- div,1
-- equiv pair end
-- equiv pair start,2
all ex:Exit | ex not in ex.succs and Entry not in ex.succs and Junction not in ex.succs
-- div,1
all ex:Exit | Track not in ex.succs and ex not in ex.succs and Entry not in ex.succs and Junction not in ex.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all ex:Exit | Exit not in ex.succs and Entry not in ex.succs and Junction not in ex.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Exit, ts:Track, s:Signal | t!=ts implies  t->ts not in succs and t->s not in signals
-- div,1
-- equiv pair end
-- equiv pair start,6
all t:Exit | all ts:Track, s:Signal | t!=ts and t->ts not in succs and t->s not in signals
-- div,2
all t:Track | t in Exit implies all ts:Track, s:Signal | t!=ts and ts->t not in succs and t->s not in signals
-- div,1
all t:Track | t in Exit implies all ts:Track, s:Signal | t!=ts and t->ts not in succs and t->s not in signals
-- div,3
-- equiv pair end
-- equiv pair start,2
no Entry & Junction
no Exit & Entry
no Exit & Junction
all x:Track | x in Exit => no x.succs
-- div,1
no Entry & Junction
no Entry & Junction & Exit
no Exit & Entry
no Exit & Junction
all x:Track | x in Exit => no x.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all e:Exit | e not in Entry and e not in Junction
all t: Track| #t.succs=0 implies t in Exit
-- div,1
all t: Track| #t.succs=0 implies t in Exit
all t: Exit | t not in Junction
all t: Exit | t not in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all track : univ | track in Track and no track.succs implies track in Exit and track in Entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | #(succs.t)=0 implies t in Entry
all t: Track |  t in Entry implies #(succs.t)=0
-- div,1
-- equiv pair end
-- equiv pair start,1
all track : Track | no track.succs implies track in Exit and some entry : Entry | track!=entry
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | no t.succs => t in Exit and t not in Junction+Entry
all t: Track | t not in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Exit or t in Entry or t in Junction
all t : Track | no t.succs implies t in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all ex:Exit | ex in Track => (Junction in Entry.succs and ex in Junction.succs) or (ex in Entry.succs)
-- div,1
-- equiv pair end
-- equiv pair start,1
all tr : Track | (no tr.succs or (tr in Entry and tr in Junction and tr in tr.succs)) implies tr in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all exit : univ | exit in Exit implies no exit.succs and some junction:Junction | exit in junction.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in Track.^succs implies Exit in t
all t:Track | Exit in t implies t not in Track.^succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some t:Track | t in Exit implies all ts:Track, s:Signal | t!=ts and t->ts not in succs and t->s not in signals
-- div,1
-- equiv pair end
-- equiv pair start,1
all track : univ | track in Track and no track.succs implies track in Exit and track in Entry and track in Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all ex:Exit | ex in Track => no ex.succs and ( (Junction in Entry.succs and ex in Junction.succs) or (ex in Entry.succs))
-- div,1
-- equiv pair end
-- equiv pair start,1
Track = Junction+Entry+Exit
no Exit & Junction
no Entry & Junction
no Entry & Exit
all t: Track | t in Exit => no t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all ex:Exit | ex in Track => Junction not in ex.succs and ( (Junction in Entry.succs and ex in Junction.succs) or (ex in Entry.succs))
-- div,1
-- equiv pair end
-- equiv pair start,1
all track : Track | no track.^succs implies track in Exit and all entry : Entry | all junction : Junction | track!=entry and junction!=track
-- div,1
-- equiv pair end
-- equiv pair start,1
all ex:Exit, j:Junction, e:Entry, t:Track | j not in ex.succs and e not in ex.succs and ex not in ex.succs and t not in ex.succs and t not in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Exit | all ts:Track, s:Signal, ss:Semaphore, sss:Speed | t!=ts and t->ts not in succs and t->s not in signals and t->ss not in signals and t->sss not in signals
-- div,1
-- equiv pair end
