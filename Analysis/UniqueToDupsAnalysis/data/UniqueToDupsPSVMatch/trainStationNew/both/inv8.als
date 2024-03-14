no Signal
-- div,1
one (Entry & Exit)
-- div,1
Exit in Entry.succs
-- div,1
Exit = Entry.*succs
-- div,1
Exit = Entry.^succs
-- div,1
Exit in Entry.*succs
-- div,15
Entry in *succs.Exit
-- div,1
Exit in Entry.^succs
-- div,14
Entry in ^succs.Exit
-- div,1
Entry in Exit.*(succs)
-- div,1
Track in Entry.*(succs)
-- div,1
Exit = Exit & Entry.*succs
-- div,1
Entry.^succs & Exit = Exit
-- div,1
Exit = (Entry.^succs)&Exit
-- div,4
Exit in Entry + Entry.^succs
-- div,1
all ex:Exit | ex in Entry
-- div,1
all e:Exit | e in Entry.succs
-- div,1
no Signal
no Semaphore
no Speed
-- div,1
Exit in Entry.^(succs) or Exit = Entry
-- div,1
all e : Exit | e in Entry.*succs
-- div,2
all e:Exit | e in Entry.^succs
-- div,6
all e:Entry | e.^succs in Exit
-- div,8
all e:Entry | Exit not in e.*succs
-- div,1
all ex:Exit | ex in Entry.^(succs)
-- div,1
all t: Entry | some (t.succs & Exit)
-- div,2
all e: Entry | Junction not in e.^succs
-- div,1
all e : Entry | some Exit&e.^succs
-- div,1
all e:Entry | (e.^succs + e) in Exit
-- div,1
all t: Entry | some (t.^succs & Exit)
-- div,1
all e:Entry | e.^succs in Exit + e
-- div,1
all e:Entry | e.^succs in (Exit - e)
-- div,1
all t : Track | t in Exit and t in Entry
-- div,1
Exit = (Entry.^succs)&Exit
Exit != Entry
-- div,1
all e: Entry, ex: Exit | e in ex.^succs
-- div,1
all e: Entry, ex: Entry | ex in e.^succs
-- div,2
all t : Track | t in Entry implies t.succs in Exit
-- div,1
all t : Track | Entry in t implies Exit in t.succs
-- div,1
all en : Entry, ex : Exit | ex in en.~succs
-- div,1
all en : Entry, ex : Exit | en in ex.^succs
-- div,1
all t:Track | one (Exit & t) implies one (Entry & t)
-- div,1
all e:Entry, ex:Exit | ex in Entry.^(succs)
-- div,1
all ex:Exit, en:Entry | ex in Entry.^(succs)
-- div,1
all x:Track | x in Exit => x in Entry.^(succs)
-- div,1
all t: Track | t in Entry implies t.^succs in Exit
-- div,3
all t:Track | t in Exit implies t in Entry.*succs
-- div,2
all t: Entry | some x: Exit | x in t.succs
-- div,1
all e:Entry, ex:Exit | Exit in Entry.^(succs)
-- div,1
all t:Track | t in Entry.^succs iff t in Exit
-- div,1
all x:Entry | some y: Exit | x->y in succs
-- div,2
all x : Entry | some y: Exit | y in x.^(succs)
-- div,1
all e : Entry | some x : Exit | x in e.^succs
-- div,1
all e: Entry | some s: Exit | s in e.^(succs)
-- div,1
all e: Entry | some s: Exit | s in e.*(succs)
-- div,2
all t: Entry | some x: Exit | x in t.^succs
-- div,1
all e : Entry | some x : Exit | x in e.*succs
-- div,1
all x :Track | x in Entry => one (Exit & x.^(succs))
-- div,3
all ex : Exit | some en : Entry | en in succs.ex
-- div,1
all t:Track | one (Exit & t) implies Entry in t.^succs
-- div,1
all t:Track | one (Exit & t) implies t in Track.^succs
-- div,2
all t: Track | some t&Entry implies t.^succs=Entry
-- div,1
all x :Track | x in Entry => some (Exit & x.^(succs))
-- div,1
all e: Entry | some ex: Exit | ex in e.^succs
-- div,2
all x :Track | x in Entry <=> one (Exit & x.^(succs))
-- div,1
all x :Track | x in Entry => lone (Exit & x.^(succs))
-- div,1
all e:Entry | some ex:Exit | e->ex in *succs
-- div,1
all ex : Exit | some en : Entry | en in (^succs).ex
-- div,1
all ex : Exit | some en : Entry | ex in en.^(succs)
-- div,2
all t : Track | t in Track-Exit implies Exit in t.^succs
-- div,1
all x : Entry | some y: Exit-x | y in x.^(succs)
-- div,1
all t : Track | t in Track-Exit iff Exit in t.^succs
-- div,1
all t: Track | some t&Entry implies some (t.^succs)&Exit
-- div,2
all en : Entry, ex : Exit | en in ex.^succs and en != ex
-- div,1
all t: Track | some t&Entry implies some t.^succs&Entry
-- div,2
all t: Entry | all x: t.succs | some (x.succs & Exit)
-- div,2
all t: Track | some t.succs&Entry implies t.^succs=Entry
-- div,1
all x : Entry | some y: Exit-Entry | y in x.^(succs)
-- div,1
all entry : Entry | one exit : Exit | exit in entry.^succs
-- div,1
all entry : Entry | all exit : Exit | entry in exit.^succs
-- div,1
all exit : Exit | some entry : Entry | exit in entry.*(succs)
-- div,1
all exit : Exit | some entry : Entry | exit in entry.^(succs)
-- div,1
all entry : Entry | some exit : Exit | exit in entry.^succs
-- div,1
all t1: Track, t2: t1.^succs | some t1&Entry implies Exit = t2
-- div,1
all t1: Track, t2: t1.^succs | some t1&Entry implies Exit in t2
-- div,1
all t1,t2: Track|t1 in Entry and t2 in Exit =>  t1 in t2.^succs
-- div,1
all x : Entry-Exit | some y: Exit-Entry | y in x.^(succs)
-- div,1
all disj t1, t2 : Track | t1 in Entry && t2 in Exit => t1 in t2.succs
-- div,1
all disj t1,t2 : Track | t1 in Entry and t2 in Exit implies t2 in succs.t1
-- div,1
all e:Entry | e.^succs in Exit
all e:Entry | e not in Exit
-- div,1
all t:Track | one (Exit & t) and no (Entry & t) implies t in Track.^succs
-- div,1
all t1: Track, t2: t1.^succs | some t1&Entry implies some t2&Exit
-- div,1
all t:Track | one (Exit & t) implies t in Track.^succs or one (Entry & t)
-- div,2
all t:Track | one (Exit & t) implies one (Entry & t) or t in Track.^succs
-- div,1
all t1,t2:Track | one (t1 & Entry) and one (t2 & Exit) implies t1 in t2.^succs
-- div,1
all t1: Track, t2: t1.^succs | (t1 != t2 and some t1&Entry) implies t2=Exit
-- div,1
all t1: Track, t2: t1.^succs | (t1 != t2 and some t1&Entry) implies Exit in t2
-- div,1
all e:Entry | e.^succs in Exit
all t:Track | t in Entry implies t not in Exit
-- div,1
all t1: Track, t2: t1.^succs | (t1 != t2 and some t1&Entry) implies some t2&Exit
-- div,1
all t: Track | (some t&Entry implies some (t.^succs)&Exit) or some t&Entry&Exit
-- div,1
all t1,t2:Track |  t1!=t2 and one (t1 & Entry) and one (t2 & Exit) implies t1 in t2.^succs
-- div,1
all t1,t2:Track | one (t1 & Entry) and one (t2 & Exit) implies t1 in t2.^succs or (t1=t2)
-- div,1
all e : Entry | some t : Track | e->t in succs and (some k : Track | t->k in succs and k in Exit)
-- div,2
