-- equiv pair start,1
all w:Workstation,w1:w.workers|w1 =Human +Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | no (w.workers & Human+Robot)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | all wo : w.workers | wo in Human
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | (Robot & Human not in ws.workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | w.workers = Human or w.workers = Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation, w : Human + Robot | w not in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,25
all s : Workstation | s.workers in Human or s.workers in Robot
-- div,1
all x: Workstation | x.workers in Human or x.workers in Robot
-- div,2
all w: Workstation | w.workers in Robot || w.workers in Human
-- div,3
all w: Workstation | w.workers in Human or w.workers in Robot
-- div,4
all ws : Workstation | ws.workers in Robot or ws.workers in Human
-- div,4
all  wt : Workstation | (wt.workers in Human) or (wt.workers in Robot)
-- div,2
all ws: Workstation | ws.workers in Human or ws.workers in Robot
-- div,3
all W:Workstation | (no W.workers-Human) or (no W.workers-Robot)
-- div,1
all wor : Workstation | wor.workers = Human & wor.workers or wor.workers = Robot & wor.workers
-- div,2
all w: Workstation | all x, y: w.workers | (x in Robot && y in Robot) || (x in Human && y in Human)
-- div,1
all wh : Workstation, w1 : wh.workers, w2 : wh.workers | (w1 in Human and w2 in Human) or (w1 in Robot and w2 in Robot)
-- div,1
all x : Workstation | all y,z : Worker | y in x.workers and z in x.workers implies ((y in Human and z in Human) or (y in Robot and z in Robot))
-- div,1
-- equiv pair end
-- equiv pair start,2
all w:Workstation | w.workers in Human <=> w.workers not in Robot
-- div,1
all w:Workstation | ( w.workers in Human or w.workers in Robot ) and ( w.workers not in Human or w.workers not in Robot)
-- div,1
-- equiv pair end
-- equiv pair start,8
all w : Workstation, h : Human | h in w.workers implies w.workers in Human
-- div,1
all w1,w2 : Worker | all w : Workstation |( w->w1 in workers and w->w2 in workers and w1 in Human ) implies w2 in Human
-- div,1
all ws: Workstation | all w1,w2: Worker | w1 in ws.workers and w2 in ws.workers and w1 in Human implies w2 in Human
-- div,1
all ws:Workstation | all w1,w2: Worker |
(ws -> w1 in workers and ws -> w2 in workers and w1 in Human) implies (w2 in Human)
-- div,2
all ws : Workstation, w : Worker | w in ws.workers && w in Human implies (all w1 : Worker | w1 in ws.workers implies w1 in Human)
-- div,3
-- equiv pair end
-- equiv pair start,4
all ws:Workstation, h:Human,r:Robot| h in ws.workers iff r not in ws.workers
-- div,1
all w : Workstation | all h : Human | all r : Robot | (h in w.workers) iff (r not in w.workers)
-- div,1
all h : Human | all r : Robot | all ws : Workstation | (r in ws.workers) iff (not(h in ws.workers))
-- div,1
all w : Workstation | all h : Human | all r : Robot | ((h in w.workers) iff (r not in w.workers)) and ((r in w.workers) iff (h not in w.workers))
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation,wo:Worker| some (w.workers & Human) <=> no (w.workers & Robot)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation,wo:Worker| wo in w.workers and wo in Human <=> no (w.workers & Robot)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Worker, ws:Workstation | w in ws.workers implies (w in Human) or (w not in Robot)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | all h : Human, r : Robot | h in ws.workers and r not in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all r : Robot | all ws : Workstation | r in ws.workers iff (not(some h : Human| h in ws.workers))
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation, w,w1 : Worker | w in ws.workers && w in Robot && w1 in ws.workers implies w1 in Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
all w1,w2 : Worker | all x1,x2 : Workstation | (w1 in x1.workers and w2 in x2.workers and w1 != w2) implies x1!=x2
-- div,1
-- equiv pair end
-- equiv pair start,3
all ws: Workstation | all w1,w2: Worker | w1 in ws.workers and w2 in ws.workers and w1 in Human implies w2 in Robot
-- div,1
all ws: Workstation | all w1,w2: Worker | w1 in ws.workers and w2 in ws.workers and w1 in Human implies w2 not in Human
-- div,2
-- equiv pair end
-- equiv pair start,1
all w:Workstation,r:Robot  | one h:Human | h in w.workers => r not in w.workers
all w:Workstation,h:Human | one r:Robot | r in w.workers => h not in w.workers
-- div,1
-- equiv pair end
-- equiv pair start,3
all w:Workstation,r:Robot | some h:Human | h in w.workers => r not in w.workers
all w:Workstation,h:Human | some r:Robot | r in w.workers => h not in w.workers
-- div,3
-- equiv pair end
-- equiv pair start,1
all w1,w2 : Worker | all x1: Workstation | (w1 in x1.workers and w2 in x1.workers and w1 != w2) implies ((w1 in Human and w2 in Human) or (w1 in Robot and w2 in Robot))
-- div,1
-- equiv pair end
-- equiv pair start,2
all ws : Workstation , w : Worker | (w in ws.workers and w in Robot) implies ws.workers in Robot
all ws : Workstation , w : Worker | (w in ws.workers and w in Human) implies ws.workers in Human
-- div,2
-- equiv pair end
