all
-- div,3
some Exit
-- div,3
all Station
-- div,4
all t:Track
-- div,1
all x:Track |
-- div,2
all t : Track |
-- div,2
some Entry, Exit
-- div,6
Some Entry & Exit
-- div,1
lone Enty
lone Exit
-- div,1
one e:Entry, ex:Exit
-- div,1
some Entry
some EXit
-- div,1
lone Enty;
lone Exit;
-- div,1
one Entry
one Juction
-- div,1
some Entry, some Exit
-- div,1
some Entry & some Exit
-- div,3
some e:Entry , ex:Exit
-- div,1
some e:Entry , ex:Exit|
-- div,1
sig Station in Track {}
-- div,2
some entry and some exit
-- div,1
all t:Track | one e:Entry
-- div,1
some e: Entry
some x : Exit
-- div,1
some Entry
one Exit
-- div,1
some entry, exit: Entry, Exit
-- div,1
all t:Track | some(entry&exit)
-- div,1
Track = one Exit and one Entry
-- div,1
some type.Entry
some type.Exit
-- div,1
lone e : Entry | lone ex : Exit
-- div,1
some entry, exit | Entry | Exit
-- div,1
all t : Track | some t in Entry
-- div,1
some e: Entry and some x : Exit
-- div,1
some ex : Exit | some e : Entry
-- div,1
all t:Track  | lone Entry , Exit
-- div,1
all t:Track | one e:Entry, ex:Exit
-- div,4
some et : Entry and some ex : Exit
-- div,1
all t:Track | some e:Entry, x:Exit
-- div,1
all t:Track  lone e:Entry , ex:Exit
-- div,1
all t:Track | some e:Entry ,ex:Exit
-- div,1
some Entry : Track
some Exit : Track
-- div,1
all t:Track | lone e:Entry , ex:Exit
-- div,1
all t : Track | one Entry | one Exit
-- div,1
(some x : Entry ) and (some y : Exit)
-- div,1
all t:Track | some e:Entry ,ex:Exit |
-- div,1
all t: Track |  in Entry || t in Exit
-- div,2
some entry : Entry and some exit: Exit
-- div,1
all t:Track | one e:Entry | one e:Exit
-- div,1
all x: Track | one x.Entry & one x.Exit
-- div,1
succs in Track -> some Entry + one Exit
-- div,1
all e: Entry | sone Exit and sone Entry
-- div,1
some Entry in Track)
some (Exit & Track)
-- div,1
some t: Track | one t.succ and one succ.t
-- div,1
all t: Track | some t: Entry | some t: Exit
-- div,1
all x:Track | one Entry in x | one Exit in x
-- div,1
all t:Track | t in one Entry and t in one Exit
-- div,2
all t:Track | some (t & Entry) | some (t & Exit)
-- div,1
all en: Entry, ex: Exit | some no en not in Track
-- div,1
(some Junction in Track) and some Entry in Track)
-- div,1
for t : Track | some t in Entry and some t in Exit
-- div,1
all x,y Track | some x in Entry and some y in Entry
-- div,1
all t: Track | some e: Entry in t| some s: Exit in t
-- div,1
sig Station {
entries: some Entry,
exits: some Exit
}
-- div,2
all t : Track, one Entry, one Exit | t in Entry + Exit
-- div,1
all x,y Track | (some x in Entry) and (some y in Entry)
-- div,1
all t : Track & Entry | some
all t : Track & Exit | some
-- div,1
all x:Track | some x.succs in Entry | some x.succs in Exit
-- div,1
some t1,t2 : Track | t1->Entry in type and t2->Exit in type
-- div,1
all x: Track | some x.succs in Entry | some x.succs in Exit
-- div,2
some e: Entry, f: Exit | e in Track.succ and f in Track.succ
-- div,1
some ent : Entry | exi : Exit | ent in Track and exi in Track
-- div,1
some x:Track | x->Entry in type
some x:Track| x->Exit in type
-- div,1
some j : Juntion | some e : Entry | j in Track and e in Track
-- div,1
all t : Track | some e : Entry | some s : exit| e in t and s in t
-- div,1
all t : Track, en : Entry, ex : Exit | some en in t && some ex in t
-- div,1
all t:Track | some x:Exit, e:entry | x in t.^succs and e in t.^succs
-- div,1
all t: Track | some e: Entry| in t.succs and some s: Exit| in t.succs
-- div,1
all t:Track | one ex:Exit , en:Entry | t->ex in succ and t->en in succ
-- div,1
all t : Track| some t.succs in Entry
all t : Track| some t.succs in Exit
-- div,1
some exit : Exit | some entry : Entry | exit in Track and entry in Tracck
-- div,1
all t:track | #Entry&(t.^succs+^succs.t)>0 and #Junction&(t.^succs+^succs.t)
-- div,1
all t : Track, en : Entry, ex : Exit | some en in t.succs && some ex in t.succs
-- div,1
all t:Track, s:Signal | t->s in signals implies t in one Entry and t in one Exit
-- div,1
some t : Track| t in Entry
some t : Track| t in Exit
-- div,2
all t: Track | some en : Entry | some ex : Exit | en in t1.succs and ex in t1.succs
-- div,1
some t1 | one t2: Track | t1 in Entry and t1 not int Exit and t2 in Exit and t2 not in Entry
-- div,1
some e,z:Track| e->z not in succs implies e in Exit
some e,z:Track| e->z in sucs implies e in Exit
-- div,1
all t : Track | (t in Exit) or (t in Entry) or (t in Juction and (some k : Track | t->k in succs))
-- div,1
all t : Track| some t.succs & Entry
all t : Track| some t.succs & Exit
-- div,1
one x : Track | some y : Entry | some z : Exit | y->x in succs and x->z in succs
-- div,1
all x : Track | some y : Entry | some z : Exit | y->x in succs and x->z in succs
-- div,1
some x : Track | some y : Entry | some z : Exit | y->x in succs and x->z in succs
-- div,1
Track.succs(x) != ? ? Signal.subsetOf(Track.succs(x)) ?
Track.preds(x) != ? ? Signal.subsetOf(Track.preds(x)) ? x : Junction
-- div,1
(all x : Exit | all y : Track | x->y not in succs) and
(all x : Entry | all y : Track | y->x not in succs) and
(all x : Juction | some y,z : Track | y->x in succs and x->z in succs) and
(all x : Track | some y : Track | (y->x in succs and y in Entry) implies (some z : Track | z in Exit and x->z in succs))
-- div,1
(all x : Exit | all y : Track | x->y not in succs) and
(all x : Entry | all y : Track | y->x not in succs) and
(all x : Junction | some y,z : Track | y->x in succs and x->z in succs) and
(some x : Track | some y : Track | (y->x in succs and y in Entry) implies (some z : Track | z in Exit and x->z in succs))
}
-- div,1
