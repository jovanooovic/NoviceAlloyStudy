-- equiv pair start,1
Dangerous.workstation.workers = Robot
-- div,1
-- equiv pair end
-- equiv pair start,21
Dangerous.workstation.workers in Robot
-- div,1
(Dangerous & Component).workstation.workers in Robot
-- div,1
all d:Dangerous | (d.workstation).workers in Robot
-- div,1
all x: Dangerous | x.workstation.workers in Robot
-- div,2
all c : Component & Dangerous | c.workstation.workers in Robot
-- div,1
all c : Component | c in Dangerous implies c.workstation.workers in Robot
-- div,5
all d: Dangerous | all wc: d.workstation | wc.workers in Robot
-- div,1
all d : Dangerous, w: Worker | w in d.workstation.workers implies w in Robot
-- div,1
all c: Component | c in Dangerous => (all w: (c.workstation).workers | w in Robot)
-- div,1
all c : Component, w : Worker | c in Dangerous && w in c.workstation.workers implies w in Robot
-- div,2
all c : Component | all w : Workstation | c in Dangerous and w in c.workstation implies w.workers in Robot
-- div,2
all x:Worker|all z:Dangerous | all w:Workstation | (w in z.workstation and x in w.workers)implies x in Robot
-- div,1
all p : Dangerous | all trab : Worker | all w : Workstation| (trab in w.workers and w in p.workstation) implies trab in Robot
-- div,2
-- equiv pair end
-- equiv pair start,3
all c : Component | all x : c.workstation | no ( x.workers & Human)
-- div,1
all c: Component + Dangerous | no h: Human | some wc: c.workstation | h in wc.workers
-- div,1
all c: Component + Dangerous | no h: Human | some wc: c.^workstation | h in wc.workers
-- div,1
-- equiv pair end
-- equiv pair start,3
all c: Component & Dangerous | all x : Workstation | no (x.workers & Human)
-- div,1
all c : Component & Dangerous | all ws : Workstation | no (ws.workers & Human)
-- div,1
all x: Component, y: Worker, z: Workstation | x in Dangerous and y in z.workers implies y not in Human
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | c in Dangerous implies #c.workstation.workers-Robot = 0
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | c in Dangerous => one ws : workstation.c | no (ws.workers & Human)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Worker|all z:Dangerous | all w:Workstation | w in z.workstation implies x in Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Component, y: Worker, z: Workstation | x in Dangerous and y in z.workers implies y in Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Product | all trab : Worker | all w : Workstation| (p in Dangerous and trab in w.workers) implies trab in Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Product | all trab : Worker | all w : Workstation| (p in Dangerous and trab in w.workers) implies trab not in Human
-- div,1
-- equiv pair end
