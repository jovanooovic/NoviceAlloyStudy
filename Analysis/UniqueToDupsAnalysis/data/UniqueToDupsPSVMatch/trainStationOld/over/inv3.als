no Track
-- div,1
Train in Entry
-- div,1
always no pos
-- div,2
always no Track
-- div,1
always no Train
-- div,2
always Train in Entry
-- div,1
always no Train.pos
-- div,4
always (no Track.*prox)
-- div,1
no prox and no Entry and no Exit
-- div,1
all t : Train | always no t.pos
-- div,2
always( all t:Train | no t.pos)
-- div,1
always all t: Train | always t in Entry
-- div,1
always all t: Train | always t in Track
-- div,1
always all t: Train | always t' in t.pos
-- div,1
always all t: Train, tk: Track | t->tk in pos or t->tk not in pos implies always t->tk in pos
-- div,1
