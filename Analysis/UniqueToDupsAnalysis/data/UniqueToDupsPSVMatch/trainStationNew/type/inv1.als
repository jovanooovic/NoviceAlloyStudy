Entry and Exit
-- div,1
some Entry Exit
-- div,1
some Entry in Track
-- div,1
some Entry and Exit
-- div,2
lone Entry and Exit
-- div,1
some t: Track | t & Entry
-- div,1
all x: Track | one x.Entry
-- div,1
succs = Entry+Junction+Exit
-- div,1
all t: Track | some Entry in t
-- div,1
one Track.Entry
one Track.Exit
-- div,1
(Entry & Track)
(Exit & Track)
-- div,1
all t: Track | #(t in Entry)>=1
-- div,1
all t : Track | some Entry in t
-- div,1
one Entry and one Exit in Track
-- div,1
one Entry in Track
one Exit in Track
-- div,2
some Track.Entry and some Track.Exit
-- div,1
all t:Track | some Entry in t.*succs
-- div,1
some Track.Exit and some Track.Entry
-- div,1
all t:Track | some (Entry.t & Exit.t)
-- div,1
some Exit in Track
some Entry in Track
-- div,1
some Entry in Track
some Exit in Track
-- div,2
all t:Track | some ( t.Entry & t.Exit)
-- div,1
all e: Entry, x: Exit | e & x && x & e
-- div,1
all t: Track | #t.Entry>1 and #t.Exit>1
-- div,1
some x : Entry | some y : Exit | x and y
-- div,1
some x:Entry, y:Exit | (x and y) in Track
-- div,2
all t : Track | one t.Entry && one t.Exit
-- div,1
all t: Track | some t.Entry && some t.Exit
-- div,1
some Entry in Track and some Exit in Track
-- div,1
all t : Track - Entry - Exit | not t.succs
-- div,2
all x:Track | some Entry.x and some Exit.x
-- div,1
all en: Entry, ex: Exit | some en in Track
-- div,1
all t:Track | some (t in Entry & t in Exit)
-- div,1
all t: Track | some t.Entry and some t.Exit
-- div,1
all t:Track | some(Entry &Exit ) in t.succs
-- div,1
all disj t1: Track | some t1.succs in Entry
-- div,1
all t:Track | some (Entry in t & Exit in t)
-- div,1
all t : Track | some t.Entry and some t.Exit
-- div,1
(some Entry in Track) and (some Exit in Track)
-- div,2
all x: Track | one x in Entry && one x in Exit
-- div,1
some Entry in Track and some Junction in Track
-- div,1
all t: Track | some t in Entry && some t in Exit
-- div,1
all t: Track| some t in Entry and some t in Exit
-- div,1
all x: Track | some Entry in x && some Exit in x
-- div,1
all t : Track | one t in Entry and one t in Exit
-- div,2
all t: Track | some t in Entry and some t in Exit
-- div,1
all t : Track | some t in Exit or some t in Entry
-- div,1
all t: Track | some Entry in t and some Exit in t
-- div,1
Entry in *(Track.succs) and Exit in Track.*(succs)
-- div,1
all t : Track | some t in Entry and some t in Exit
-- div,2
(some Junction in Track) and (some Entry in Track)
-- div,1
Entry in ^(Track.succs) and Exit in Track.*(succs)
-- div,1
all t : Track | some t in Entry and sone t in Exit
-- div,1
Entry in (*Track.succs) and Exit in Track.*(succs)
-- div,1
all t : Track | some (t in Junction or t in Entry)
-- div,1
all t: Track | some t in Entry  and some t in Exit
-- div,1
(some Junction in Track) and some (Entry in Track)
-- div,1
all t: Track| (some t in Entry) && (some t in Exit)
-- div,1
all t : Track | (one t in Entry) and (one t in Exit)
-- div,1
all t:Track | (some t in Entry) and (some t in Exit)
-- div,1
all t : Track.^(succs) | one Entry = t and Exit in t
-- div,1
all t : Track.^(succs) | one Entry in t and Exit in t
-- div,1
all t : Track | one t.Entry
all t : Track | one t.Exit
-- div,1
some entry : Entry | some exit : Exit | entry and exit
-- div,1
all t:Track| some t in Entry
all t:Track| some t in Exit
-- div,1
all t:Track | some Entry in succs and some Exit in succs
-- div,1
all t : Track | some t.Entry
all t : Track | some t.Exit
-- div,1
all x: Entry, y : Exit | one x in Track && one y in Track
-- div,1
all t: Track | t => some j: Entry | some x: Exit | j && x
-- div,1
all t: Track | some j: Entry | some x: Exit | t => j && x
-- div,1
all t:Track | some Entry in t.succs and one Exit in t.succs
-- div,2
all t:Track | some Exit in t.succs and some Entry in t.succs
-- div,1
all x: Track | some Entry in x.succs && some Exit in x.succs
-- div,1
all t:Track | some Entry in t.succs and some Exit in t.succs
-- div,1
all x: Track | some x.succs in Entry  && some x.succs in Exit
-- div,1
all t : Track| some e : Entry | some ex: Exit | e&t and ex &t
-- div,1
some t: Track | some t.succs in Exit and some succs.t in Entry
-- div,3
all t : Track | some t && Entry
all t : Track | some t && Exit
-- div,1
all en: Entry, ex: Exit | no en not in Track and ex not in Track
-- div,8
all en: Entry, ex: Exit | no en not in Track and no ex not in Track
-- div,1
all t:Track | some e:Entry,x:Exit | t->e in Track and t->x in succs
-- div,1
some t : Track | some Entry in t.^succs or some Junction in t.^succs
-- div,1
all t:Track | some entry:Entry, exit:Exit | (entry + exit) & t.^succs
-- div,1
all disj t1: Track | some t1.succs in Entry and some t1.succs in Exit
-- div,1
all track : Track | lone (Entry in track.succs and Exit in track.succs)
-- div,1
all j:Junction | some e:Entry, x:Exit | e->j in Track and j->x in Track
-- div,1
all t:Track, e:Entry, ex:Exit | #e in t.succs >=1 and #ex in t.succs >=1
-- div,1
all t:Track | #Entry&(t.^succs+^succs.t)>0 and #Junction&(t.^succs+^succs.t)
-- div,1
all t : Track| some e : Entry | some ex: Exit | e&t and
t in Exit and t in Entry
-- div,1
all j:Junction | some e:Entry, x:Exit | e!=j and j!=x implies e->j in Track and j->x in Track
-- div,1
some t1 :Track| one t2: Track | t1 in Entry and t1 not int Exit and t2 in Exit and t2 not in Entry
-- div,1
all t : Track | some exit : Exit | some entry : Entry | t implies exit in t.succs and entry in t.succs
-- div,1
