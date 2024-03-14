-- equiv pair start,40
all s:Signal |eventually s in Green
-- div,37
all t : Track | eventually t.signal in Green
-- div,1
all s : Signal - Green | eventually s in Green
-- div,1
eventually (all s:Signal | eventually s in Green)
-- div,1
-- equiv pair end
