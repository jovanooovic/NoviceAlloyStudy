no pos
-- div,1
no prox
-- div,2
no Train.pos
-- div,2
no Track.prox
-- div,1
one Train.pos
-- div,1
always no prox
-- div,2
always no Green
-- div,1
no Train.pos.prox
-- div,1
no prox.Track.prox
-- div,1
always(no Track.prox)
-- div,2
always (no Track.^prox)
-- div,1
always Entry = Train.pos
-- div,1
always Exit in Train.pos
-- div,1
always Train.pos in Entry
-- div,1
always pos.~pos in iden
-- div,1
always Entry in Train.pos
-- div,1
always (no Train.pos.prox)
-- div,1
always Entry + Exit in Train.pos
-- div,2
always Entry & Exit in Train.pos
-- div,1
always( all t:Train | one t.pos)
-- div,2
always all t : Track | lone pos.t
-- div,1
always (no Track.prox and no prox.Track)
-- div,1
all t : Train | always t.pos in Entry
-- div,2
all t : Train , x : t.pos | no x.prox
-- div,1
always all t : Train | always one t.pos
-- div,1
no Entry.prox and no Exit.prox and no Track.prox
-- div,1
all t : Train | always no Green & t.pos.signal
-- div,1
all t : Train | always t.pos in Entry or t.pos in Exit
-- div,1
always all t: Train | always one t.pos implies after t in t.pos
-- div,1
all t : Train | always t.pos in Entry or always t.pos in Exit
-- div,1
always all t: Train | always one t.pos implies after t' in t.pos
-- div,1
always all t: Train | some tr: Track | t in tr implies t' in tr
-- div,1
always all t: Train | one tr: Track | t in pos.tr implies t' in pos.tr
-- div,1
always all t: Train | some tr: Track | t in pos.tr implies t' in pos.tr
-- div,1
always all t: Train |one tr: Track | t.pos in tr implies after t.pos in tr
-- div,1
always( all t:Train | some tk:Track | t->tk in pos implies after t->tk in pos)
-- div,1
always all t: Train | one tr: Track | always (t in pos.tr implies t' in pos.tr)
-- div,1
always all t: Train | one tr: Track | always t in pos.tr implies t' in pos.tr
-- div,1
always all t: Train | always one tr: Track | always (t in pos.tr implies t' in pos.tr)
-- div,1
