lone Entry
-- div,1
some Track.succs
-- div,1
Track = Entry + Exit
-- div,2
some Entry and lone Exit
-- div,1
lone Entry
lone Exit
-- div,9
lone Exit
lone Entry
-- div,2
one Entry
one Junction
-- div,1
some Entry
some Junction
-- div,2
some t : Track | t = Entry
-- div,2
Track in Entry and Track in Exit
-- div,1
one e: Entry | e in Track
-- div,1
all x:Track | some succs.x
-- div,1
all t:Track | some (t & Entry)
-- div,2
all t:Track | some(Entry&Exit)
-- div,1
lone Entry
lone Exit
Entry != Exit
-- div,1
some Track.succs and Track != Track.succs
-- div,1
all t:Track | one (t & Entry & Exit)
-- div,1
all t: Track| one Entry and one Exit
-- div,5
all e: Entry | one Exit and one Entry
-- div,1
all t:Track | some (t & Entry & Exit)
-- div,1
all t: Track | some Entry and one Exit
-- div,1
all t: Track| t in Entry and t in Exit
-- div,5
all t:Track | t in Exit and t in Entry
-- div,2
all t: Track | t in Entry || t in Exit
-- div,3
all x : Track | Entry in x or Exit in x
-- div,1
all x : Track | x in Entry or x in Exit
-- div,1
all t:Track | Entry in t and Exit in t
-- div,3
(all x: Track| lone Entry && lone Exit)
-- div,1
all t : Track | t in Exit or t in Entry
-- div,1
all x : Track | Entry in x and Exit in x
-- div,1
Entry = Track.^(succs) or Exit = Track.^(succs)
-- div,1
Entry = Track.^(succs) and Exit = Track.^(succs)
-- div,2
all t : Track - Entry - Exit | no t.succs
-- div,1
one x,y : Track | Entry = x and Junction = y
-- div,1
all t: Track | some e: Entry | e in t
-- div,1
Entry in Track.^(succs) and Exit in Track.^(succs)
-- div,2
Entry in Track.^(succs) or Exit in Track.^(succs)
-- div,1
all t:Track, s:Signal | t->s in signals
-- div,1
lone e: Entry, ex: Exit | e in Track.succs
-- div,1
some t: Track | one t.succs and one succs.t
-- div,1
all t : Track.*(succs) | Entry = t or Exit = t
-- div,1
all t : Track.*(succs) | Entry = t or Exit in t
-- div,1
succs in Track -> some Entry
succs in Track -> one Exit
-- div,2
some t: Track | lone t.succs and lone succs.t
-- div,1
all t : Track.^(succs) | Entry in t or Exit in t
-- div,1
all t : Track.*(succs) | Entry in t and Exit in t
-- div,1
all t : Track.^(succs) | Entry in t and Exit in t
-- div,1
succs in Track -> some Entry
succs in Track -> some Exit
-- div,1
all t: Track | some Entry&t and some Exit&t
-- div,1
all t:Track | some e:Entry | e in t.*succs
-- div,1
all x : Track | Entry in x.succs and Exit in x.succs
-- div,1
all t : Track | succs.t in Entry and t.succs in Exit
-- div,1
all x: Track | x.succs in Entry  && x.succs in Exit
-- div,1
all e: Entry, x: Exit | some (e & x) && some (x & e)
-- div,1
all t : Track | t.^(succs) = Entry or t.^(succs) = Exit
-- div,1
all t: Track | some (t & Entry) && some (t.succs & Exit)
-- div,1
all t : Track | Entry = t.^(succs) and Exit = t.^(succs)
-- div,2
all t: Track | #t.succs in Entry && #t.succs in Exit
-- div,1
all x: Track| one Entry
all y: Track| one Exit
-- div,2
all t: Track | some Entry
all t: Track | one Exit
-- div,1
(all x: Track| lone Entry) && (all y: Track| lone Exit)
-- div,1
all t : Track | t in Entry
all t : Track | t in Exit
-- div,2
all t: Track | some (succs.t & Entry) && some (t.succs & Exit)
-- div,1
all t: Track | some (t.succs & Entry) && some (t.succs & Exit)
-- div,3
all t:Track | some (Entry &t.succs) and some(Exit &t.succs)
-- div,3
some t: Track | t in Junction + Entry + Exit and #t.succs>1
-- div,3
some t: Track | t in Junction + Entry + Exit and #t.succs>0
-- div,1
some j : Junction | some e : Entry | j in Track or e in Entry
-- div,1
some j : Junction | some e : Entry | j in Track and e in Track
-- div,1
some j : Junction | some e : Entry | j in Track or e in Track
-- div,2
all x: Track| some e: Entry, j: Exit | x = e or x = j
-- div,1
all t:Track | #Exit&(t.succs)>0 and #Entry&(t.succs)>0
-- div,1
all t: Track | #(t.succs & Entry) > 1 && #(t.succs & Exit) > 1
-- div,1
all t: Track | some e: Entry, x: Exit | e in t && x in t
-- div,1
all t:Track | one e:Entry, ex:Exit | e in t && ex in t
-- div,1
all t1,t2 : Track | t1 != t2 implies some t1 & Entry and some t2 & Exit
-- div,1
all t : Track | some t implies Entry = t.^(succs) and Exit = t.^(succs)
-- div,1
all t: Track | #(succs.t & Entry)>=1 && #(t.succs & Exit)>=1
-- div,1
lone e: Entry, ex: Exit | e in Track.succs or ex in Track.succs
-- div,1
all x: Track| some e: Entry, j: Junction | x = e or x = j
-- div,1
all t:Track |some ex:Exit, e:Entry | e in t && ex in t
-- div,1
all t:Track | some e:Entry, ex:Exit | e in t && ex in t
-- div,1
all t : Track | some t & Entry
all t : Track | some t & Exit
-- div,3
all t:Track | #Exit&(t.*succs)>0 and #Entry&(*succs.t)>0
-- div,1
all t:Track | #Exit&(t.^succs)>0 and #Entry&(^succs.t)>0
-- div,1
all s : Track | some e: Entry | some e1 : Exit | (e + e1) in s
-- div,1
all a : Track, b : Entry, c : Exit | a -> b in succs and a -> c in succs
-- div,1
one t:Track, s:Signal | t->s in signals implies t in Entry and t in Exit
-- div,1
all t:Track | some e:Entry, ex:Exit | t in Entry and t in Exit
-- div,1
all t : Track | one e : Entry | e in t and one x : Exit | x in t
-- div,1
all t:Track | one ex:Exit | one e:Entry | e in t && ex in t
-- div,1
all t : Track | some e : Entry | some s : Exit| e in t and s in t
-- div,1
all e : Entry | all ex : Exit | all t : Track | e in t and ex in t
-- div,1
Entry in Track and Exit in Track and Entry in Track.^(succs) and Exit in Track.^(succs)
-- div,1
Entry in Track and Exit in Track and Entry in Track.^(succs) or Exit in Track.^(succs)
-- div,1
succs in Track -> some Entry
succs in Track -> some Exit
signals in Track -> some Signal
-- div,1
all t : Track | some en : Entry | some ex : Exit | en in t and ex in t
-- div,1
all x: Track | some y : Entry, z: Exit | y in x.succs && z in x.succs
-- div,2
all t:Track | some entry:Entry, exit:Exit | (entry + exit) in t.^succs
-- div,2
all t:Track | #Exit&(t.^succs+t)>0 and #Entry&(*succs.t+t)>0
-- div,1
all t:Track | #Exit&(t.^succs+t)>0 and #Entry&(^succs.t+t)>0
-- div,1
all t:Track | some entry:Entry, exit:Exit | (entry + exit) in t.*succs
-- div,2
all t:Track | some e:Entry,x:Exit | t->e in succs and t->x in succs
-- div,1
all t:Track | some e:Entry ,ex:Exit | e in t.succs and ex in t.succs
-- div,4
all e:Entry, ex:Exit | some t:Track | e in t.succs and ex in t.succs
-- div,1
all t:Track | some e:Entry, ex:Exit | e in t.succs or ex in t.succs
-- div,1
all a : Track | some b : Entry, c : Exit | a -> b in succs and a -> c in succs
-- div,1
all t:Track | one ent:Entry | one ex:Exit | t in Entry and t in Exit
-- div,1
all t:Track | one ex:Exit | one e:Entry | e in Track && ex in Track
-- div,2
all t: Track |one en:Entry, ex: Exit | en in t.succs and ex in t.succs
-- div,1
all t: Track |some en:Entry, ex: Exit | en in t.succs and ex in t.succs
-- div,1
all t : Track | (Entry = t or Entry = t.^(succs)) and (Exit = t or Exit = t.^(succs))
-- div,1
all t:Track | one ex:Exit , en:Entry | t->ex in succs and t->en in succs
-- div,1
all j:Junction | some e:Entry, x:Exit | e->j in succs and j->x in succs
-- div,3
all t1,t2,t : Track | t1 in Entry and t2 in Exit implies (t1 in t.succs and t2 in t.succs)
-- div,1
all ex: Exit, ent: Entry | one t: Track | ex in t.succs and ent in t.succs
-- div,1
all t: Track | lone ent: Entry, ex: Exit | ent in t.succs and ex in t.succs
-- div,1
all t:Track | some x:Exit, e:Entry | x in t.^succs and e in t.^succs
-- div,1
all t:Track | #Exit&(^succs.t)>0 and #Entry&(t.^succs+^succs.t)>0
-- div,1
all t:Track | some e:Entry, ex:Exit | e in (^succs).t and ex in t.^(succs)
-- div,2
all t:Track | t in Entry or (some t.succs & Entry) or t in Exit or (some t.succs & Exit)
-- div,1
all t:Track | #Exit&(t.succs+succs.t)>0 and #Entry&(t.succs+succs.t)>0
-- div,1
all x : Track | some y:Exit | some z:Entry | y in x.succs and z in x.succs
-- div,1
all t: Track | some e: Entry | some x: Exit | e in t.succs && x in t.succs
-- div,1
all t: Track | some e: Entry| e in t.succs and some s: Exit|  s in t.succs
-- div,1
all s: Track | (some e: Entry | e in s.succs) and (some x: Exit | x in s.succs)
-- div,3
all t:Track | some e:Entry | some ex:Exit | e in t.succs and t in e.succs
-- div,1
all t:Track | some e:Entry | some ex:Exit | e in t.succs and ex in t.succs
-- div,1
all t:Track | some e:Entry | some ex:Exit | e in t.succs and t in ex.succs
-- div,1
all t:Track.succs | some x:Exit, e:Entry | x in t.^succs and e in t.^succs
-- div,1
all s: Track | s in Junction + Entry => #(s.succs & Entry) > 0 && #(s.succs & Exit) > 0
-- div,2
all s: Track | s in Junction + Entry => #(s.succs & Entry) > 1 && #(s.succs & Exit) > 1
-- div,1
all t: Track | some en : Entry | some ex : Exit | en in t.succs and ex in t.succs
-- div,1
all t:Track | some en:Entry | one ex:Exit | en->t in succs and t->ex in succs
-- div,1
all t : Track | (t in Exit) or (t in Entry) or (t in Junction and (some k : Track | t->k in succs))
-- div,1
all t:Track | some e:Entry ,ex:Exit | e in t.succs and ex in t.succs and t in t.succs
-- div,1
all t:Track | #Exit&(t.*succs+*succs.t)>0 and #Entry&(t.*succs+*succs.t)>0
-- div,1
all j:Junction | j in Track implies some e:Entry, x:Exit | e->j in succs and j->x in succs
-- div,1
all s: Track | s in Junction + Entry + Exit => #(s.succs & Entry) > 0 && #(s.succs & Exit) > 0
-- div,1
all t:Track | #Exit&(t.^succs+^succs.t)>0 and #Entry&(t.^succs+^succs.t)>0
-- div,1
all t : Track | some exit : Exit | some entry : Entry | exit in t.succs and entry in t.succs
-- div,1
all t:Track | #Exit&(t.^succs+^succs.t)>0 and #Junction&(t.^succs+^succs.t)>0
-- div,1
all t:Track | #Entry&(t.^succs+^succs.t)>0 and #Junction&(t.^succs+^succs.t)>0
-- div,1
all t:Track | some t.succs implies some x:Exit, e:Entry | x in t.^succs and e in t.^succs
-- div,1
all j:Junction | some e:Entry, x:Exit | e->j in succs and j->x in succs and e!=j and j!=x
-- div,1
all j:Junction | some e:Entry, x:Exit | e!=j and j!=x implies e->j in succs and j->x in succs
-- div,1
all x : Track | some y:Exit | some z:Entry | y in x.succs and z in x.succs and x!=y and x!=z
-- div,1
all t:Track | some en:Entry | en->t in succs
all t:Track | one e:Exit | e->t not in succs
-- div,1
all t:Track | some en:Entry | en->t in succs
all t:Track | one ex:Exit | t->ex in succs
-- div,5
all x : Track | some y:Exit | some z:Entry | y in x.succs and z in x.succs and x!=y and x!=z and y!=z
-- div,1
all x : Track | some y : Track | (y->x in succs and y in Entry) implies (some z : Track | z in Exit and x->z in succs)
-- div,2
all j:Junction | j in Track implies some e:Entry, x:Exit | e!=j and j!=x implies e->j in succs and j->x in succs
-- div,1
all t:Track | some en:Entry | en->t in succs
all t:Track | one e:Exit | e!=t and e->t not in succs
-- div,1
all x : Track | all y:Exit | all z:Entry | y in x.succs and z in x.succs and x!=y and x!=z and y!=z and x not in x.succs
-- div,1
all t:Track | some entry:Entry, exit:Exit | (entry + exit) in t.*succs
all t:Track | some s:Signal | s in t
-- div,1
all x : Track | some y:Exit | some z:Entry | y in x.succs and z in x.succs and x!=y and x!=z and y!=z and x not in x.succs
-- div,1
all t:Track | some en:Entry | en!=t and en->t in succs
all t:Track | one e:Exit | e!=t and e->t not in succs
-- div,1
all t:Track | some entry:Entry, exit:Exit | (entry + exit) in t.*succs
all t:Track | some s:Signal | t -> s in signals
-- div,1
all x : Track | some y : Track | (y->x in succs and y in Entry) implies (some z : Track | z in Exit and (all t : Track | z->t not in succs) and x->z in succs)
-- div,1
all t:Track | some e:Entry, ex:Exit | e in t.succs and ex in t.succs
all e:Entry, ex:Exit | some t:Track | e in t.succs and ex in t.succs
-- div,1
all x : Exit | all y : Track | x->y not in succs

all x : Track | some y : Track | (y->x in succs and y in Entry) implies (some z : Track | z in Exit and x->z in succs)
-- div,1
all x : Exit | all y : Track | x->y not in succs and

all x : Track | some y : Track | (y->x in succs and y in Entry) implies (some z : Track | z in Exit and x->z in succs)
-- div,1
(all x : Exit | all y : Track | x->y not in succs) and
(all x : Entry | all y : Track | y->x not in succs) and
(all x : Junction | some y,z : Track | y->x in succs and x->z in succs)
-- div,1
(all x : Exit | all y : Track | x->y not in succs) and
(all x : Entry | all y : Track | y->x not in succs) and

all x : Track | some y : Track | (y->x in succs and y in Entry) implies (some z : Track | z in Exit and x->z in succs)
-- div,2
(all x : Exit | all y : Track | x->y not in succs) and
(all x : Entry | all y : Track | y->x not in succs) and
(all x : Junction | some y,z : Track | y->x in succs and x->z in succs) and
(all x : Track | some y : Track | (y->x in succs and y in Entry) implies (some z : Track | z in Exit and x->z in succs))
-- div,1
(all x : Exit | all y : Track | x->y not in succs) and
(all x : Entry | all y : Track | y->x not in succs) and
(all x : Junction | some y,z : Track | y->x in succs and x->z in succs) and
(some x : Track | some y : Track | (y->x in succs and y in Entry) implies (some z : Track | z in Exit and x->z in succs))
-- div,4
