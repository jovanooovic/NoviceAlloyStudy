all t: Entry |
-- div,3
all t: Track |
-- div,1
Track in ^succ
-- div,1
Exit in Entry.succ
-- div,1
End in Entry.(^succs)
-- div,1
all ex:Exit, | ex in Entry
-- div,1
all e:Entry | Exit in e.^succ
-- div,1
all e: Entry | Exit in e.*succ
-- div,1
all e:Entry | Exit in t.^succs
-- div,1
all e : Entry | Exit in e.^succ
-- div,1
all t : Track | Track in t.^succ
-- div,1
all e : Entry | some Exit&t.^succs
-- div,1
all e:Entry,ex:Exit| ex in e.^succ
-- div,1
all e:Entry, x:Exit | x in e.^parts
-- div,1
all ex:Exit, | ex in Entry.^(succs)
-- div,3
all e: Entry, x: Exit| x in e.^occurs
-- div,1
all t: Entry | #(t.succs & Exit) == #Exit
-- div,1
all e : Entry | Exit in e.^succs or en=ex
-- div,1
all t: Entry | #(t.^succs & Exit) == #Exit
-- div,1
all e: Entry| all c: Exit| c in e*(succes)
-- div,1
all en : Entry, ex : Exit | ex in en.*succ
-- div,1
all e: Entry | all ex : Exit |  in e.*succs
-- div,1
all e:Entry, ex:Exit | ex in all e.^(succs)
-- div,1
all e: Entry, all ex: Exit | ex in e.^succs
-- div,1
all en : Entry | ex : Exit | ex in en.^succs
-- div,1
all e : Entry | all s : Exit | s in e.*(.Exit)
-- div,1
all en : Entry, ex : Exit | all ex & en.^succs
-- div,1
all en : Entry, ex : Exit | all (ex & en.^succs)
-- div,1
all x:Entry | all y:Exit | y in x.^succs or x==y
-- div,1
all t : Track | t in Entry implies t.succ in Exit
-- div,1
all t : Track | t in entry implies t.succ in exit
-- div,1
all exit:Exit, entry:Entry | exit in entry^.succs
-- div,1
all exit:Exit, entry:Entry | exit in entry^.succs)
-- div,1
all en : Entry | all e : Exit-en |  | e in en.^succs
-- div,1
all exit:Exit, all entry:Entry | exit in entry.succs
-- div,1
all entry : Entry | exit : Exit | exit in entry.^succs
-- div,1
all en : Entry, ex : Exit | ex in en.^succs && t1 != t2
-- div,1
all t: Entry | all x: t.succs | #(x.succs & Exit) == #Exit
-- div,1
all t: Entry | all x: t.succs | #(x.^succs & Exit) == #Exit
-- div,1
all x,y:Tracks | y in Exit  implies  x in Entry and x.succs.y
-- div,1
all disj x,y:Track| x in Entry and y in End => y in x.^(succs)
-- div,1
all en, ex : Track | en in Entry and ex in Exit ex in en.^succs
-- div,1
all en, ex : Tracks | en in Entry and ex in Exit ex in en.^succs
-- div,1
all t1: Track, t2: t.^succs | some t1&Entry implies some t2&Exit
-- div,1
all en : Entry | all en.^succs&Exit
no Signal
no Semaphore
no Speed
-- div,1
all disj t,t1:Track | t in Entry and t1 in Exit implies t1 in t^.succs
-- div,1
all disj t1,t2 : Track | t1 in Entry and t2 in Exit implies t2 in succ.t1
-- div,1
all disj t1,t2:Track | t in Entry and t2 in Exit implies t2 in t1.^(succs)
-- div,1
all disj t1,t2:Track | t1 in Entry && t2 in Exit implies t2 in t1.^(succs)
}
-- div,1
all t1,t2:Track | t1!=t2 |  t1 in Entry && t2 in Exit implies t2 in t1.^(succs)
-- div,1
all entry : univ | entry in Entry implies all exit : Exit | exit in entry.succs^
-- div,1
all t1,t2:Track  -> t1!=t2 |  t1 in Entry && t2 in Exit implies t2 in t1.^(succs)
-- div,1
all t1,t2:Track | t1!= t2  t1 in Entry && t2 in Exit && t1 != t2 implies t2 in t1.^(succs)
-- div,1
all t1,t2:Track | one (t1 & Entry) and one (t2 & Exit) implies t1 in t2.^succs or (t1==t2)
-- div,1
