always(
-- div,1
always()
-- div,1
always ()
-- div,2
no releases pos
-- div,1
no releases always pos
-- div,1
always pos = after pos
-- div,2
always (t.pos)' = t.pos
-- div,1
always pos in after pos
-- div,1
always (pos = after pos)
-- div,1
False releases always pos
-- div,1
false releases always pos
-- div,1
always Entry in Trains.pos
-- div,1
always t : Track | lone pos.t
-- div,1
all t: Train | always t.pos = x
-- div,1
all t : Train | always lone f.pos
-- div,1
all t : Train | allways pos' = pos
-- div,1
always (t : Train | t.pos = t.pos')
-- div,1
always pos = pos and no pos in no pos
-- div,1
all t : train | always t.pos' = t.pos
-- div,1
always all t: Train | t.pos = after t.pos
-- div,1
all t: Train | always t.pos = after t.pos
-- div,1
always all t: Train | after t.pois = t.pos
-- div,1
always all t: Train | always t in one Track
-- div,1
always all t : Train | t.pos in after t.pos
-- div,1
always all t : Train | (t.pos = after t.pos)
-- div,2
always all t : Train | (t.pos in after t.pos)
-- div,1
always all t: Train | always t.pos = after t.pos
-- div,1
always all t: Train | {let x = t.pos} after t.pos = x
-- div,1
always all t : Train | always before t.pos = after t.pos
-- div,1
always all t : Train | always before t.pos /\ after t.pos
-- div,1
always ~pos.pos in iden and always all t : Train | lone t.pos
-- div,1
all t: Train tt: Track | t->tt in pos implies always t->tt in pos
-- div,1
always Train.pos in one Track implies after Train.pos in one Track
-- div,1
always all t: Train | always t in one t.pos implies after t in t.pos
-- div,1
trains = {all t: Train | t.pos}
always all tt: Train | trains = tt.pos
-- div,1
always Train.pos in one Track implies always after Train.pos in one Track
-- div,1
always (all t:Trains, k:Tracks | some t.pos :> k implies after t.pos :> k)
-- div,1
always trains = {all t: Train | t.pos}
always all tt: Train | trains = tt.pos
-- div,1
always( all t:Train, some tk:Track | t->tk in pos implies after t->tk in pos)
-- div,1
always trains = {all t: Train | t}
always all tt: Train, t: trains | t.pos = tt.pos
-- div,1
all (Train->Track in pos implies always Train->Track in pos) and (no Train->Track & pos implies always no Train->Track & pos)
-- div,2
all (Train->Track in pos implies always Train->Track in pos) and (no (Train->Track) & pos implies always no (Train->Track) & pos)
-- div,1
