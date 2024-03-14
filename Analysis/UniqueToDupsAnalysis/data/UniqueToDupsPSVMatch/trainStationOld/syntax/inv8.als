always ( all t:pos.Track.(signal-Green) | t.pos=(t.pos)' until t.pos.signal in Green
-- div,1
always all t : ((Signal-Green).(~signal).(~pos)) | (t.pos' in t.pos.prox) after (t.pos.signal in Green)
-- div,2
always (all t:Train |(t.pos.signal)  in (Signal-Green) implies some t.pos.rox and (some t.pos') since  ((t.pos'.signal) in Green))
-- div,1
always (all t:Train | (some t.pos.signal and some t.pos.prox) and ( (t.pos.signal)  in (Signal-Green)  implies ((t.pos in t.pos.prox) since  (t.pos.signal in Green))
-- div,1
always (all t:Train | (some t.pos.signal and some t.pos.prox) and ( (t.pos.signal)  in (Signal-Green)  implies ((t.pos in t.pos.prox) since  (t.pos.signal in Green) ))
-- div,1
always (all t:Train | (some t.pos and  some t.pos.signal and some t.pos.prox) and ((t.pos.signal)  in (Signal-Green)  implies (some t.pos') since  eventually((t.pos.signal) in Green))
-- div,1
