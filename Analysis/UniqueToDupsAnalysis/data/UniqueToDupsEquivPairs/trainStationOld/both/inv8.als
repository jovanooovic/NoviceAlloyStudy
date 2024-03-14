-- equiv pair start,1
all t:Train | some t.pos.signal and t.pos.signal in Green implies t.pos' = t.pos
-- div,1
-- equiv pair end
-- equiv pair start,1
always ( all t:Train | some t.pos.signal and t.pos.signal in Green implies t.pos' = t.pos )
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') and  ((t.pos.signal) in Green)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') implies  ((t.pos.signal) in Green)
-- div,1
-- equiv pair end
-- equiv pair start,1
always ( all t:Train | some t.pos.prox.signal implies (t.pos.prox.signal in Green) releases (t.pos' = t.pos) )
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') since  ((t.pos.signal) in Green))
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') since  ((t.pos'.signal) in Green))
-- div,1
-- equiv pair end
-- equiv pair start,1
always ( all t:Train | some s:Signal | (some (t.prox).signal :> s) and (s not in Green) implies t.pos' = t.pos)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') implies  ((t.pos'.signal) in Green))
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Train |(t.pos.signal)  in (Signal-Green) implies some t.pos.prox and (some t.pos') since  ((t.pos'.signal) in Green))
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Train |some t.pos and (t.pos.signal)  in (Signal-Green) implies some t.pos.prox and (some t.pos') since  ((t.pos'.signal) in Green))
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Train | (some t.pos.prox) and ( (t.pos.signal)  in (Signal-Green)  implies before ((t.pos in t.pos.prox) since  (t.pos.signal in Green) )))
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Train | (some t.pos.signal and some t.pos.prox) and ((t.pos.signal)  in (Signal-Green)  implies eventually (some t.pos) since  ((t.pos.signal) in Green)))
-- div,1
-- equiv pair end
-- equiv pair start,2
always (all t:Train |(some t.pos and  some t.pos.signal and some t.pos.prox) and (t.pos.signal)  in (Signal-Green) implies(some t.pos') since  ((t.pos'.signal) in Green))
-- div,2
-- equiv pair end
-- equiv pair start,1
always (all t:Train |(some t.pos and  some t.pos.signal) and (t.pos.signal)  in (Signal-Green) implies some t.pos.prox and (some t.pos') since  ((t.pos'.signal) in Green))
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all t:Train | (some t.pos and  some t.pos.signal and some t.pos.prox) and ((t.pos.signal)  in (Signal-Green)  implies (some t.pos') since  eventually ((t.pos.signal) in Green)))
-- div,1
-- equiv pair end
