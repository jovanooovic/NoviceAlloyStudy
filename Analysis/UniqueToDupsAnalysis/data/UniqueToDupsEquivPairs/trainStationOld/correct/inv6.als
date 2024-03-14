-- equiv pair start,3
always (all s:Signal | (s in Green implies eventually s not in Green) and (s not in Green implies eventually s in Green))
-- div,2
always (all s:(Signal-Green)  | eventually s in Green)
always (all s:Green  | eventually s in (Signal-Green))
-- div,1
-- equiv pair end
