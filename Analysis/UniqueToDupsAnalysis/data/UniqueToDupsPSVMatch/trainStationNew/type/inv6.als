Entry.signals.Speed
-- div,1
one Entry.signals.Speed
-- div,2
some Entry.signals.Speed
-- div,1
all e: Entry| some e.Speed
-- div,1
all e: Entry | one e.Speed
-- div,1
some (Entry.signals).Speed
-- div,5
one Entry.signals in Speed
-- div,1
some Speed in Entry.signals
-- div,1
all e : Entry | one e.Speed
-- div,1
all e : Entry | some e.Speed
-- div,1
all t : Track | signals.Speed
-- div,1
all s: Speed | Entry.signals.s
-- div,1
all x: Entry | x.signals.Speed
-- div,1
Speed in signals some -> Entry
-- div,2
Entry.signals implies one Speed
-- div,1
all e:Entry | some Speed.e.signals
-- div,1
all e:Entry | some e.signals.Speed
-- div,3
all e: Entry | one e.signals.Speed
-- div,2
one Entry.signals and signals.Speed
-- div,1
all t : Track | (t.signals & Speed)
-- div,1
all e:Entry | some (e.signals.Speed)
-- div,1
all e : Entry | some e.signals.Speed
-- div,1
all e:Entry | some (signals.e.Speed)
-- div,1
all e:Entry | some e.signals in Speed
-- div,2
all e:Entry | some Speed in e.signals
-- div,3
all s: Speed | one signals.s in Entry
-- div,1
all e: Entry | e implies signals.Speed
-- div,1
all e: Entry | some Speed in e.signals
-- div,2
all e:Entry | some (e.signals in Speed)
-- div,1
all e : Entry | some Speed in e.signals
-- div,2
all e : Entry | one e.signals in Signal
-- div,1
all t: Entry | t.signals.Speed.size > 0
-- div,1
all e: Entry | (some Speed in e.signals)
-- div,1
all e: Entry | (some Speed) in e.signals
-- div,1
all e: Entry | no Speed not in e.signals
-- div,1
all e: Entry | some (Speed in e.signals)
-- div,2
all e : Entry | (some Speed) in e.signals
-- div,1
all t : Track, s : Signal | signals.Speed
-- div,1
all x:Entry | some y: signals | y in Speed
-- div,1
all s: Speed | Entry implies one signals.s
-- div,1
all t: Track | (t & Entry) implies t.signals
-- div,1
all e:Entry | one s:Signal | s in e->signals
-- div,1
all e : Entry, s: Speed | some s in e.signals
-- div,1
all t : Track | t in Entry -> t.signals in Speed
-- div,1
all t: Entry | some s: Speed | no s in t.signals
-- div,1
all t: Track | (t & Entry) implies some t.signals
-- div,1
all e: Entry | some s: Speed | some (s in e.signals)
-- div,1
all e: Entry | some s: Speed | some (e.signals in s)
-- div,1
all t: Track | t in Entry implies one t.signals in Speed
-- div,2
all e: Entry | e.signals in Signal implies signals.Speed
-- div,1
all t : Track | t in Entry implies one Speed in t.signals
-- div,1
all t: Track | t in Entry implies some t.signals in Speed
-- div,3
all x: Track | x in Entry implies some x.signals in Speed
-- div,1
all x: Track| some y: x.signals | x in Entry -> y in Speed
-- div,1
all t:Track | Entry in Track implies one Speed in t.signals
-- div,3
all t : Track, s : Speed | t in Entry implies some t.signals.s
-- div,2
all t:Track | (Entry & t) implies (some s:Speed | s in t.signals)
-- div,1
all t:Track,s:Signal | Entry in Track implies one s in t.signals and s in Speed
-- div,1
