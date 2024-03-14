some (Entry & Speed)
-- div,1
signals.Speed = Entry
-- div,1
Entry = signals.Speed
-- div,1
signals in Entry-> one Speed
-- div,4
signals in Entry -> some Speed
-- div,4
Entry = Track.(signals :> Speed)
-- div,1
signals in Entry some -> one Speed
-- div,1
all e: Entry | one Speed & e.signals
-- div,2
all t : Track | one (t.signals & Speed)
-- div,2
all t : Track | some (t.signals & Speed)
-- div,3
all e: Entry | one (e.signals & signals.Speed)
-- div,1
all t: Track | one s: Speed | s in t.signals
-- div,1
all t : Entry | one s : t.signals | s in Speed
-- div,1
all e:Entry | one s:Speed | s in e.signals
-- div,11
all e : Track | some s : Speed | s in e.signals
-- div,1
all t:Entry | some s:Speed| t in t.signals
-- div,1
all t:Track | some s:Speed | s in t.signals
-- div,4
all e:Entry | one s:Speed | e->s in signals
-- div,1
all x:Track | x in Entry => one (x.signals & Speed)
-- div,1
all x:Track | x in Entry <=> one (x.signals & Speed)
-- div,1
all x:Track | x in Entry <=> some (x.signals & Speed)
-- div,1
all t:Track | Entry in Track implies one Speed & t.signals
-- div,4
all t:Track & Entry | some s:Speed| t in t.signals
-- div,1
all t:Track | t in Entry implies one s:Speed | s in t.signals
-- div,1
all t:Entry | one s:Signal | s in t.signals and s in Speed
-- div,1
all t:Track | some s:Speed | t in Track implies s in t.signals
-- div,2
all t:Track | some e:Speed | t in Entry and e in t.signals
-- div,1
all t:Track | some e:Speed | t in Entry implies e in t.signals
-- div,2
all t:Track| t in Entry implies one s:Speed |t->s in signals
-- div,1
all t:Track|some s:Speed | t in Entry implies (s in t.signals)
-- div,5
all t:Track | one s:Signal | s in t.signals and s in Speed
-- div,2
all x: Track | some y: x.signals | x in Entry implies y in Speed
-- div,1
all x: Track | some y: x.signals | x in Entry iff y in Speed
-- div,1
all t:Track | some s:Speed | s in t.signals <=> t in Entry
-- div,1
all t:Track | some s:Signal | s in t.signals and s in Speed
-- div,1
all t:Track| some s:Speed| t in Entry implies t->s in signals
-- div,9
all t:Track | some s:Speed | one (Entry & t) implies s in t.signals
-- div,6
all t:Track|some s:Signal | t in Entry implies s in Speed and s in t.signals
-- div,3
all  x:Track|one y:Signal| x in Entry implies x->y in signals and y in Speed
-- div,1
all  x:Track|some y:Signal| x in Entry  implies x->y in signals and  y in Speed
-- div,3
all a:Track| some b:Signal| a in Entry implies a->b in signals and b in Speed
-- div,1
all t:Track | one s:Signal | Entry in Track implies s in t.signals and s in Speed
-- div,2
all t:Track | some s:Signal | Entry in Track implies s in t.signals and s in Speed
-- div,3
all e : Entry | some e.signals
all e : Entry | e.signals in e.signals&Speed
-- div,2
all t:Track | Entry in Track implies Speed in t.signals
all t:Track | Entry in Track implies one Speed & t.signals
-- div,1
all t:Track | Entry in Track implies Speed in t.signals
all t:Track | Entry in Track implies some Speed & t.signals
-- div,1
all t:Track| some s:Speed| t in Entry implies t->s in signals
all t:Track| some s:Speed| t in Entry implies t->s in signals
-- div,1
