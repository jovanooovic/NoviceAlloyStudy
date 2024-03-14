-- equiv pair start,46
no Train.prox
-- div,1
always pos = pos
-- div,1
always ^pos = pos
-- div,1
always prox' = prox
-- div,2
always prox = prox'
-- div,1
always no Train & Track
-- div,1
always ~pos.pos in iden
-- div,3
all t : Train | lone t.pos
-- div,1
always after ~pos.pos in iden
-- div,1
always( all t:Train | no pos.t)
-- div,1
always all t: Train | t not in Track
-- div,2
always all t : Train | lone t.pos
-- div,1
all t : Track | always lone t.pos
-- div,1
always( no t:Track | t in t.prox)
-- div,1
always all t : Track | lone t.pos
-- div,1
all t : Train | always lone t.pos
-- div,1
always all t: Train | always t not in Track
-- div,1
always all t : Train | always lone t.pos
-- div,1
always all t : Track | always lone t.pos
-- div,1
always all t: Train | after t.pos = t.pos
-- div,1
always( no t:Track | t in t.prox or t in prox.t)
-- div,1
always all t: Train | always after t.pos = t.pos
-- div,1
always all t : Train, pos : t.pos | always lone pos
-- div,2
always (Train->Track - pos) + pos = (Train->Track - pos) + pos
-- div,2
always all t: Train | t in t.pos implies after t in t.pos
-- div,1
all t,tt:Track | t->tt in prox implies always t->tt in prox
-- div,1
always all t: Train | always t in t.pos implies after t in t.pos
-- div,1
always ~pos.pos in iden and (always all t : Train | lone t.pos)
-- div,1
always pos = pos and (Train.pos not in Track implies always Train.pos not in Track)
-- div,1
always ~pos.pos in iden and (always all t : Train | always lone t.pos)
-- div,1
always pos = pos and (all t : Train | t.pos not in Track implies always t.pos not in Track)
-- div,1
always pos = pos and (all t : (Train - pos.Track) | t.pos not in Track implies always t.pos not in Track)
-- div,1
always all t: Train, tk: Track | t->tk in pos and t->tk not in pos implies always t->tk in pos
-- div,1
always pos = pos and (always all t : (Train - pos.Track) | t.pos not in Track implies always t.pos not in Track)
-- div,1
Train->Track in pos implies always Train->Track in pos and Train->Track not in pos implies always Train->Track not in pos
-- div,1
always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos or t->tk not in pos implies always t->tk not in pos
-- div,2
always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos and t->tk not in pos implies always t->tk not in pos
-- div,3
-- equiv pair end
-- equiv pair start,15
always pos in pos'
-- div,1
always(all t : Train , p : t.pos | always (t.pos = p))
-- div,1
always( all t:Train | some t.pos implies t.pos' = t.pos)
-- div,1
always (all t:Train, k:Track | t.pos = k implies after t.pos = k)
-- div,1
always all t: Train, tk: Track | t->tk in pos implies after t->tk in pos
-- div,1
always all t: Train, tk: Track | t->tk in pos implies always t->tk in pos
-- div,8
always all t: Train, tt: Track | t->tt in pos implies always t->tt in pos
-- div,1
always all t: Train, tk: Track | one t.pos and t->tk in pos implies always t->tk in pos
-- div,1
-- equiv pair end
-- equiv pair start,3
Train.pos' =Train.pos
-- div,3
-- equiv pair end
-- equiv pair start,4
all t:Train | t.pos'=t.pos
-- div,2
all t : Train | t.pos = t.pos'
-- div,2
-- equiv pair end
-- equiv pair start,5
always Train.pos' =Train.pos
-- div,4
always (Train.pos)' = Train.pos
-- div,1
-- equiv pair end
-- equiv pair start,4
all t : Train , p : t.pos | always (t.pos = p)
-- div,1
all t:Train,tr:Track| tr in t.pos implies always tr in t.pos
-- div,1
all t: Train, tk: Track | t->tk in pos implies always t->tk in pos
-- div,1
all t: Train, tt: Track | t->tt in pos implies always t->tt in pos
-- div,1
-- equiv pair end
-- equiv pair start,1
always( all t:Train | some t.pos implies after t.pos' = t.pos)
-- div,1
-- equiv pair end
-- equiv pair start,1
always(Train->Track in pos implies always Train->Track in pos)
-- div,1
-- equiv pair end
-- equiv pair start,1
(Train->Track in pos implies always Train->Track in pos) and (no Train->Track & pos implies always no Train->Track & pos)
-- div,1
-- equiv pair end
-- equiv pair start,3
(Train->Track in pos implies always Train->Track in pos) and (Train->Track not in pos implies always Train->Track not in pos)
-- div,1
always (Train->Track in pos implies always Train->Track in pos) and (Train->Track not in pos implies always Train->Track not in pos)
-- div,1
always ((Train->Track in pos implies always Train->Track in pos) and (Train->Track not in pos implies always Train->Track not in pos))
-- div,1
-- equiv pair end
