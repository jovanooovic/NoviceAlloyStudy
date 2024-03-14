workers.Workstation not in Human & Robot
-- div,1
no (workers - Robot->Robot - Human->Human)
-- div,1
all w : Workstation | (w.workers in Human)
-- div,1
all ws : Workstation | Human&Robot not in ws.workers
-- div,1
Human = Workstation.workers or Robot = Workstation.workers
-- div,1
Workstation.workers in Human or Workstation.workers in Robot
-- div,3
all w:Workstation | w.workers in Human or w.workers in Robot
-- div,37
all s:Workstation | s.workers in Human or s.workers in Robot
-- div,1
all w:Workstation | w.workers in Robot or w.workers in Human
-- div,7
all w : Workstation | w.workers in Human iff w.workers not in Robot
-- div,4
all ws: Workstation | ws.workers in Human or ws.workers in Robot
-- div,2
all r : Robot, h : Human, w : Workstation | r in w iff h not in w
-- div,2
all ws:Workstation | ws.workers in Human iff ws.workers not in Robot
-- div,2
all w : Workstation | w.^(workers) in Human or w.^(workers) in Robot
-- div,2
all wtt : Workstation | wtt.workers in Human or wtt.workers in Robot
-- div,3
all w : Workstation | no w.workers-Human or no w.workers-Robot
-- div,1
all ws: Workstation | some (Human & ws.workers) <=> no (Robot & ws.workers)
-- div,1
all w : Workstation, h: Human, r: Robot | w.workers in h or w.workers in r
-- div,1
all h : Human, r : Robot | h in Workstation.workers implies r not in Workstation.workers
-- div,1
all ws:Workstation | Workstation.workers in Human iff Workstation.workers not in Robot
-- div,1
all h : Human, r : Robot | h in Workstation.workers iff r not in Workstation.workers
-- div,1
all ws: Workstation | all disj w1, w2: ws.workers | w1 in Human implies w2 in Human
-- div,2
all h : Human, r : Robot, w : Workstation | h in w.workers <=> r not in w.workers
-- div,1
all disj h, r: Worker | no w: Workstation | h in w.workers and r in w.workers
-- div,1
all h : Human, r : Robot, w : Workstation | not h -> w in workers and r -> w in workers
-- div,1
all ws: Workstation, r: Robot, h: Human | r in ws.workers <=> h not in ws.workers
-- div,1
all wk:Workstation, h:Human, r:Robot | h in wk.workers <=> r not in wk.workers
-- div,3
all w1,w2 : Worker | all ws : Workstation | (w1->ws in workers and w2->ws in workers)
-- div,1
all w : Workstation | w.workers=w.workers&Robot or w.workers=w.workers&Human
-- div,1
all wt:Workstation,w:Worker | w in wt.workers and w in Human implies no wt.workers-Human
-- div,1
all ws:Workstation,w:Worker | w in ws.workers and w in Human implies no ws.workers-Human
-- div,1
all w:Workstation | (all p:w.workers | p in Robot) or (all p:w.workers | p in Human)
-- div,1
all h : Human | all r : Robot | all w : Workstation | r in w.workers and h not in w.workers
-- div,1
all h : Human | all r : Robot | all ws : Workstation | h in ws.workers <=> r not in ws.workers
-- div,1
all ws: Workstation, w1,w2: Worker | w1 in ws.workers and w2 in ws.workers and w1 in Human implies w2 in Human
-- div,1
all ws:Workstation, w1,w2:Worker | ws->w1 in workers and ws->w2 in workers and w1 in Human implies w2 in Robot
-- div,2
all p1,p2 : Worker, wks : Workstation | wks->p1 in workers and wks->p2 in workers and p1 in Human implies p2 in Human
-- div,1
all ws : Workstation | all w1, w2 : Worker | (w1+w2) in ws.workers implies (w1+w2) in Human or (w1+w2) in Robot
-- div,1
all w,w1 : Worker | all ws:Workstation | w in ws.workers and w1 in ws.workers and w in Human implies w1 in Human
-- div,1
all ws: Workstation | all w1, w2: Worker | (w1+w2) in ws.workers implies ((w1+w2) in Human or (w1+w2) in Robot)
-- div,1
all w1,w2: Worker | all ws: Workstation | w1 in ws.workers and w2 in ws.workers and w1 in Human implies  w2 in Human
-- div,1
all w1,w2 : Worker | all ws : Workstation | (ws->w1 in workers and ws->w2 in workers and w2 in Human) implies (w1 in Human)
-- div,2
all ws: Workstation | all w1, w2: Worker | (ws->w1 in workers and ws->w2 in workers and w1 in Human) implies (w2 in Human)
-- div,8
all ws : Workstation | all h1,h2 : Worker | ws->h1 in workers and ws->h2 in workers and h1 in Human implies h2 in Human
-- div,1
all ws: Workstation, w1: Worker, w2: Worker | w1 in ws.workers and w2 in ws.workers and w1 in Human implies (w2 in Human)
-- div,1
all w1,w2 : Worker | all ws1,ws2 :  Workstation | (ws1->w1 in workers and ws2->w2 in workers and w2 in Human) implies (w1 in Human)
-- div,1
all w1,w2 : Worker | all ws1,ws2 :  Workstation | (ws1->w1 in workers and ws2->w2 in workers and w1 in Human) implies (w2 in Human)
-- div,1
all w : Workstation, r : Robot, h : Human | (h in w.workers implies w.workers in Human) and (r in w.workers implies w.workers in Robot)
-- div,1
all w : Workstation, wk : Worker | (wk in w.workers and wk in Robot implies w.workers in Robot) and (wk in w.workers and wk in Human implies w.workers in Human)
-- div,1
all ws: Workstation, w1, w2: Worker | w1 != w2 and w1 in ws.workers and w2 in ws.workers => (w1 in Human and w2 in Human) or (w1 in Robot and w2 in Robot)
-- div,2
all w1,w2 : Worker | all ws : Workstation | w1 in Human and w2 in Robot implies ((w1 in ws.workers and w2 not in ws.workers) or (w1 not in ws.workers and w2 in ws.workers))
-- div,1
all w1, w2 : Worker | all ws : Workstation | w1 in Human and w2 in Robot implies ((w1 in ws.workers and w2 not in ws.workers) or (w2 in ws.workers and w1 not in ws.workers))
-- div,2
all ws : Workstation | some h : Human | h in ws.workers implies no ws.workers&Robot
all ws : Workstation | some r : Robot | r in ws.workers implies no ws.workers&Human
-- div,1
all w : Workstation | all r : Robot | all h : Human | r in w.workers implies h not in w.workers
all w : Workstation | all r : Robot | all h : Human | h in w.workers implies r not in w.workers
all w : Workstation | w.workers=w.workers&Robot
-- div,1
all w : Workstation | all r : Robot | all h : Human | r in w.workers implies h not in w.workers
all w : Workstation | all r : Robot | all h : Human | h in w.workers implies r not in w.workers
all w : Workstation | w.workers=w.workers&Robot or w.workers=w.workers&Human
-- div,1
