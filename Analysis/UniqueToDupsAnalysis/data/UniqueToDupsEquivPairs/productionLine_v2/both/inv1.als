-- equiv pair start,1
Human in Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
no (Human + Robot)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | w.workers != w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation, w1: Worker | w->w1 in workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Worker, h: Human, r: Robot | w = h or w = r
-- div,1
-- equiv pair end
-- equiv pair start,2
Workstation.workers in Human || Workstation.workers in Robot
-- div,1
Workstation.workers & Human = Workstation.workers || Workstation.workers & Robot = Workstation.workers
-- div,1
-- equiv pair end
-- equiv pair start,3
all w1,w2: Worker | w1 != w2 => (w1 in Human and w2 in Robot)
-- div,3
-- equiv pair end
-- equiv pair start,1
all w : Workstation | Human in w.workers or Robot in w.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Workstation | w.workers in Human || w.workers in Robot
-- div,2
-- equiv pair end
-- equiv pair start,1
no (Workstation.workers & Human) and no (Workstation.workers & Robot)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws: Workstation | some w: Worker | ws->w in workers implies (w in Human or w in Robot)
-- div,1
-- equiv pair end
