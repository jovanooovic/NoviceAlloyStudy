no Human&Robot
-- div,8
lone (Human & Robot)
-- div,1
all w:Worker| no Human&Robot
-- div,2
all h: Human, r: Robot | #(h & r) = 0
-- div,1
all w: Worker | w in Human => w not in Robot
-- div,2
all w : Worker | w not in Human or w not in Robot
-- div,1
all w : Workstation | (w.workers in Robot ) implies no (w.workers & Human)
-- div,1
all w : Worker | w in Human implies w not in Robot and w in Robot implies w not in Human
-- div,1
all w : Workstation | (w.workers in Robot ) and (some w.workers) implies (no w.workers & Human)
-- div,1
all w: Worker | w in Human => w not in Robot
all w: Worker | w in Robot => w not in Human
-- div,1
