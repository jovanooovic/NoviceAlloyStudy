no Exit
-- div,1
Track->Exit in *succs
-- div,1
Track->Exit in ^succs
-- div,1
Entry->Exit in ^succs
-- div,3
Track->Track in ^succs
-- div,1
all t : Track | Exit in t.^succs
-- div,3
all e:Entry | Exit in e.^succs
-- div,37
all t : Track | Track in t.^succs
-- div,1
all en:Entry | Exit in en.^succs
-- div,5
all t1, t2 : Track | t2 in t1.*succs
-- div,1
all e:Entry | ((e.^succs ) & Exit) = Exit
-- div,1
all e: Entry, x: Exit| x in e.succs
-- div,1
all e : Entry | Exit = e.^succs&Exit
-- div,7
all x:Entry, y: Exit | x->y in succs
-- div,1
all e : Entry | e.(^succs :> Exit) = Exit
-- div,1
all e:Entry | Exit in (e.^succs & Exit)
-- div,1
all e:Exit, en:Entry | e in en.succs
-- div,1
all e: Exit, t: Entry | e in t.^succs
-- div,2
all e:Entry, x:Exit | x in e.^succs
-- div,7
all t: Entry | #(t.succs & Exit) = #Exit
-- div,1
all t:Entry, e:Exit| e in t.^succs
-- div,2
all e:Entry, ex:Exit | e->ex in succs
-- div,1
all en : Entry, ex : Exit | ex in en.succs
-- div,1
all e:Exit, en:Entry | e in en.^succs
-- div,3
all e:Entry,ex:Exit| ex in e.^succs
-- div,13
all t: Entry | #(t.^succs & Exit) = #Exit
-- div,1
all e:Entry, ex:Exit | e->ex in ^succs
-- div,1
all e1 : Entry, e2 : Exit | e2 in e1.^succs
-- div,1
all en:Entry, ex: Exit | ex in en.^(succs)
-- div,5
all et : Entry, ex : Exit | ex in et.^succs
-- div,2
all t : Track | t in Entry implies Exit in t.succs
-- div,1
all ex:Exit, en:Entry | ex in en.^(succs)
-- div,2
all disj t1:Entry,t2:Exit |  t2 in t1.^(succs)
-- div,1
all t: Track | t in Entry implies t.^succs=Exit
-- div,2
all t : Track | t in Entry implies Exit in t.^succs
-- div,2
all t: Entry | all e: Exit | e in t.succs
-- div,1
all x:Entry | all y:Exit | y in x.succs
-- div,1
all e : Entry | Exit in e.^succs and e not in Exit
-- div,1
all t : Track | t in Entry iff Exit in t.^succs
-- div,1
all e: Entry | all f: Exit | f in e.^(succs)
-- div,1
all x:Entry | all y:Exit | y in x.^succs
-- div,2
all e: Entry | all x: Exit | x in e.^succs
-- div,2
all t: Entry | all e: Exit | e in t.^succs
-- div,1
all e1 : Entry, e2 : Exit | e2 in e1.^succs - e1
-- div,1
all exit:Exit, entry:Entry | exit in entry.succs
-- div,1
all en : Entry | all ex : Exit | ex in en.succs
-- div,1
all ex : Exit | all e : Entry | ex in e.^succs
-- div,3
all t : Entry | all ex : Exit | ex in t.^(succs)
-- div,2
all t: Track| some t&Entry implies Exit = t.^succs
-- div,1
all e : Entry | all ex:Exit | ex in e.^succs
-- div,2
all e : Exit | all en : Entry | e in en.^succs
-- div,1
all t: Track| some t&Entry implies Exit in t.^succs
-- div,1
all ex : Exit | all en : Entry | ex in en.^succs
-- div,7
all t1 : Entry | all t2: Exit | t2 in t1.^(succs)
-- div,2
all exit:Exit, entry:Entry | exit in entry.(^succs)
-- div,1
all en : Entry | all ex : Exit | ex in en.^succs
-- div,3
all entry : Entry, exit : Exit  | exit in entry.^succs
-- div,1
all en : Entry | all ex : Exit | en in ex.^(~succs)
-- div,1
all e:Entry, ex:Exit | ex in e.^(succs) and ex!=e
-- div,1
all ent : Entry | all ext : Exit | ext in ent.^succs
-- div,1
all x,y:Track | y in Exit  implies  x in Entry and x in succs.y
-- div,2
all en : Entry, ex : Exit | ex in en.^succs && en != ex
-- div,1
all e1 : Entry | all e2 : Exit | e2 in e1.^succs - e1
-- div,1
all x:Entry | all y:Exit | y in x.^succs and x!=y
-- div,1
all exit : Exit | all entry : Entry | exit in entry.^(succs)
-- div,1
all entry : Entry | all exit : Exit | exit in entry.^succs
-- div,5
all t:Track | all e:Exit | t in Entry implies e in t.succs
-- div,2
all e: Exit, t: Entry | e in t.^succs
no Exit & Entry
-- div,1
all en : Entry | all ex : Exit | ex in en.succs or ex=en
-- div,1
all en : Entry | all ex : Exit | ex in en.succs and ex!=en
-- div,1
all en, ex : Track | en in Entry and ex in Exit and ex in en.^succs
-- div,1
all t: Track | all e : Exit | t in Entry implies e in t.^succs
-- div,1
all t1,t2: Track|t1 in Entry and t2 in Exit =>  t2 in t1.^succs
-- div,9
all en, ex : Track | en in Entry and ex in Exit implies ex in en.^succs
-- div,3
all t1,t2 : Track | t1 in Entry implies t2 in Exit and t2 in t1.^succs
-- div,1
all en : Entry | all ex : Exit | ex in en.^succs and ex!=en
-- div,1
all ex : Exit | all en : Entry | ex in en.^succs
no Signal
-- div,1
all disj t1,t2:Track | t1 in Entry && t2 in Exit implies t2 in t1.succs
-- div,4
all ex, ent: Track | ex in Exit and ent in Entry implies ex in ent.^(succs)
-- div,1
all e:Entry, ex:Exit | ex in e.^(succs) and ex in Track.^(succs)
-- div,1
all te:Entry, tex:Exit | tex in te.^succs and te in ^succs.tex
-- div,1
all t: Entry | all e: Exit | e in t.^succs && t in e.^succs
-- div,1
all en : Entry, ex : Exit | ex in en.*succs
Exit in Entry.*succs
-- div,1
all ent : Entry | all ext : Exit | ext in ent.^succs and ext != ent
-- div,1
all en : Entry | Exit in en.^succs
no Signal
no Semaphore
no Speed
-- div,5
all e:Entry, ex:Exit | ex in e.^(succs) and ex in (Track.^(succs) - Exit)
-- div,1
all t1:Track ,t2:Track | t1 in Entry and t2 in Exit implies t2 in t1.^(succs)
-- div,1
all entry : univ | entry in Entry implies all exit : Exit | exit in entry.^succs
-- div,2
all e:Track | e in Entry implies all x:Track | x in Exit and x in e.^succs
-- div,3
all t:Track | t in Entry implies (all t1:Track | t1 in Exit implies t1 in t.succs)
-- div,1
all e:Entry, ex:Exit | some t:Track | t in e.succs and ex in t.succs
-- div,1
all t: Track | t in Exit implies all t1: Track | t1 in Entry and t in t1.^(succs)
-- div,1
all t:Track | t in Entry implies (all t1:Track | t1 in Exit implies t1 in t.^succs)
-- div,1
all t: Track | t in Exit implies all t1: Track | t1 in Entry implies t in t1.^(succs)
-- div,1
all e:Entry, ex:Exit | some t:Track | t in e.^succs and ex in t.succs
-- div,1
all e:Entry, ex:Exit | some t:Track | t in e.succs and ex in t.^succs
-- div,1
all en:Entry, ex:Exit | some t:Track | en->t in succs and t->ex in succs
-- div,3
all t1:Track | all t2:Track | t1 in Entry and t2 in Exit implies t2 in t1.^(succs)
-- div,3
all entry : Entry | all exit : Exit | exit in entry.^succs or exit in entry.succs
-- div,1
all e:Entry, ex:Exit | some t:Track | t in e.^succs and ex in t.^succs
-- div,1
all e:Entry, ex:Exit | ex in e.^(succs) and ex in (Track.^(succs) - Exit) and ex!=e
-- div,1
all e:Entry, ex:Exit | ex in e.^(succs) and ex in (Track.^(succs) - Exit) and Exit!=Entry
-- div,1
all ex : Exit | all en : Entry | ex in en.^succs
no Signal
no Semaphore
no Speed
-- div,2
