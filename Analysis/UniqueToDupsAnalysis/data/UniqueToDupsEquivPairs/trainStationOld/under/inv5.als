-- equiv pair start,14
all t: Train | after t.pos in t.pos + t.pos.prox
-- div,1
all t:Train| {
always (t.pos in Exit  implies no t.pos.prox')

}
-- div,1
always all t : Train | (t.pos).prox = Exit releases t.pos.prox in Track
-- div,1
always all t: Train | t.prox not in Exit implies t.pos' in t.pos + t.pos.prox
-- div,1
always all t : Train | t.pos' in t.pos.prox or Exit in t.pos.next => t.pos' in Exit
-- div,1
always all t : Train | t.pos' in t.pos.prox or some Exit & t.pos.next => t.pos' in Exit
-- div,1
always (all t:Train|(one t.pos:> Exit => no t.pos)  or (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox  ) )
-- div,1
always (all t:Train|(one t.pos:> Exit => no t.pos')  or (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox  ) )
-- div,4
always (all t:Train|(one t.pos:> Exit => no t.pos')  or (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox  ) or pos'=pos )
-- div,1
always (all t:Train|(one t.pos:> Exit => no t.pos')
or (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox  )
or  no t.pos.prox  => (no t.pos' or t.pos=t.pos')   )
-- div,2
-- equiv pair end
-- equiv pair start,3
always all t: Train | t.pos not in Exit implies t.pos' in t.pos + t.pos.prox
-- div,1
always (all t:pos.Track | (t.pos)' in t.pos + t.pos.prox or t.pos in Exit)
-- div,1
always (all t:Train|(one t.pos:> Exit and  some t.pos.prox  => no t.pos'))
always (all t:Train| (one t.pos and some t.pos.prox ) => (t.pos' in t.pos.prox or t.pos'=t.pos) )
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:pos.Track | (t.pos)' in t.pos + t.pos.prox or (t.pos in Exit and (t.pos)' in t.pos))
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Train|(one t.pos:> Exit  => no t.pos')) or
always (all t:Train| (one t.pos and some t.pos.prox ) => (t.pos' in t.pos.prox or t.pos'=t.pos) )
-- div,1
-- equiv pair end
