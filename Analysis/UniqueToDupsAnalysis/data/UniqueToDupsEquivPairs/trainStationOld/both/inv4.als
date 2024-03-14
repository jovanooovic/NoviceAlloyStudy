-- equiv pair start,1
lone Train.pos
-- div,1
-- equiv pair end
-- equiv pair start,1
always one Train.pos
-- div,1
-- equiv pair end
-- equiv pair start,3
always lone Train.pos
-- div,2
always all t: Train | always lone Train.pos
-- div,1
-- equiv pair end
-- equiv pair start,4
always prox.~prox in iden
-- div,4
-- equiv pair end
-- equiv pair start,2
always ~prox.prox in iden
-- div,2
-- equiv pair end
-- equiv pair start,1
all t: Train | always prox.~prox in iden
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2 : Train | no (t1.pos & t2.pos)
-- div,1
-- equiv pair end
-- equiv pair start,4
all disj s1, s2 : Signal | s1.pos != s2.pos
-- div,1
all disj s1, s2 : Signal | always s1.pos != s2.pos
-- div,1
all disj s1, s2 : Signal-Entry | always s1.pos != s2.pos
-- div,1
all disj s1, s2 : (Signal-(Entry+Exit)) | always s1.pos != s2.pos
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1, t2 : Train | always t1.pos' != t2.pos
-- div,1
-- equiv pair end
-- equiv pair start,1
always all t1, t2: Train | always lone tr1: Track | always (no t1.pos & t2.pos)
-- div,1
-- equiv pair end
-- equiv pair start,2
always all t1, t2: Train | some tr1: Track | t1.pos in tr1 and t2.pos in tr1 implies t1=t2
-- div,1
always all t1, t2: Train | some tr1,tr2: Track | t1.pos in tr1 and t2.pos in tr1 implies t1=t2
-- div,1
-- equiv pair end
-- equiv pair start,1
always all t1, t2: Train | lone tr1: Track | always (t1.pos in tr1 and t2.pos in tr1 implies t1=t2)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all t1, t2: Train | some tr1: Track | always (t1.pos in tr1 and t2.pos in tr1 implies t1=t2)
-- div,1
-- equiv pair end
