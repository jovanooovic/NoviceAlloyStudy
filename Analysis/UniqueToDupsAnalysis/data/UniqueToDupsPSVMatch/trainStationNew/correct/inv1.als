some Entry->Exit
-- div,2
some Entry
some Exit
-- div,144
some Exit
some Entry
-- div,22
not no Entry and not no Exit
-- div,2
#Entry > 0 and #Exit >0
-- div,3
#Entry >= 1
#Exit >= 1
-- div,1
some Entry & Track
some Exit & Track
-- div,5
all x : univ | some Entry and some Exit
-- div,1
some t,x:Track| t in Entry and x in Exit
-- div,2
some a,b:Track| a in Entry and b in Exit
-- div,2
some t,a:Track| t in Entry and a in Exit
-- div,6
some t1,t2 : Track | t1 in Entry and t2 in Exit
-- div,1
some e : Entry | some s : Exit | (e+s) in Track
-- div,1
some e: Entry, f: Exit | e in Track and f in Track
-- div,3
some entry, exit: univ | entry in Entry and exit in Exit
-- div,4
some x: Entry, y : Exit | x in Track && y in Track
-- div,1
some e:Entry, ex:Exit | e in Track && ex in Track
-- div,7
some e: Exit, en: Entry | e in Track and en in Track
-- div,2
some e: Entry, ex: Exit | e in Track or ex in Track
-- div,1
some ex:Exit, e:Entry | e in Track && ex in Track
-- div,29
some ex:Exit, en:Entry | ex in Track and en in Track
-- div,3
some en:Entry, ex:Exit | en in Track and ex in Track
-- div,2
some e: univ | e in Entry
some x : univ | x in Exit
-- div,1
some x : Entry | x in Track
some x : Exit | x in Track
-- div,1
some x : Entry | some y : Exit | x in Track and y in Track
-- div,3
some e: Entry| some s: Exit| e in Track and s in Track
-- div,1
some x:Track | x in Entry
some x:Track | x in Exit
-- div,2
some e: Entry| some t: Exit| e in Track and t in Track
-- div,1
some t: Track | t in Entry and some t: Track | t in Exit
-- div,2
some t:Track|  t in Entry
some t:Track|  t in Exit
-- div,12
some y:Exit | some z:Entry | y in Track and z in Track
-- div,1
some ex : Exit | some e : Entry | ex in Track or e in Track
-- div,2
some e : Entry | some ex : Exit | e in Track and ex in Track
-- div,2
some en : Track | en in Entry
some ex : Track | ex in Exit
-- div,1
some en : Entry | some ex : Exit | en in Track and ex in Track
-- div,2
some ent : Entry | some exi : Exit | ent in Track and exi in Track
-- div,2
all e: Entry, x: Exit | some e && some x
some Entry && some Exit
-- div,1
some exit : Exit | some entry : Entry | exit in Track and entry in Track
-- div,1
some t: Track | t in Entry and t in Track
some t: Track | t in Exit and t in Track
-- div,1
