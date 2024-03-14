-- equiv pair start,1
lone succ
-- div,1
-- equiv pair end
-- equiv pair start,10
all w: Worker | one w.succ
-- div,1
all w : Worker | one ws : Workstation | w in ws
-- div,1
all ws: Workstation, w: Worker | ws->w in workers and w->ws in workers
-- div,1
all w: Worker, ws: Workstation | some ws.workers and one w.workstation
-- div,1
all w: Worker, ws: Workstation | some ws.workers and one workstation.w
-- div,1
all w: Worker, ws: Workstation | one workstation.w and some ws.workers
-- div,1
all w: Worker | one w.succ
all ws: Workstation | all w1, w2: ws.workers | w1 = w2
-- div,1
all w: Worker | one w.workers
all ws: Workstation | all w1, w2: ws.workers | w1 = w2
-- div,1
all w: Worker, ws: Workstation | some ws.workers
all w: Worker | one ws: Workstation | one workstation.w
-- div,1
all w: Worker, ws: Workstation | some ws.workers
all w: Worker | one ws: Workstation | one w.workstation
-- div,1
-- equiv pair end
-- equiv pair start,3
workers in Workstation some -> one Worker
-- div,2
all wb : Workstation | one (wb.workers & Worker)
all w : Worker | one (w & Workstation.workers)
-- div,1
-- equiv pair end
-- equiv pair start,5
some Workstation.workers
one workers.Worker
-- div,2
some Workstation.workers
lone workers.Worker
-- div,1
lone workers.Worker and some Workstation.workers
-- div,2
-- equiv pair end
-- equiv pair start,18
all ws : Workstation | Worker in ws.workers
-- div,1
all w:Workstation, p:Worker | p in w.workers
-- div,1
all w: Worker, s: Workstation | w in s.workers
-- div,1
all ws: Workstation, w: Worker | ws->w in workers
-- div,3
all w : Workstation | all t : Worker | w->t in workers
-- div,1
all w : Worker | all ws : Workstation | w in ws.workers
-- div,1
all ws : Workstation | all w : Worker | w in ws.workers
-- div,1
all w: Workstation | all w1: Worker | w->w1 in workers
-- div,1
all w : Workstation, t: Worker | (some w.workers) and (t in w.workers)
-- div,1
all w : Workstation, wr : Worker | some w.workers and wr in w.workers
-- div,1
all ws: Workstation, w: Worker | some ws.workers  and w in ws.workers
-- div,1
all ws: Workstation, w: Worker | ws.workers not in none and w in ws.workers
-- div,1
all ws: Workstation | all w: Worker | ws.workers != none and w in ws.workers
-- div,1
all wb : Workstation | all w : Worker | some (wb.workers & Worker) and wb->w in workers
-- div,1
all wb : Workstation | all w : Worker | some (wb.workers & Worker) and one (w & wb.workers)
-- div,1
all wb : Workstation | Worker in wb.workers
some wb : Workstation | all w : Worker | w in wb.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
lone succ and Workstation in Worker.(~workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
some workers.Worker and lone Workstation.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
one w: Workstation | all w1: Worker | w->w1 in workers
-- div,1
-- equiv pair end
-- equiv pair start,3
all w: Workstation | some w.workers and one workers.Worker
-- div,1
all w : Workstation | some w.workers
lone workers.Worker
-- div,1
all s: Workstation | some w: Worker | w in s.workers
all w: Worker | one s: Workstation | s in workers.Worker
-- div,1
-- equiv pair end
-- equiv pair start,5
all w : Workstation | one wo : Worker | w -> wo in workers
-- div,1
all ws : Workstation | one w : Worker | ws->w in workers
-- div,1
all w: Workstation | w.workers != none and (all w1: Workstation | one p:Worker | p in w1.workers)
-- div,1
(all ws: Workstation | some w: Worker | w in ws.workers) and (all w1: Workstation | one p:Worker | p in w1.workers)
-- div,1
all ws: Workstation | some w: Worker | w in ws.workers and (all w1: Workstation | one p:Worker | p in w1.workers)
-- div,1
-- equiv pair end
-- equiv pair start,6
all w: Workstation | some w.workers and no Worker-w.workers
-- div,1
all w:Worker,ww:Workstation | w in ww.workers
all ww:Workstation | some (ww.workers)
-- div,1
all ws: Workstation | some ws.workers
all w: Worker, ws: Workstation | w in ws.workers
-- div,1
all x : Workstation | some x.workers
all x : Worker, y : Workstation | one x & y.workers
-- div,1
all wtt : Workstation | some wtt.workers

all wtt : Workstation | all w : Worker | w in wtt.workers
-- div,1
all wb : Workstation | some w : Worker | w in wb.workers
all wb : Workstation | Worker in wb.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
one Worker & Workstation.workers  and Workstation in Worker.(~workers)
-- div,2
-- equiv pair end
-- equiv pair start,7
all w : Workstation | some w.workers
one ww : Workstation | Worker in ww.workers
-- div,1
all w: Workstation | w.workers != none and (one w1: Workstation | all p:Worker | p in w1.workers)
-- div,1
all wtt : Workstation | some wtt.workers

one wtt : Workstation | all w : Worker | w in wtt.workers
-- div,1
all ws:Workstation | some w:Worker | w in ws.workers
one ws:Workstation | all w:Worker | w in ws.workers
-- div,1
(all ws: Workstation | some w: Worker | w in ws.workers) and (one w1: Workstation | all p:Worker | p in w1.workers)
-- div,1
(all ws: Workstation | some w: Worker | ws->w in workers) and (one w1: Workstation | all p:Worker | w1->p in workers)
-- div,1
all w: Workstation | some w1: Worker | w->w1 in workers and (one w2: Workstation | all w3: Worker | w2->w3 in workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
#Workstation.workers > 1
all worker: Worker | one ws: Workstation | worker in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,4
all w: Workstation | w.workers != none and (some w1: Workstation | all p:Worker | p in w1.workers)
-- div,1
all wtt : Workstation | some wtt.workers

some wtt : Workstation | all w : Worker | w in wtt.workers
-- div,1
all wb : Workstation | some w : Worker | w in wb.workers
some wb : Workstation | all w : Worker | w in wb.workers
-- div,1
all ws:Workstation | some w:Worker | w in ws.workers
some ws:Workstation | all w:Worker | w in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
all wb : Workstation | Worker in wb.workers
all wb : Workstation | one w : Worker | w in wb.workers
-- div,2
-- equiv pair end
-- equiv pair start,1
all wb : Workstation | Worker in wb.workers
one wb : Workstation | all w : Worker | w in wb.workers
-- div,1
-- equiv pair end
-- equiv pair start,4
all w : Workstation, work : Worker | w->work in workers and (one wn : Workstation | wn->work in workers)
-- div,1
all ws:Workstation | all w:Worker | ws->w in workers and (one ws2:Workstation|ws2->w in workers)
-- div,1
all wb : Workstation | Worker in wb.workers
all w : Worker | one wb : Workstation | w in wb.workers
-- div,1
all w : Workstation | Worker in w.workers
all w1,w2 : Workstation | all wk : Worker | wk in w1.workers and wk in w2.workers implies w1=w2
-- div,1
-- equiv pair end
-- equiv pair start,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1=w2
-- div,1
-- equiv pair end
-- equiv pair start,1
(some w : Worker | all ws : Workstation | w in ws.workers) and (one ws : Workstation | all w : Worker | w in ws.workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1=w2
all w : Worker | w in Workstation.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1=w2
all ws : Workstation | Worker in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1=w2
all ws : Workstation | some w : Worker | w in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1=w2
all ws : Workstation | some w : Worker | w in ws.workers
all w : Worker | w in Workstation.workers
-- div,1
-- equiv pair end
