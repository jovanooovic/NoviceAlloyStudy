a
-- div,1
no workers.Human & workers.Robot
-- div,4
all h : Human | all r : Robots | no (h & r)
-- div,1
all x,y in Workstation.workers implies x = y
-- div,1
all x,y in Workstation.workers implies x == y
-- div,1
all w in Workstation | (w.workers in Robot) implies
-- div,1
all w: Workstation | w.worker = Human or w.worker = Robot
-- div,1
all x,y: Workstation.workers | x,y in Human or x,y in Robot
-- div,1
all x: Workstation.workers implies x in Human or x in Robot
-- div,1
all x in Workstation.workers implies x in Human or x in Robot
-- div,1
(all x: Workstation.workers) implies (x in Human or x in Robot)
-- div,1
(all x in Workstation.workers) implies (x in Human or x in Robot)
-- div,1
all ws : Workstation |  no (w.workers & Robot) or no (w.workers & Human)
-- div,1
all wor : Workstation | all wor.workers in Human or all wor.workers in Robot
-- div,1
all w in Workstation | (w.workers in Robot) implies
(w.workers not in Human)
-- div,1
all w: Workstation | (#w.workers in Human) == 0 or (#w.workers in Robot) == 0
-- div,1
all ws:Workstion, h:Human, r:Robot | not (h in ws.workers and r in ws.workers)
-- div,1
all w : Workstation | (w.workers - Humans = Robot) or (w.workers - Humans = none)
-- div,1
all ws: Workstation, w:worker | w in Human and w in ws.workers => ws.workers not in Robot
-- div,1
all w: Workstation | no (w.workers & Robot) or no (w.workers & Human)
-- div,1
all x:Workstation,all y:Worker | y in Robot and y in x.workers implies Robot in x.workers
-- div,1
all ws : Workstation |  no (ws.workers & Robot) or no (ws.workers & Human)
-- div,3
all w : Workstation | all w : Worker | w in Human and w in ws.workers implies w not in Robot
-- div,1
all ws : Workerstation, w,w1 : Worker | w in ws && w in Robot && w1 in ws implies w1 in Robot
-- div,1
all ws : Workstation | all h : Human, r : Robot | h in ws.workers and r in ws.workers => false
-- div,1
(all w: Workstation | all x, y: w.workers | (x in Robot && y in Robot) || (x in Human && y in Human)
-- div,1
all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) implies (h not in ws.workers(
-- div,1
all w1,w2 : Worker | all w : workstation |( w->w1 in workers and w->w2 and w1 in ) implies w2 in Human)
-- div,1
all h : Human | all r : Robots | all ws : Workstation | (r in ws.workers) implies (h not in ws.workers)
-- div,1
all x:Workstation,all y,w:Worker | y in Robot and y in x.workers and w in Human implies w not in x.workers
-- div,2
all wh : Workstation, w1 : wh.workers, w2 : wh.workrs | (w1 in Human and w2 in Human) or (w1 in Robot and w2 in Robot)
-- div,1
all w1,w2 : Worker | all w : Workstation |( w->w1 in workers and w->w2 in workers and w1 in Human ) implies w2 in Human)
-- div,1
all w1,w2 : Worker | all x1: Workstation | (w1 in x1.workers and w2 in x1.workers and w1 != w2) implies (x1!=x2 and x1 in Human and x2 in Human)
-- div,1
all w1,w2 : Worker | all x1: Workstation | (w1 in x1.workers and w2 in x1.workers and w1 != w2) implies (x1!=x2 and w1 in Human and w2 in Human)
-- div,1
