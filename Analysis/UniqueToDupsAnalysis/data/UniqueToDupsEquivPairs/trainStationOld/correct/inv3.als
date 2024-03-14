-- equiv pair start,37
always pos = pos'
-- div,5
always pos' = pos
-- div,9
always all t:Train | t.pos = t.pos'
-- div,3
all t : Train | always t.pos = t.pos'
-- div,2
always (all t:Train | (t.pos)'=t.pos)
-- div,2
always all t:Train | t.pos'=t.pos
-- div,6
all t:Train | always t.pos'=t.pos
-- div,4
always(all t : Train  | always (t.pos' = t.pos))
-- div,1
all t: Train, tk: Track | (t->tk in pos implies always t->tk in pos) and (t->tk not in pos implies always t->tk not in pos)
-- div,3
always all t: Train, tk: Track | (t->tk in pos implies always t->tk in pos) and (t->tk not in pos implies always t->tk not in pos)
-- div,2
-- equiv pair end
