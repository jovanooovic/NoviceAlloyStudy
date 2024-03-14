some Entry.signals
-- div,1
Entry.signals = Speed
-- div,1
Speed in Entry.signals
-- div,4
Entry->Speed in signals
-- div,1
one (Speed & Entry.signals)
-- div,2
signals in Entry one -> Speed
-- div,1
one ((Entry.signals) & Speed)
-- div,1
some Speed & Entry.signals
-- div,5
signals in Entry-> one Signal
-- div,1
signals in Entry some -> Speed
-- div,1
some (Entry & signals.Speed)
-- div,1
some Entry.signals & Speed
-- div,6
signals  in Entry -> some Signal
-- div,1
signals in Entry one -> one Signal
-- div,1
all e : Entry | one Speed
-- div,1
signals in Entry one -> some Signal
-- div,1
all x:Track | one x.signals
-- div,1
all t:Track | #t.signals>0
-- div,1
all e : Entry | one signals.Speed
-- div,1
all t: Entry | Speed in t.signals
-- div,1
all t : Track | Speed in t.signals
-- div,1
all e:Entry | Speed in e.signals
-- div,13
all s: Speed | s in Entry.signals
-- div,2
all x: Speed | Entry->x in signals
-- div,1
all x:Entry | x->Speed in signals
-- div,2
some s:Speed | s in Entry.signals
-- div,2
all e : Entry | one e.signals & Signal
-- div,2
all t : Entry, s : t.signals | s in Speed
-- div,1
all e : Entry, s : Speed | s in e.signals
-- div,2
all x:Entry, y:Speed | x->y in signals
-- div,1
all x:Track | x in Entry => one x.signals
-- div,1
all t : Track | t in Entry implies one t.signals
-- div,1
all x:Track | x in Entry <=> one x.signals
-- div,1
all t:Track | t in Entry iff some t.signals
-- div,2
all t: Track | t in Entry implies Speed = t.signals
-- div,1
all t: Track | t in Entry implies t.signals in Speed
-- div,2
all t:Track | t in Entry implies Speed in t.signals
-- div,6
all t : Track | t in Entry iff Speed in t.signals
-- div,1
all t:Track | t.signals in Speed <=> t in Entry
-- div,1
some t:Track | t in Entry implies Speed in t.signals
-- div,1
all e : Entry | all s : Speed | s in e.signals
-- div,2
all x : Entry | all y:Speed| y in x.signals
-- div,1
all e : Entry | all s : Signal | s in e.signals
-- div,1
all t:Track | one s:Signal | s in t.signals
-- div,1
all e:Entry | one s:Signal | s in e.signals
-- div,1
all t:Track | Entry in Track implies Speed in t.signals
-- div,2
all e:Entry | lone s:Speed | s in e.signals
-- div,1
all t: Entry | some s: Speed | s not in t.signals
-- div,1
all e:Entry | one s:Signal | e->s in signals
-- div,1
all t:Track | some s:Signal | s in t.signals
-- div,1
all e : Entry | (one e.signals) and (e.signals in Signal)
-- div,1
all e : Entry | all s : Speed | Speed in e.signals
-- div,1
all t : Track, s : Speed | t in Entry implies one signals.s
-- div,1
all t : Track, s : Speed | t in Entry implies s in t.signals
-- div,5
all t : Track, s : Speed | t in Entry implies some signals.s
-- div,1
all t : Track , s : Signal | s in t.signals and s in Speed
-- div,1
all t : Track, s : Speed | t in Entry iff s in t.signals
-- div,1
all t:Entry, s:Signal| t->s in signals implies s in Speed
-- div,1
all t:Track-Entry | some s:Speed| s in t.signals
-- div,1
all t : Track, s : Speed | t in Entry implies Speed in t.signals
-- div,1
all t : Track | some s : Signal-Semaphore | s in t.signals
-- div,1
all t : Track | all s : Speed | t in Entry implies s in t.signals
-- div,1
all e: Entry | all t: Track | e in t implies Speed in t.signals
-- div,1
all e: Entry | some t: Track | e in t implies Speed in t.signals
-- div,1
all t:Track & Entry-Exit | some s:Speed| t in t.signals
-- div,2
all t:Track | some s:Signal | t in Entry implies s in t.signals
-- div,1
all e: Entry | some t: Track | e in t implies Signal in t.signals
-- div,1
all t:Track, s:Signal | t->s in signals and t=Entry implies Speed in s
-- div,1
all t:Track | some s:Signal | Entry in Track implies Speed in t.signals
-- div,1
all  x:Track, y:Signal| x in Entry implies x->y in signals and y in Speed
-- div,1
all  x:Track|one y:Signal| x in Entry and x->y in signals implies  y in Speed
-- div,1
all x : Track | some y : Signal | x in Entry and y in Speed implies y in x.signals
-- div,1
all t:Track | some s:Signal | t in Entry and s in t.signals implies s in Speed
-- div,1
all t:Track | all s:Signal | Entry in Track implies s in t.signals and s in Speed
-- div,1
all e : Entry | some e.signals
all e : Entry | all s : Speed | s in e.signals
-- div,1
