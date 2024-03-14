always pos
-- div,2
always Train
-- div,1
always Train.pos
-- div,1
always Train.pos.Track
-- div,1
always Train.pos = iden
-- div,1
all t: Train | always t.pos
-- div,2
all t : Train | always t.pos
-- div,1
all t : Track | always t.pos
-- div,1
always all t: Train | (before t.pos) = t.pos
-- div,1
always all t: Train | t.pos implies after t.pos
-- div,2
always all t: Train | (before t.pos) = (after t.pos)
-- div,1
always all t: Train | {let x = t.pos | t} after t.pos = x
-- div,1
always all t: Train | always t.pos implies after t' in t.pos
-- div,1
always all t: Train | {let x = t.pos | Train} after t.pos = x
-- div,1
always (all t:Train, k:Track | some t.pos :> k implies after t.pos :> k)
-- div,2
always pos = pos and (Train->Track not in pos) = (Train->Track not in pos)
-- div,1
always (all t:Train, k:Track | some t->k in pos implies after t->k in pos)
-- div,3
always all t: Train, tk: Track | t.pos.tk in pos implies after t.pos.tk in pos
-- div,1
