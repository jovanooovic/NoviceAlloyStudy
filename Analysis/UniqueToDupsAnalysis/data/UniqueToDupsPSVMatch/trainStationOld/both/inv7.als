eventually all t : Train | no t.pos
-- div,1
eventually all t : Train | t.pos = Exit
-- div,1
all t : Train | always (eventually t.pos not in Entry)
-- div,1
always all t : Train | eventually t.pos != t.pos'
-- div,1
all t : Train | always (eventually t.pos not in Entry + Exit)
-- div,1
eventually all t : Train | (t.pos = Exit) implies (no t.pos')
-- div,1
all t : Train | one t.pos implies (eventually always no t.pos')
-- div,1
always all t : Train | t.pos in Entry => eventually t.pos not in Entry
-- div,1
all t:Train | some (t.pos & Entry ) implies eventually some (t.pos & Exit)
-- div,2
all t:Train | t.pos in (Entry + Exit) implies eventually t.pos not in (Entry + Exit)
-- div,1
always (all t:Train | some (t.pos & Entry ) implies eventually some (t.pos & Exit) )
-- div,2
always (all t:Train | some (t.pos & Entry ) implies  always (eventually some (t.pos & Exit) ))
-- div,1
