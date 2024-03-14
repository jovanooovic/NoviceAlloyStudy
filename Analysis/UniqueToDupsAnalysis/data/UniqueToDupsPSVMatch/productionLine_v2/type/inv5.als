Human & Robot
-- div,1
workers != Human & Robot
-- div,1
workers != Human + Robot
-- div,1
workers not in Human & Robot
-- div,1
(Human+Robot) not in workers
-- div,1
Worker & Robot not in workers
-- div,1
univ workers.Human - workers.Robot
-- div,1
univ workers.Human + workers.Robot
-- div,1
Workstation.workers in (Human || Robot)
-- div,1
Robot.Workstation <=> Human.Workstation
-- div,1
Robot.Workstation <=> no Human.Workstation
-- div,1
all w : workstation | (w.workers in Human)
-- div,1
all ws: Workstation | no ws.Human & ws.Robot
-- div,1
all w : workstation | not (w.Robot & w.Human)
-- div,1
all ws: Workstation | no (ws.Human & ws.Robot)
-- div,1
Robot in Workstation <=> no Human in Workstation
-- div,1
all h: Human, r: Robot | no h.workers = r.workers
-- div,1
all w : Workstation | w.workers in (Human || Robot)
-- div,1
all w : Workstation | w.workers in (Human or Robot)
-- div,3
all ws : Workstation | (Human+Robot) not in workers
-- div,1
all w : Workstation |  (w.workers & (Human + Robot))
-- div,1
all w : workstation | no (w.Robot & w.Human)
-- div,2
all w : Workstation | no (w.workers & (Human or Robot))
-- div,1
all w: Workstation | no w.workers.Robot&w.workers.Human
-- div,1
all ws : Workstation.workers | no (ws.Human) & (ws.Robot)
-- div,1
all w: Workstation | no w.workers.Human & w.workers.Robot
-- div,1
all w : Workstation | no Human*Robot & w.workers*w.workers
-- div,1
all w: Workstation |  Robot implies Human not in w.workers
-- div,1
workers in (Workstation -> Human or Workstation -> Robots)
-- div,1
all w : Workstation | no (w.workers.Human & w.workers.Robot)
-- div,1
all wt:Workstation | (wt.workers-Human) & (wt.workers-Robot)
-- div,1
all h : Human, r : Robot | h in workers iff r not in workers
-- div,1
all ws: Workstation | no ws.workers.Human & ws.workers.Robot
-- div,1
all w : workstation | w.workers in Human or w.workers in Robot
-- div,1
all ww:Workstation | (ww.workers & Human) or (ww.workers &Robot)
-- div,2
all w: Workstation | Robot in w.workers = Human not in w.workers
-- div,1
Robot in Workstation.workers <=> no Human in Workstation.workers
-- div,2
all wt:Workstation | (wt.workers & Human) & (wt.workers & Robot)
-- div,1
all ws : Workstation | no (ws.workers.Human) & (ws.workers.Robot)
-- div,1
Robot in Workstation.workers -> none Human in Workstation.workers
-- div,1
all ww:Workstation | (ww.workers & Human) or (ww.workers & Robot)
-- div,1
Robot in Workstation.workers <=> no (Human in Workstation.workers)
-- div,1
all w : workstation | (w.workers in Human) or (w.workers in Robot)
-- div,1
all h: Human, r: Robot, w: Worker | h in w.workers & r in w.workers
-- div,1
all w : Workstation | no w.workers & Robot or no w.workers in Human
-- div,6
all h : Human, r : Robot | no (h.workers & r.workers) not in workers
-- div,1
all w : Workstation | no ((Human in w.workers) & (Robot in w.workers))
-- div,1
all w : Workstation | no w.workers and Robot or no w.workers and Human
-- div,2
all ww:Workstation | Human & ww.workers implies no(Robot & ww.workers)
-- div,1
all ww:Workstation | (ww.workers & Human) implies no (ww.workers&Robot)
-- div,1
all w : workstation | no (w.workers.Human & w.workers.Robot)
-- div,1
all ww:Workstation | (ww.workers & Human) implies no (ww.workers & Robot)
-- div,2
all w: Workstation | some (Robot & w.workers) implies (Human & w.workers)
-- div,1
all wb : Workstation | Robot in wb.workers implies no Human in wb.workers
-- div,1
all w : Workstation | ((Human in w.workers) & (Robot in w.workers)) = none
-- div,1
some Robot in Workstation.workers <=> not some Human in Workstation.workers
-- div,1
all w: Workstation | some (Robot in w.workers) implies (Human in w.workers)
-- div,1
all w : Workstation, h : Human | h in w.workers implies no Robot in w.workers
-- div,1
all wb : Workstation | (Robot in wb.workers) implies (no Human in wb.workers)
-- div,1
all w: Workstation | some (Robot not in w.workers) implies (Human in w.workers)
-- div,1
all h: Human, r: Robot, ws: Workstation | h not in ws.workers & r not in ws.workers
-- div,1
all w : Worker | all ws: Workstation | ws.workers & Robot implies no ws.workers & Human
-- div,2
all w : Worker | all ws: Workstation | ws.workers in Robot implies no ws.workers in Human
-- div,1
all w:Workstation | w.workers in Workstation -> Human or w.workers in Workstation -> Robot
-- div,1
all h: Human | all w : Workstation | w->h in workers implies all r : Robot | w->r not in w
-- div,1
all w : Workstation | all r : Robot | all h : Human | r in w.workers implies h not int w.workers
-- div,1
all h :  Human | all r : Robot | all w : workstation | h->w in workers implies r->w not in workers
-- div,1
all ws: Workstation | all w1, w2: Worker | ws.w1 in Human implies ws.w2 in Human else ws.w2 in Robot
-- div,1
all ws : Workstation | some w1,w2 : Worker | (ws->w1 and ws->w2 and w1 in Human) iff (w2 not in Robot)
-- div,2
all ws:Workstation | not some w1, w2:Worker | ws->w1 and ws->w2 and w1 in Human and w2 in Robot and w1!=w2
-- div,1
all w : Workstation | all w1,w2 : Worker | w1 in w.workers and w2 in w.workers and w1 is Human implies w2 is Human
-- div,2
all w1,w2 : Worker | all ws1,ws2 :  Workstation | (ws1->w1 in workers and ws2->w2 and w2 in Human) implies (w2 in Human)
-- div,1
all w1,w2 : Worker | all ws1,ws2 :  Workstation | (ws1->w1 in workers and ws2->w2 and w2 in Human) implies ( w2 in Human)
-- div,1
all w : Workstation | (Robot in w.workers implies no Human in w.workers) and (Human in w.workers implies no Robot in w.workers)
-- div,1
all w1,w2: Worker , ws: Workstation | w1 in ws.workers and w2 in ws.workers implies (w1 and w2 in Human) or (w1 and w2 in Robot)
-- div,2
all w : Workstation | (Robot in w.workers implies no(Human in w.workers)) and (Human in w.workers implies no(Robot in w.workers))
-- div,1
all w : Workstation | some Robot in w.workers implies no Human in w.workers and some Human in w.workers implies no Robot in w.workers
-- div,1
all w : Workstation | Robot in w.workers implies no(Human in w.workers)
all w : Workstation | Human in w.workers implies no(Robot in w.workers)
-- div,1
all w: Workstation | no (Robot in w.workers) implies (Human in w.workers)
all w: Workstation | no (Human in w.workers) implies (Robot in w.workers)
-- div,1
all w : Workstation | some w.workstation.Robot implies no w.workstation.Human
all w : Workstation | some w.workstation.Human implies no w.workstation.Robot
-- div,1
