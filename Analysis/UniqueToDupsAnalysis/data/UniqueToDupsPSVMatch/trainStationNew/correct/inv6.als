Entry in signals.Speed
-- div,9
all e:Entry | some e.signals&Speed
-- div,19
all x : Entry | some Speed & x.signals
-- div,1
all t : Entry | some (t.signals & Speed)
-- div,1
all e : Entry | some Speed & e.signals
-- div,10
all t:Entry | #t.signals&Speed>0
-- div,1
all x: Entry | some y: x.signals | y in Speed
-- div,1
all t : Entry | some s : t.signals | s in Speed
-- div,4
all t:Entry | some s:Speed| s in t.signals
-- div,26
all e:Entry|some s:Speed| s in e.signals
-- div,68
all x : Entry | some y:Speed| y in x.signals
-- div,1
all e:Entry | some s:Speed| e->s in signals
-- div,11
all t:Entry|some s:Speed| t->s in signals
-- div,3
all x:Entry | some y: Speed | x->y in signals
-- div,5
all x:Track | x in Entry => some (x.signals & Speed)
-- div,2
all en : Entry | some s : Speed | s in en.signals
-- div,1
all t:Track| t in Entry => some (t.signals & Speed)
-- div,7
all e : Entry | some sp : Speed | sp in e.signals
-- div,1
all t: Track | t in Entry implies some Speed&t.signals
-- div,1
all e : Entry | some s : Speed | some e.signals & s
-- div,1
all entry : Entry | some s : Speed| s in entry.signals
-- div,1
all t:Track & Entry | some s:Speed| s in t.signals
-- div,1
all t:Track | t in Entry implies some s:Speed | s in t.signals
-- div,6
all t:Entry| some s:Signal | s in t.signals and s in Speed
-- div,3
all e:Entry | some s:Signal | e->s in signals and s in Speed
-- div,1
all t:Track | one (Entry & t) implies (some s:Speed | s in t.signals)
-- div,1
all e:Track | e in Entry implies some s:Signal | e->s in signals and s in Speed
-- div,1
all entry : univ | entry in Entry implies some speed : Speed | entry->speed in signals
-- div,3
