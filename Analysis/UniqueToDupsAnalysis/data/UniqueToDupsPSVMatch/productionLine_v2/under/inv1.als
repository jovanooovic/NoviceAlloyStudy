no Human & Robot
-- div,2
Human + Robot in Worker
-- div,1
Workstation.workers in Human+Robot
-- div,2
not some w:Worker | not w in Human + Worker
-- div,1
all w: Worker | w in Human => w not in Robot
-- div,5
all x : Worker | no x & Human or no x & Robot
-- div,1
all h:Human,r:Robot |  h in Worker or r in Worker
-- div,2
all h:Human,r:Robot |  h in Worker and r in Worker
-- div,4
all h : Human, r : Robot | h in Worker and h in Worker
-- div,1
all w:Worker | w in Workstation.workers implies w in Human or w in Robot
-- div,1
all w:Worker,wr:Workstation | w in wr.workers implies w in Human or w in Robot
-- div,1
all ws : Workstation, w : Worker |w in ws.workers implies w in Robot or w in Human
-- div,1
all ws : Workstation, w : Worker | w in ws.workers implies (w in Robot or w in Human)
-- div,1
all ws: Workstation, w: Worker | ws->w in workers implies (w in Human or w in Robot)
-- div,1
all w: Workstation, w1: Worker | w->w1 in workers implies(w1 in Human or w1 in Robot)
-- div,3
all w: Workstation, work: Worker | work in w.workers implies work in Human or work in Robot
-- div,1
all w : Worker | w in Human implies w not in Robot
all w : Worker | w in Robot implies w not in Human
-- div,1
