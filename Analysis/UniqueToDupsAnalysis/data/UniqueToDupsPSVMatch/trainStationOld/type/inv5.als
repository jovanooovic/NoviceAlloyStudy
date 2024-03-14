all t : Train | no (t.pos & Exit) implies (t.pos' & t.pos.prox)
-- div,1
always all t : Train | t.pos' in t.pos.prox or Exit t.pos.next in t.pos' in Exit
-- div,1
all t : Train | some (t.pos & Exit) implies  Train' = (Train - t) else( t.pos' & t.pos.prox)
-- div,1
all t : Train | some (t.pos & Exit) implies  Train' = (Train - t)  else( t.pos' & t.pos.prox)
-- div,1
all t : Train | some (t.pos & Exit) implies  (Train' = (Train - t) and no t.pos')  else( t.pos' & t.pos.prox)
-- div,1
always(
all t:Train {
some (t.pos & Exit) => no t.pos'
some (t.pos && (Track-Exit)) => some tk2: t.pos | t.pos' = tk2
}
)
-- div,1
