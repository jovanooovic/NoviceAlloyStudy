-- equiv pair start,1
all t : Train | t.pos' != t.pos
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Train | t.pos' in t.pos.prox
-- div,1
-- equiv pair end
-- equiv pair start,2
always all t : Train | t.pos' in t.pos.next
-- div,2
-- equiv pair end
-- equiv pair start,11
always all t : Train | t.pos' in t.pos.prox
-- div,3
all t:Train| {
always (t.pos in Exit  implies no t.pos')
always (t.pos in Track  implies  t.pos' in t.pos.prox)
}
-- div,2
all t:Train| {
always (t.pos in Exit  implies no t.pos')
always (t.pos in Track-Exit  implies  t.pos' in t.pos.prox)
}
-- div,3
all t:Train| {
always (t.pos in Exit  implies eventually no t.pos')
always (t.pos in Track  implies  t.pos' in t.pos.prox)
}
-- div,1
always  all t:Train| {
always (t.pos in Exit  implies no t.pos')
always (t.pos in Track-Exit  implies  t.pos' in t.pos.prox)
}
-- div,1
always (all t:Train|(one t.pos:> Exit => no t.pos'))
always (all t:Train| (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox ) )
always (all t:Train| no t.pos.prox  => (no t.pos' or t.pos'=t.pos) )
-- div,1
-- equiv pair end
-- equiv pair start,5
always all t : Train, p : t.pos | t.pos' in p.prox
-- div,1
always all t : Train, p : t.pos | (t.pos)' in p.prox
-- div,2
always (all t:Train|(one t.pos:> Exit => no t.pos'))
always (all t:Train| (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox ) )
always (all t:Train| (no t.pos.prox and one t.pos:> Track-Exit) => (no t.pos' or t.pos'=t.pos) )
-- div,2
-- equiv pair end
-- equiv pair start,2
always all t: Train | t.pos' in t.pos + t.pos.prox
-- div,1
always all t: Train | t not in Exit implies t.pos' in t.pos + t.pos.prox
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Train.pos | some (t & Exit) implies  no t'
-- div,1
all t : Train | some (t.pos & Exit) implies  Train' = Train - t
-- div,1
-- equiv pair end
-- equiv pair start,8
all t:Train |{
always (t.pos in Exit implies no t.pos')

}
-- div,7
all t:Train |{
always (t.pos in Exit implies   t.pos'=none)

}
-- div,1
-- equiv pair end
-- equiv pair start,3
always all t : Train | t.pos' in t.pos.prox or t.pos in Exit
-- div,2
always (all t:Train|(one t.pos:> Exit and  some t.pos.prox  => no t.pos'))
always (all t:Train| (one t.pos and some t.pos.prox  => t.pos' in t.pos.prox ) )
-- div,1
-- equiv pair end
-- equiv pair start,1
always all t : Train | t.pos' in t.pos.prox || t.pos' = Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Train | t.pos' != t.pos implies t.pos' in t.pos.prox
-- div,1
-- equiv pair end
-- equiv pair start,2
always all t : Train | t.pos' in t.pos.prox or t.pos' in Exit
-- div,2
-- equiv pair end
-- equiv pair start,1
all t:Train | t.pos in Entry implies after t.pos in t.pos.prox
-- div,1
-- equiv pair end
-- equiv pair start,5
all t:Train |{
always (t.pos in Exit implies  t.pos'= t.pos)

}
-- div,5
-- equiv pair end
-- equiv pair start,1
all t : Train | no (t.pos & Exit) implies (t.pos' in t.pos.prox)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Train {
some (t.pos & Exit) => t.pos' = (t.pos) - (t.pos)

}
-- div,1
-- equiv pair end
-- equiv pair start,2
always all t : Train, p : t.pos | (t.pos)' in p.prox || Exit = p.prox
-- div,2
-- equiv pair end
-- equiv pair start,1
always all t : Train, p : t.pos | (t.pos)' in p.prox || Exit in p.prox
-- div,1
-- equiv pair end
-- equiv pair start,3
always all t: Train | no t.pos & Exit implies t.pos' in t.pos + t.pos.prox
-- div,3
-- equiv pair end
-- equiv pair start,1
always all t : Train | t.pos' in t.pos.prox or t.pos in Exit => t.pos' in Exit
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Train {
((t.pos = Exit) implies (no t.pos'))
or
(t.pos' in t.pos.prox)
}
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Train | t.pos' != t.pos and no (t.pos & Exit) implies (t.pos' in t.pos.prox)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all t: Train | (t'.pos in t.prox) or (t.pos in Exit implies Train' = Train -t)
-- div,1
-- equiv pair end
-- equiv pair start,4
always all t : Train {
((t.pos = Exit) implies (no t.pos'))
or
(t.pos' in t.pos.prox)
}
-- div,2
always all t : Train {
(t.pos = Exit) implies no t.pos'
or
(one t.pos) implies (t.pos' in t.pos.prox)
}
-- div,2
-- equiv pair end
-- equiv pair start,1
always all t : Train | some t1 : Track | t.pos = t1 implies after t.pos in (t1.prox + t1)
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Train | no (t.pos & Exit) implies (t.pos' in t.pos.prox) else (Train' = Train - t)
-- div,1
all t : Train | some (t.pos & Exit) implies  Train' = (Train - t) else( t.pos' in t.pos.prox)
-- div,1
-- equiv pair end
-- equiv pair start,2
always (all t:Train|(one t.pos:> Exit => no t.pos)  or (one t.pos  => t.pos' in t.pos.prox  ) )
-- div,1
always (all t:Train|(one t.pos:> Exit => no t.pos')  or (one t.pos  => t.pos' in t.pos.prox  ) )
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Train {
t.pos in Exit => no t.pos'
t.pos not in Exit => {
one tk:((t.pos).prox) | t.pos' = tk
}
}
-- div,1
all t:Train {
t.pos in Exit => no t.pos'
t.pos not in Exit => some tk : ((t.pos).prox) | t.pos' = tk
}
-- div,1
-- equiv pair end
-- equiv pair start,7
always (all t:Train |t.pos in Entry  implies  (t.pos'= t.pos.prox)   or  t.pos in Exit implies no t.pos')
-- div,1
always (all t:Train |t.pos in Entry  implies  (t.pos'in  (t.pos.prox) ) or  t.pos in Exit implies no t.pos')
-- div,1
always (all t:Train |t.pos in Entry  implies  (t.pos'in  t.pos.^prox)   or  t.pos in Exit implies no t.pos')
-- div,5
-- equiv pair end
-- equiv pair start,2
always(
all t:Train {
t.pos in Exit => no t.pos'
t.pos in Entry => some tk2: (t.pos).prox | t.pos' = tk2
}
)
-- div,1
always(
all t:Train {
t.pos in Exit => no t.pos'
t.pos in Entry => some tk2: (t.pos).prox | t.pos' = tk2
no t.pos => t.pos' = t.pos
}
)
-- div,1
-- equiv pair end
-- equiv pair start,3
all t:Train {
t.pos in Exit => no t.pos'
t.pos in (Track - Exit) => {
one tk:((t.pos).prox) | t.pos' = tk
}
}
-- div,1
all t:Train {
t.pos in Exit => t.pos' = t.pos - t.pos
t.pos in (Track - Exit) => {
one tk:((t.pos).prox) | t.pos' = tk
}
}
-- div,1
all t:Train {
some tk:t.pos {
(tk in Exit) => t.pos' = t.pos - tk
(tk not in Exit) => some tk2: tk.prox | t.pos' = tk2
}
}
-- div,1
-- equiv pair end
-- equiv pair start,3
all t:Train| {
always (t.pos in Exit  implies no t.pos')
always (t.pos in Entry  implies  t.pos' in t.pos.prox)
}
-- div,3
-- equiv pair end
-- equiv pair start,1
always (all t:Train |t.pos in Entry  implies  (t.pos'in  (t.pos.^prox) ) or  t.pos.prox in Exit implies no t.pos')
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Train {
t.pos in Exit => Train' = Train - t
t.pos in (Track - Exit) => {
one tk:((t.pos).prox) | t.pos' = tk
}
}
-- div,1
-- equiv pair end
-- equiv pair start,2
always(
all t:Train{
no t.pos :> Exit => eventually(t.pos in t.pos.prox)
some t.pos :> Exit => eventually(no t.pos)
}
)
-- div,1
always( all t:Train | some t.pos :> Exit implies eventually (no t.pos) )
always( all t:Train | some t.pos :> (Track-Exit) implies eventually (t.pos in t.pos.prox) )
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Train |{
always (t.pos in Exit implies  t.pos'= t.pos)
always (t.pos in Entry  implies  (t.pos'in  (t.pos.prox) ))
}
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Train| {
always (t.pos in Exit  implies no t.pos')
always (t.pos in Entry  implies eventually t.pos' in t.pos.prox)
}
-- div,2
-- equiv pair end
-- equiv pair start,1
all t:Train| {
always (t.pos in Exit  implies no t.pos.prox')
always (t.pos in Track-Exit  implies  t.pos' in t.pos.prox'  )
}
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Train{
always( t.pos in Exit implies eventually no t.pos)
always( t.pos in Entry implies eventually t.pos in t.pos.prox)
}
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Train| {
always (t.pos in Exit  implies eventually no t.pos)
always (t.pos in (Track-Exit)  implies  t.pos' in t.pos.prox)
}
-- div,1
all t:Train| {
always (t.pos in Exit  implies eventually no t.pos')
always (t.pos in (Track-Exit)  implies  t.pos' in t.pos.prox)
}
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Train {
some t.pos =>{
t.pos in Exit => t.pos' = t.pos - t.pos
t.pos in (Track - Exit) => {
one tk:((t.pos).prox) | t.pos' = tk
}
}
}
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Train | t.pos' != t.pos and no (t.pos & Exit) implies (t.pos' in t.pos.prox)
all t : Train | t.pos' != t.pos implies Train' = Train - t
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Train|(one t.pos:> Exit  => no t.pos'))
always (all t:Train| (one t.pos and some t.pos.prox ) => (t.pos' in t.pos.prox or t.pos'=t.pos) )
-- div,1
-- equiv pair end
