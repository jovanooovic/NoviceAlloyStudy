all t : Train | eventually no t.pos
-- div,2
all t : Train | eventually t.pos in Exit
-- div,1
all t : Train | eventually t.pos in Entry
-- div,1
always (all t:pos.Train | eventually no t.pos)
-- div,1
all t : Train | (some t.pos) implies (eventually no t.pos')
-- div,1
always (all t :Train|t in Entry implies  eventually  t.pos in Exit)
-- div,1
always (all t :Train|t.pos in Entry implies  eventually  t.pos in Exit)
-- div,1
always (all t:Train | always some (t.pos & Entry ) implies eventually some (t.pos & Exit) )
-- div,1
all t:Train | some t.pos :> (Entry+Exit) implies eventually no t.pos :> (Entry+Exit)
-- div,1
always ( all t:Train | some t.pos :> (Entry+Exit) implies eventually no t.pos :> (Entry+Exit) )
-- div,1
