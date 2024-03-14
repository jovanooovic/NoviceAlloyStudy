all
-- div,4
no Exit.succ
-- div,3
no Track.succ
-- div,1
all x:Track |
-- div,2
Exit = no succs
-- div,1
no succs.Tracks
-- div,1
no (Exit . succ)
-- div,1
succs in Exit no
-- div,1
no Exit.succs and
-- div,1
no (Exit & suucs)
-- div,1
succs in Exit lone
-- div,1
all Exit | no succs
-- div,2
Exit = no succs.Track
-- div,1
all ex:Exit | ex.last
-- div,1
Exit = no Track.succs
-- div,3
all e:Exit| no t.succs
-- div,1
all x:Exit | no x.succ
-- div,1
all e : univ | e : Exit
-- div,1
all e: Exit | no succ.e
-- div,1
Exit = no (Track.succs)
-- div,1
Exit = no (succs . Exit)
-- div,1
all e : Exit | no e.succ
-- div,2
Exit.succs not in Tracks
-- div,1
all t : exit | no t.succs
-- div,1
all e : Exit | no t.succs
-- div,1
Tracks.succs = Exit.succs
-- div,1
all e:Exit | no t.^(succs)
-- div,1
all ex:Exit | ex.last = ex
-- div,1
all e:Exit | e not in succ
-- div,1
all t : Exit | #sucs.t = 0
-- div,1
all t: Exit | no in t.succs
-- div,1
all e : Exit | #e.succs == 0
-- div,1
all e1:Exit | e not in succs
-- div,1
all t:Exit <=> no t.^(succs)
-- div,1
all ex:Exit | no ex.successor
-- div,1
all e : Exit iff none e.succs
-- div,1
all ex:Exit | Track.last = ex
-- div,1
all t:Track | t not in t.succ
-- div,1
all x: Exit implies no x.succs
-- div,1
Exit = Tracks - (succs.Tracks)
-- div,1
all e : Exit | #(e.succs) == 0
-- div,1
all t : Track | t in Exit => no
-- div,1
Exit = Tracks - (Track . succs)
-- div,1
all t: Track&Exit | no ex.succs
-- div,1
all t : Exit | t.succs.size = 0
-- div,1
all ex:Exit | ex.succs.last = ex
-- div,1
all tr | Exit implies no tr.succs
-- div,1
all tr : Exit implies no tr.succs
-- div,1
no (Track-Exit) & (no Track.succ)
-- div,1
all exit : Exit | exit.succs = null
-- div,1
all ex:Exit | Track.succs.last = ex
-- div,1
all Exit| one t : Track | no t.succs
-- div,1
all x:Track | no x.succ => x in Exit
-- div,1
all t : Track t=Exit iff not t.succs
-- div,1
all x: Track | x in Exit | no x.succs
-- div,1
all t: Track | t in Exit => no t.succ
-- div,1
all t:Track | t in Exit <=> no t.succ
-- div,2
all t : Track| t in Exit <=> no t.succ
-- div,1
all t:Track | t in Exit => no ex.succs
-- div,1
all t : Exit implies t not in t.(succ)
-- div,1
all t : Track | t in Exit = no t.succs
-- div,1
all t:Track | t in Exit <=> no t.sucss
-- div,1
all t : Track | t in Exit iff no t.exit
-- div,1
all t : Track t=Exit iff not no t.succs
-- div,1
all t : Track | no t.succs implies Exit
-- div,1
all t:Tracks | t in Exit <=> t.^(succs)
-- div,1
all t : track | t in Exit => no t.succs
-- div,1
all t,e:Track| t->e in succs t in Entry
-- div,5
e:Exit | e in Track.succs => no e.succs
-- div,1
all t :Track | t in Exit iff no e.succs
-- div,1
all t:Track | t in Exit iff no .^(succs)
-- div,1
all t : Tracks | t in Exit <=> no t.succ
-- div,1
all t: Track | t in Exit equiv no t.succs
-- div,1
all t:Track | no t.succ implies t in Exit
-- div,1
all T:Track | t in Exit <=> no t.^(succs)
-- div,1
all t:Track | Exit in t implies no succ.t
-- div,1
(Exit <: succs) in Track some -> no Track
-- div,3
all t:Track | t in exit <=> no t.^(succs)
-- div,1
all t:Track | t in Exit and not in t.succs
-- div,1
all e : Track | t in Exit <=> #t.succs = 0
-- div,1
all t : Tracks | t in Exit <=> no t.^succs
-- div,1
all x: Track | s = Exit implies no x.succs
-- div,1
all t : Track | t=Exit implies no t^.succs
-- div,1
all t: Track| #t.soccs =0 implies t in Exit
-- div,1
all e : Exit | t : Track | t not in e.succs
-- div,1
all t : Track |t in exit implies no t.succs
-- div,1
all t : Track | t in Exit implies no t.succ
-- div,2
all t:Tracks | no t.succs implies t in Exit
-- div,1
all t : Track | no t.succ implies t in Exit
-- div,2
all t : Track | t in Exit implies no ^(succ)
-- div,1
all t : Track | t in Exit iff (none t.succs)
-- div,1
all t : Track | #(t.succs) == 0 => t in Exit
-- div,1
all t : Track | no e.succs implies t in Exit
-- div,1
all t: Tracks | t in Exit implies no t.succs
-- div,1
all t : Track | t in Exit iff (none succs.t)
-- div,1
all e:Exit | not some t:Track | e->t in succ
-- div,1
all t: Track | t in Exit implies no t.succes
-- div,1
Exit = Track-Tracks.succs





no Exit.succs
-- div,1
all t:Track | none in t.succs
-- div,1
all x : Exit | none p : Track | x->p in succs
-- div,2
all t : Tracks | no t.succs implies t in Exit
-- div,3
all t:Track | t in exit implies no t.^(succs)
-- div,1
all t : Tracks | t in succs implies t in Exit
-- div,1
Exit = Tracks-Tracks.succs





no Exit.succs
-- div,1
all t:Track | no t.sucess implies no t.sucess
-- div,1
all e : Exit | #(t.succs)=0 implies t in Exit
-- div,2
all t:Track | no t.succs implies t in Sucessor
-- div,1
all t : Track | t in Exit implies no t.^(succ)
-- div,1
all t : Tracks | none t.succs implies t in Exit
-- div,1
all t:Track | some t.succ implies t not in Exit
-- div,1
all t : Track | t in Exit implies empty t.succs
-- div,1
all t:Track | Exit in siganls implies no t.succs
-- div,1
all t : Track | t in Exit implies (none t.succs)
-- div,1
all t:track | Exit in siganls implies no t.succs
-- div,1
all t: Track | all Exit implies t not in t.succs
-- div,1
all x:Tracks-(Junction + Entry)| no x.succs.Track
-- div,1
all tr : Track and no tr.succs implies tr in Exit
-- div,1
all x : Track | x in Exit implies #(x.^succes) = 0
-- div,1
all exit : univ | exit in Exit implies no succ.exit
-- div,1
all tr : Exit implies (no tr.succs or tr in Entry )
-- div,1
all t1,t2:Track | t2 in t1.succs implies no (t & Exit)
-- div,1
all t : Track| t in Exit implies no (t.succs & Tracks)
-- div,1
all t:Track | t not in Track.^sucess implies Exit in t
-- div,1
all exit : univ | exit in Exit implies in exit.*(succs)
-- div,1
all exit : univ | exit in Exit implies none in exit.succs^
-- div,1
one a:Track| all b:Track-a| a->b in not succs implies Exit
-- div,1
all t: Exit | #t.succs = 0
all t: Exist | t not in Junction
-- div,1
all t:Track | t in Exit implies no t.(^succs)
-- div,2
all exit : Exit | no exit.succs and some junction : Junction
-- div,1
Exit = Track-({ t : Track | some t.succs)





no Exit.succs
-- div,1
all a:Track | a in Exit iff all a2:Track | a->a1 not in succs
-- div,1
all t: Track | t in Exit implies no t': Track | t' in t.succs
-- div,2
all e : univ | e : Exit iff all t : Track | not e->t in succs
-- div,1
one a:Track| all b:Track-a| a->b in not succs implies a in Exit
-- div,2
all e : univ | e : Exit iff all t : Track | not (e->t in succs)
-- div,1
all t : Track | some e&Exit implies (no t.succs and no t.signals)
-- div,1
all t: Track | t in Exit => t not in Junction+Enret and no t.succs
-- div,1
all x: Track - Exit | lone x.succs
all x: Track | x not in x^.succs
-- div,1
all t : Track | no t.succs implies t in Exit
all e : Exit no e.succs
-- div,1
all t1,t2:Track | t1 not in t2.^(succs) => t2 in Exit
-- div,2
all ex:Exit | ex in Track => ex in Entry.succs and ex in Juction.succs
-- div,1
all e : univ | e : Exit iff all t : univ | t in Track not (e->t in succs)
-- div,1
all t : Track , all t1 : Track - {t} | t in Exit implies t1 not in t.succs
-- div,3
all e : univ | e : Exit iff all t : univ | t in Track and not e->t in succs
-- div,2
all e : univ | e : Exit iff all t : univ | t in Track and e->t not in succs
-- div,2
all t : Track| (t in Exit implies no (t.succs & Track)) and some (t.~succs)
a
-- div,1
all e : univ | e : Exit (iff all t : univ | t in Track and not e->t in succs)
-- div,1
all e : univ | e : Exit iff (all t : univ | t in Track and e->t not in succs)
-- div,1
all exit : univ | exit in Exit implies none track : Track | track in exit.succs
-- div,1
all exit : univ | exit in Exit implies none track : Track | track->exit in succs
-- div,2
all exit : univ | exit in Exit implies none track : Track | track in exit.^(succs)
-- div,1
all exit : univ | exit in Exit implies none track : Track | track in exit.*(succs)
-- div,1
all t:Track | t in  Exit and t not in Exist and t not in Junction implies no(t.succs)
-- div,1
all tr : Exit and (no tr.succs or (tr in Entry and tr in Junction and tr in tr.succs))
-- div,1
all tr : Exit implies (no tr.succs or (tr in Entry and tr in junction and tr in tr.succs)
-- div,1
all tr : Exit implies (no tr.succs or (tr in Entry and tr in Junction and tr in tr.succs))
-- div,1
all tr : Exit implies (no tr.succs or (tr in Entry and tr in junction and tr in tr.succs))
-- div,1
all e : Exit | all t : Track | all s : Signals | e->t not in succs and e->s not in signals
-- div,1
all tr : Exit implies (no tr.succs or (tr in Entry and tr in junction and tr in tr.succs) )
-- div,1
all t: Track | #(succ.t)=0 implies t in Entry
all t: Track |  t in Entry implies #(succ.t)=0
-- div,1
all t : Track |t in Exit implies no t.succs and no t.succs implies t in Exit
all t : Track |
-- div,1
all ex:Exit | ex not in Juction and ex not in Entry => no ex.^(succs) and ex not in ex.^(succs)
-- div,1
all t:Exit implies all ts:Track, s:Signal | t!=ts and t->ts not in succs and t->s not in signals
-- div,1
all exit : univ | exit in Exit implies no exit.succs and some tracks: Track | exit in track.succs
-- div,1
all t:Exit | implies all ts:Track, s:Signal | t!=ts and t->ts not in succs and t->s not in signals
-- div,2
all t: Track| #t.succs=0 implies t in Exit
all t: Exits| no t.succs
all t: Exit | t not in Junction
-- div,1
all track : univ | track in Track and no track.^succs implies track in Exit and track not in track.^succ
-- div,1
all ex:Exit | Track not in ex.succs and ex not in ex.succs and Entry not in ex.succs and Juction not in ex.succs
-- div,1
all t:Exit | all ts:Track, s:Signal, ss:Semaphore, sss:Speed | t!=ts and t->ts not in succs and t->s not in signals and
-- div,1
all a:Track | a in Exit implies all a2:Track | a->a2 not in succs
all a:Track | all a2:Track | a->a2 not in succs implies a in Exit iff
-- div,1
all track : Track | no track.^succs implies track in Exit and all entry : Entry | all junction : Junction | track!=entry and junction!=exit
-- div,1
