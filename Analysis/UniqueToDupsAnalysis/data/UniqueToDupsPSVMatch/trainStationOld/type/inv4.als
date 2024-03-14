Train.pos in iden
-- div,1
Train.pos.~pos in iden
-- div,1
always one Train in Track
-- div,1
all t : Train | t.pos in iden
-- div,1
always one pos.Track in Track
-- div,1
always one Train.pos in Track
-- div,1
all t : Train | t.~pos in iden
-- div,2
all t : Train | t.pos.~pos in iden
-- div,1
always (Train.pos).~(Train.pos) in iden
-- div,1
always (Train.pos).(~Train.pos) in iden
-- div,1
all t : Train, p : t.pos | pos.~p in iden
-- div,1
all t: Train | always t.prox.~t.prox in iden
-- div,1
all t: Train | always (t.prox.~t.prox) in iden
-- div,1
always all t: Train | always one Train in Track
-- div,1
always all t: Train | always one Train.pos in Track
-- div,1
always all t1, t2: Train | always t1.pos & t2.pos implies t1=t2
-- div,1
always all t1, t2: Train | always (t1.pos & t2.pos implies t1=t2)
-- div,1
always all t1, t2: Train | lone tr1: Track | always no t1.pos.tr1 & t2.pos.tr2
-- div,1
always all t1, t2: Train | lone tr1: Track | always no t1.pos.tr1 & t2.pos.tr1
-- div,1
always all t1, t2: Train | lone tr1: Track | always (no t1.pos.tr1 & t2.pos.tr1)
-- div,1
always (all disj t1,t2:Train | some (t1.pos and t2.pos) implies t1.pos != t2.pos)
-- div,2
always all t1, t2: Train | lone tr1: Track | always t1.pos.tr1 & t2.pos.tr2 in none
-- div,1
always all t1, t2: Train | some tr1,tr2: Track | t1.pos.tr1 and t2.pos.tr2 implies t1=t2
-- div,1
always (all disj t1,t2:Train | some (t1.pos :> Track and t2.pos :> Track) implies t1.pos != t2.pos)
-- div,1
