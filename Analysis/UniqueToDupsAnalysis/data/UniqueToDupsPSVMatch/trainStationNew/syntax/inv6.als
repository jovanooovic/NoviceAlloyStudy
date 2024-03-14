all Entry | some Signal
-- div,1
Signals in Entry.signals
-- div,1
all Entry.signals & Speed
-- div,1
all Entry->Speed in signals
-- div,1
All e: Entry : some e.signals
-- div,1
all e : Entry | some e.signal
-- div,1
All e: Entry | some e.signals
-- div,1
all t : Entry | some e.signals
-- div,1
signals in Entry all -> one Speed
-- div,1
Entry = Tracks.(signals :> Speed)
-- div,1
all e:Entry | some e.signals.Spedd
-- div,1
all j : Junctions | no (lone succs.j)
-- div,1
all s: speed | one signals.s in Entry
-- div,1
all t:Entry | some s:Speed in t.signals
-- div,1
all t : Track | some (t.signal & Speed)
-- div,1
all x:Entry | some y: signals.y | Speed.y
-- div,1
all e: Entry, some s:Speed | s in e.signals
-- div,1
all x:Entry | some y: signals.y | y in Speed
-- div,1
all e : Entry, some s: Speed |s in e.signals
-- div,1
all t:Tracks | some s:Signal | s in t.signals
-- div,1
all e : Entry, one s : Speed | s in e.signals
-- div,1
all t: Entry | some s : Speed | s in t.signal
-- div,1
all e : Entry | one s : Speed | s in t.signals
-- div,1
all e : Entry | some s : Speed | s in e.signal
-- div,1
all t : Entry, some s : t.signals | s in Speed
-- div,1
all e : Entry | some s : Spedd | s in e.signal
-- div,1
all s: Speed, all e: Entry | one signals.s in e
-- div,1
all t : Track | t in Entry -> t.signal == Speed
-- div,1
all t : Track | t in Entry -> t.signal in Speed
-- div,1
all e : entry | some s : signal | s in e.signals
-- div,1
all t : Track | Speed in e.signals iff t in Entry
-- div,1
all e in Entry | some s in Signal | s in e.signals
-- div,2
all entry : Entry | some s : Speed| s in entry.signal
-- div,1
all t:Track,s.Speed | t in Entry implies (s in t.signal)
-- div,1
all t:Track, some s:Speed | t in Entry <=> s in t.signals
-- div,1
all t:Track| t in Entry implies one s:Speed t->s in signal
-- div,2
all t:Track | some e:Speed | t in Entry and s in t.signals
-- div,1
all t:Entry, s:Signals| t->s in signals implies s in Speed
-- div,1
all t:Track| t in Entry implies one s:Speed |t->s in signal
-- div,1
all t:Track|some s:Speed | t in Entry implies (s in t.signal)
-- div,1
all t:Entry, some s:Signal| t->s in signals implies s in Speed
-- div,1
all t : Track , one s : Signal | s in t.signals and s in Speed
-- div,1
all t: track | t in Entry implies (some s : Speed | s t.signals)
-- div,1
all t : Track, one s : Speed | t in Entry implies s in t.signals
-- div,1
all t : Track, some s : Speed | t in Entry implies s in t.signals
-- div,1
all t : Track, lone s : Speed | t in Entry implies s in t.signals
-- div,1
all t: track | t in Entry implies (some s : Speed | s in t.signals)
-- div,1
all t:Track|some s:Signal | t in Entry implies s in Speed  s in t.signals
-- div,1
all  x:Tracks, y:Signal| x in Entry implies x->y in signals and y in Speed
-- div,1
all entry : Entry | some sinal : Signal | entry->signal and signal in Speed
-- div,1
all e : Entry | some e.signals
all e : Entry | e.singnals in e.signals&Speed
-- div,1
all a:Track| some b:Signal| a in Entry implies a->b in signal and b in Speed
-- div,1
all a:Track| some b:Signal| a in Entry implies a->b in signail and b in Speed
-- div,1
all a:Track| some b:Signal| a in Entry implies a->b in signails and b in Speed
-- div,1
all entry : Entry | some sinal : Signal | entry->sinal in signals and signal in Speed
-- div,1
all entry : Entry | some sinal : Signal | entry->signal in signals and signal in Speed
-- div,1
