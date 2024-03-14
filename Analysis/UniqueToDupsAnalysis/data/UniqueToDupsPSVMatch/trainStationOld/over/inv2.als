eventually Signal = Green
-- div,5
eventually Green = Signal
-- div,3
eventually Signal in Green
-- div,5
eventually no(Signal-Green)
-- div,2
always(eventually Green = Signal)
-- div,1
always(eventually Signal = Green)
-- div,1
eventually Signal in (Signal&Green)
-- div,2
eventually historically Green = Signal
-- div,2
eventually historically Signal in Green
-- div,1
historically eventually Signal in Green
-- div,1
all g : Signal | eventually g = Green
-- div,1
all s : Signal | eventually s=Green
-- div,1
eventually all s:Signal | s in Green
-- div,10
eventually(all t:Track | t.signal = Green)
-- div,1
all g : Track.signal | eventually g = Green
-- div,1
all g : Signal |always( eventually g = Green )
-- div,1
always all s: Signal | eventually s = Green
-- div,2
always ( all g : Signal | eventually g=Green)
-- div,1
always all s: Signal | eventually s in Green
-- div,6
always eventually all s: Signal | s in Green
-- div,1
always all s: Signal | eventually Signal = Green
-- div,1
always ( all s : Track.signal | eventually s=Green)
-- div,1
always(all t:Track | eventually t.signal = Green)
-- div,1
always all s: Signal | eventually always s in Green
-- div,1
eventually(all t:Track | eventually t.signal = Green)
-- div,1
all g : Track.signal | no (g & Green) implies eventually g = Green
-- div,1
