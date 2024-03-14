Exit in Track.*succs
-- div,1
(Entry - Exit)->(Exit - Entry) in ^succs
-- div,1
all e : Entry | Exit in e.^succs or e in Exit
-- div,2
all e : Entry |e not in Exit implies Exit in e.^succs
-- div,1
all e : Entry, ex : Exit | ex in e.(^succs) or e in Exit
-- div,2
all e : Entry | all ex:Exit | ex in e.^succs or e in Exit
-- div,1
all t1: Track, t2: 1.^succs | some t1&Entry implies some t2&Exit
-- div,1
all t: Track| some t&Entry implies (Exit in t.^succs or some t&Exit)
-- div,1
all t: Track | some t&Entry implies (Exit in t.*succs or some t&Exit)
-- div,1
all x : Track | x in Entry-Exit => x.^(succs) in Exit && x in Exit-Entry => x.^(succs) in Entry
-- div,1
all x : Track | x in Entry-Exit => x.^(succs) in Exit && x in Exit-Entry => ^(succs).x in Entry
-- div,1
