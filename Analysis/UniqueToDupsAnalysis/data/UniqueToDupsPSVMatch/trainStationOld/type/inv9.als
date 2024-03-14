always (no t:Train | eventually no t.pos in Track-Entry)
-- div,1
always (no t:Train | eventually no (t.pos in Track-Entry))
-- div,1
always ( all t:Train | (no t.pos) until (t.pos :> Entry) )
-- div,1
all t:Train | some tk:Entry | (no t->tk in pos) implies eventually (t->tk in pos and before no t.pos)
-- div,1
