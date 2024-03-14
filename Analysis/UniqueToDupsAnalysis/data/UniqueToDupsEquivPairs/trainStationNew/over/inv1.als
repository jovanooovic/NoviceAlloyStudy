-- equiv pair start,5
some Entry & Exit
-- div,2
some t: Track | t in Entry&Exit
-- div,1
some t : Track | t in Entry and t in Exit
-- div,2
-- equiv pair end
-- equiv pair start,45
one Entry
one Exit
-- div,24
one Exit
one Entry
-- div,1
#(Entry) = 1 and #(Exit) = 1
-- div,1
some t1,t2 : Track | t1=Entry and t2=Exit
-- div,2
one t1, t2: Track | t1 in Entry and t2 in Exit
-- div,1
one ex:Exit, e:Entry | e in Track && ex in Track
-- div,1
one e: Entry, ex: Exit | e in Track and ex in Track
-- div,1
one t : Track | t = Entry
one t : Track | t = Exit
-- div,1
some t : Track | t = Entry
one t : Track | t = Exit
-- div,2
one t : Track | t = Entry
some t : Track | t = Exit
-- div,1
one t: Track | t in Entry
one t: Track | t in Exit
-- div,1
some t : Track | t = Entry
some t : Track | t = Exit
-- div,6
some x : Track | x = Entry
some x : Track | x = Exit
-- div,1
one e:Entry | one ex:Exit | e in Track and ex in Track
-- div,1
one t: Track | t in Entry and t in Track
one t: Track | t in Exit and t in Track
-- div,1
-- equiv pair end
-- equiv pair start,15
some Entry
one Exit
-- div,15
-- equiv pair end
-- equiv pair start,1
#(Entry) > 1 and #(Exit) > 1
-- div,1
-- equiv pair end
-- equiv pair start,3
one t: Track | t in Entry&Exit
-- div,1
one t:Track | t in Entry and t in Exit
-- div,2
-- equiv pair end
-- equiv pair start,2
one Entry
one Exit
Entry != Exit
-- div,1
some disj t1, t2 : Track | t1 = Entry and t2 = Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
one Entry
some Junction
one Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
some Entry and one Exit and no Entry & Exit
-- div,1
-- equiv pair end
-- equiv pair start,5
some (Entry & Junction)
some (Exit & Junction)
-- div,5
-- equiv pair end
-- equiv pair start,5
some Track.succs & Entry and some Track.succs & Exit
-- div,3
some e: Entry, f: Exit | e in Track.succs and f in Track.succs
-- div,1
some ex:Exit, e:Entry | e in Track.succs and ex in Track.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
one t: Track | some (t.succs & Exit) and some (succs.t & Entry)
-- div,1
-- equiv pair end
-- equiv pair start,1
some e: Entry, ex: Exit | e in Track.succs or ex in Track.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some t1, t2 : Track | t1 = Entry and t2 = Exit
Track = Junction
-- div,1
-- equiv pair end
-- equiv pair start,5
some t: Track | some (t.succs & Exit) and some (succs.t & Entry)
-- div,4
some e:Entry | some ex:Exit | some t:Track | e->t in succs and t->ex in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some e : Entry | some ex : Exit | all t : Track | e in t and ex in t
-- div,1
-- equiv pair end
-- equiv pair start,2
one t:Track | some e:Entry ,ex:Exit | e in t.succs and ex in t.succs
-- div,1
one t:Track | some ex:Exit, e:Entry | e in t.succs and ex in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some t: Track | some e: Entry | some x: Exit | e in t.succs && x in t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some en:Entry | some t:Track | one ex:Exit | en->t in succs and t->ex in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some t : Track | t = Entry and t = Junction
some t : Track | t = Exit and t = Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
some t : Track | t = Entry and t != Junction
some t : Track | t = Exit and t != Junction
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | some en:Entry | en->t in succs
one e:Exit | all t:Track | e->t not in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some t1 :Track| one t2: Track | t1 in Entry and t1 not in Exit and t2 in Exit and t2 not in Entry
-- div,1
-- equiv pair end
