Entry->Exit in *succs
-- div,10
all x : Entry | Exit in x.*succs
-- div,1
all e:Entry | Exit in e.*succs
-- div,28
all e : Entry | Exit in e.^succs + e
-- div,3
all e : Entry | Exit = (e.*succs)&Exit
-- div,1
all e : Entry | e.(*succs :> Exit) = Exit
-- div,1
all e:Entry, x:Exit | x in e.*succs
-- div,4
all e: Exit, t: Entry | e in t.*succs
-- div,1
all e: Entry, s: Exit | s in e.*(succs)
-- div,1
all e:Entry,ex:Exit| ex in e.*succs
-- div,4
all e:Entry | ((e.^succs + e) & Exit) = Exit
-- div,3
all e:Entry, ex:Exit | e->ex in *succs
-- div,1
all et : Entry, ex : Exit | ex in et.*succs
-- div,4
all ex : Exit, en: Entry | ex in en.*succs
-- div,1
all en : Entry, ex : Exit | ex in en.*succs
-- div,4
all t1:Entry,t2:Exit | t1->t2 in *succs
-- div,1
all t: Entry | all e: Exit | e in t.*succs
-- div,2
all e : Entry | all x : Exit | x in e.*succs
-- div,1
all x : Exit | all e : Entry | x in e.*succs
-- div,1
all e: Entry| all c: Exit| c in e.*(succs)
-- div,2
all e: Entry | all f: Exit | f in e.*(succs)
-- div,2
all e: Entry | all ex : Exit |  ex in e.*succs
-- div,2
all e:Entry | all ex:Exit | e->ex in *succs
-- div,2
all t: Track | some t&Entry implies (Exit in t.*succs)
-- div,1
all en : Entry | all ex : Exit | ex in en.*(succs)
-- div,1
all entry : Entry, exit : Exit  | exit in entry.*succs
-- div,2
all ex : Exit | all en : Entry | ex in en.*succs
-- div,3
all e : Entry, x : Exit | e != x implies x in e.(^succs)
-- div,1
all e: Entry , ex : Exit | e != ex =>  ex in e.^succs
-- div,1
all en : Entry | all e : Exit-en | e in en.^succs
-- div,1
all x:Entry | all y:Exit | y in x.^succs or x=y
-- div,2
all e: Entry | all x: Exit | x in e.^succs or e = x
-- div,3
all exit : Exit | all entry : Entry | exit in entry.*(succs)
-- div,2
all e : Entry | all ex : Exit | ex in e.^succs or e=ex
-- div,3
all disj x,y:Track| x in Entry and y in Exit => y in x.^(succs)
-- div,1
all en : Entry | all ex : Exit | ex in en.^(succs) or en=ex
-- div,3
all en : Entry | all ex : Exit | ex in en.^succs or ex=en
-- div,2
all ex : Exit | all en : Entry | ex in en.^(succs) or ex=en
-- div,1
all t1,t2:Track | t1 in Entry and t2 in Exit implies t1->t2 in *succs
-- div,2
all disj t,t1:Track | t in Entry and t1 in Exit implies t1 in t.^succs
-- div,1
all ex, ent: Track | ex in Exit and ent in Entry implies ex in ent.*(succs)
-- div,1
all disj en, ex: Track | en in Entry && ex in Exit implies ex in en.^(succs)
-- div,1
all disj t1,t2: Track|t1 in Entry and t2 in Exit =>  t2 in t1.^succs
-- div,39
all ent : Entry | all ext : Exit | ext != ent implies ext in ent.^succs
-- div,1
all x : Track, y:Track-x | x in Entry && y in Exit => y in x.^(succs)
-- div,1
all t1,t2:Track | t1 in Entry and t2 in Exit and t1!=t2 implies t2 in t1.^(succs)
-- div,4
all en, ex : Track | en in Entry and ex in Exit and en != ex implies ex in en.^succs
-- div,1
all t1,t2 : Track | t1 !=t2 && t1 in Entry and t2 in Exit implies t2 in t1.^succs
-- div,2
all entry : Entry | all exit : Exit | exit in entry.^succs or entry=exit
-- div,1
all entry : Entry | all exit : Exit | exit in entry.^succs or exit=entry
-- div,4
all t1,t2:Track | t1!=t2 and one (t1 & Entry) and one (t2 & Exit) implies t2 in t1.^succs
-- div,4
