always( one pos => one Train.pos:>Exit )
-- div,1
always (some t:Train | historically no Train.pos and eventually(t.pos in Exit and historically no Exit))
-- div,1
always (some t:Train | before historically no Train.pos and eventually(t.pos in Exit and historically no Exit))
-- div,1
always (some t:Train | historically lone (Train.pos + t) and eventually (t.pos in Exit and historically lone (pos.Exit + t)))
-- div,1
always (some t:Train | once (t.pos in Entry and historically no Entry) and eventually(t.pos in Exit and historically no Exit))
-- div,1
