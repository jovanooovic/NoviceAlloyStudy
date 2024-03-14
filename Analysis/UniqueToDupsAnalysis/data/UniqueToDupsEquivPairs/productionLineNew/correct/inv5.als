-- equiv pair start,75
no workers.Human & workers.Robot
-- div,5
all h : Human, r : Robot | no (workers.h & workers.r)
-- div,1
all x:Human, y:Robot | no workers.x & workers.y
-- div,5
all c:Workstation | no (c.workers & Human) or no (c.workers & Robot)
-- div,1
all w: Workstation | no(w.workers & Human) or no(w.workers & Robot)
-- div,3
all w : Workstation  | no w.workers & Robot or no w.workers & Human
-- div,22
all w : Workstation | (some Human & w.workers) implies (no Robot & w.workers)
-- div,1
all ws: Workstation | no (ws.workers & Robot) or no (ws.workers & Human)
-- div,3
all ws : Workstation | (ws.workers & Human) = none or (ws.workers & Robot) = none
-- div,1
all w:Workstation,r:Robot,h:Human| r not in w.workers or h not in w.workers
-- div,1
all  wt : Workstation | (wt.workers in Worker - Human) or (wt.workers in Worker - Robot)
-- div,2
all w:Workstation, wo:Worker | no (w.workers & Human) or no (w.workers & Robot)
-- div,1
all h: Human, r:Robot, ws: Workstation | h in ws.workers => r not in ws.workers
-- div,2
all ws:Workstation, h:Human,r:Robot| h in ws.workers implies r not in ws.workers
-- div,4
all ws: Workstation, r: Robot, h: Human | h in ws.workers => r not in ws.workers
-- div,1
all w: Workstation | no w.workers or (no w.workers & Robot) or (no w.workers & Human)
-- div,1
all ws:Workstation, h:Human, r:Robot | not (h in ws.workers and r in ws.workers)
-- div,1
all ws : Workstation | all h : Human, r : Robot | h in ws.workers => r not in ws.workers
-- div,1
all w: Workstation| all h: Human| all r: Robot| h in w.workers => r not in w.workers
-- div,1
all h : Human | all r : Robot | all ws : Workstation | (r in ws.workers) implies (not(h in ws.workers))
-- div,1
all x:Workstation|all y,w:Worker | y in Robot and y in x.workers and w in Human implies w not in x.workers
-- div,2
all x, y: Worker,  z,w: Workstation | x in Robot and y in Human and x in z.workers and y in w.workers implies z != w
-- div,3
all x, y: Worker, z, w: Workstation | x in Human and y in Robot and x in z.workers and y in w.workers implies z != w
-- div,1
all x1,x2 : Worker | all y : Workstation | x1 in Human and x2 in Robot and x1 in y.workers implies x2 not in y.workers
-- div,1
all ws: Workstation | all w1,w2:Worker | w1 in ws.workers and w2 in ws.workers and w1 in Human implies w2 not in Robot
-- div,1
all x, y: Worker | all z,w: Workstation | x in Robot and y in Human and x in z.workers and y in w.workers implies z != w
-- div,1
all h:Human, r:Robot, wk1:Workstation, wk2:Workstation | h in wk1.workers and r in wk2.workers implies wk1 != wk2
-- div,1
all ws : Workstation, w : Worker | w in ws.workers && w in Human implies (all w1 : Worker | w1 in ws.workers implies w1 not in Robot)
-- div,1
all h: Human| all r: Robot| all w: Workstation| (h in w.workers implies r not in w.workers) && (r in w.workers implies h not in w.workers)
-- div,1
all w : Workstation | all h : Human | all r : Robot | ((h in w.workers) implies (r not in w.workers)) and ((r in w.workers) implies (h not in w.workers))
-- div,1
all h : Human | all r : Robot | all ws : Workstation | (h in ws.workers => r not in ws.workers) and (r in ws.workers => h not in ws.workers)
-- div,1
all ws : Workstation | some Human & ws.workers implies no Robot & ws.workers
all ws : Workstation | some Robot & ws.workers implies no Human & ws.workers
-- div,1
(all h: Human| all r: Robot| all w: Workstation| h in w.workers implies r not in w.workers)
&& (all h: Human| all r: Robot| all w: Workstation| r in w.workers implies h not in w.workers)
-- div,1
all x1,x2 : Worker | all y : Workstation | x1 in Human and x2 in Robot and x1 in y.workers implies x2 not in y.workers
all x1,x2 : Worker | all y : Workstation | x1 in Human and x2 in Robot and x2 in y.workers implies x1 not in y.workers
-- div,1
-- equiv pair end
