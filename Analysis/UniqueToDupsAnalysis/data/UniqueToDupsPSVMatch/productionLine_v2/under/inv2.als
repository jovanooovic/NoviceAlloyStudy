some workers.Worker
-- div,1
some Workstation.workers
-- div,2
some Workstation->workers
-- div,1
Workstation.workers = Worker
-- div,1
Workstation = workers.Worker
-- div,2
Worker in Workstation.workers
-- div,1
workers in Workstation one -> Worker
-- div,3
workers in Workstation -> some Worker
-- div,1
all w:Worker | one workers.w
-- div,3
all w:Worker | lone workers.w
-- div,1
workers in Workstation some -> some Worker
-- div,1
some workers and some Worker.(~workers)
-- div,1
all s:Workstation | some s.workers
-- div,1
all w:Workstation | some w.workers
-- div,4
all wt:Workstation | some wt.workers
-- div,1
all ws: Workstation| some ws.workers
-- div,3
all w: Workstation | w.workers != none
-- div,1
all w: Worker | w in Workstation.workers
-- div,5
some workers.Worker and some Workstation.workers
-- div,1
some Workstation.workers
some workers.Worker
-- div,1
all wb : Workstation | some (wb.workers & Worker)
-- div,1
all w: Worker, ws: Workstation | some ws.workers
-- div,1
all ws: Workstation, w: Worker | some ws.workers
-- div,1
(Workstation = workers.Worker) and (Worker = Workstation.workers)
-- div,1
Workstation in workers.Worker and Worker in Workstation.workers
-- div,1
some Workstation.workers
all w : Worker | one workers.w
-- div,1
all w: Workstation | some x : Worker | w->x in workers
-- div,1
all w : Workstation | some t : Worker | w->t in workers
-- div,1
all ws:Workstation | some w:Worker | w in ws.workers
-- div,7
all wt:Workstation | some w:Worker | (w in wt.workers)
-- div,2
all w:Worker | one ws : Workstation | ws->w in workers
-- div,1
some Workstation.workers
all w : Worker | lone workers.w
-- div,1
all wb : Workstation | some w : Worker | w in wb.workers
-- div,2
all ws:Workstation | some w:Worker | ws->w in workers
-- div,4
all w : Workstation | some wo : Worker | w -> wo in workers
-- div,2
some (Workstation.workers)

all w : Worker | one (w.~workers)
-- div,1
all w : Workstation | some wor : Worker | wor in w.workers
-- div,1
Workstation in workers.Worker and all w : Worker | lone workers.w
-- div,1
all w : Workstation | some w.workers
Workstation.workers = Worker
-- div,2
some Workstation.workers
all w : Worker | workers.w in Workstation
-- div,1
all w : Workstation | some w.workers
Worker in Workstation.workers
-- div,1
all wb : Workstation | all w : Worker | some (wb.workers & Worker)
-- div,1
some Workstation.workers
all w : Worker | w in Workstation.workers
-- div,2
all w : Workstation, wr : Worker | some w.workers and one workers.wr
-- div,4
all w: Workstation, ws: Worker | some w.workers and one workers.ws
-- div,3
all w : Workstation, wr : Worker | some w.workers and lone workers.wr
-- div,1
all ws: Workstation, w: Worker | some ws.workers and some workers.w
-- div,1
Workstation in Worker.(~workers)
all w : Workstation | some w.workers
-- div,1
all ws: Workstation, w: Worker | some ws.workers and one w.~workers
-- div,1
all w1:Workstation, w2:Worker | some w1.workers and some workers.w2
-- div,1
all w : Worker ,  ws : Workstation | (some ws.workers) and (one w.(~workers))
-- div,1
all ws: Workstation, w: Worker | some ws.workers and some w.~workers
-- div,1
all w : Worker ,  ws, ws2 : Workstation | (some ws.workers) and (one w.(~workers))
-- div,1
all w : Workstation | all t : Worker | some w.workers and one workers.t
-- div,1
all w : Worker | one workers.w and all w: Workstation | some w.workers
-- div,1
all w:Workstation | some w.workers
all w:Worker | some workers.w
-- div,3
(all w : Workstation | some w.workers) and (all t : Worker | some workers.t)
-- div,1
all ws: Workstation, w: Worker | some ws.workers and w in Workstation.workers
-- div,1
all worker : Worker | (Workstation.workers != none) and (worker in Workstation.workers)
-- div,1
all ws: Workstation | some ws.workers
all w: Worker | some workers.w
-- div,2
all w : Worker ,  ws, ws2 : Workstation | (some ws.workers) and (w in ws2 implies w not in ws)
-- div,1
all ws: Workstation| some ws.workers
all w: Worker | some w.~workers
-- div,1
some Workstation.workers
some workers.Worker
all w : Worker | lone workers.w
-- div,1
all w: Workstation | some w.workers
all w: Worker | w in Workstation.workers
-- div,3
all wt:Workstation | some wt.workers
all w:Worker | some Workstation.workers
-- div,1
all wt:Workstation | some wt.workers
all w:Worker | w in Workstation.workers
-- div,2
all ws: Workstation | some ws.workers
all w: Worker | w in Workstation.workers
-- div,2
some Workstation.workers
all w : Worker | one ws : Workstation | w in ws.workers
-- div,1
all w : Workstation | some w.workers
all wr : Worker | wr in Workstation.workers
-- div,1
some Workstation.workers
all w : Worker | lone workers.w and w in Workstation.workers
-- div,2
all x : Workstation | some x.workers
all x : Worker | one x & Workstation.workers
-- div,2
all ws : Workstation | all w : Worker | ws.workers != none and w in Workstation.workers
-- div,1
all w : Workstation | some w.workers
all w : Worker | one Workstation.workers&w
-- div,1
all w: Worker | w in Workstation.workers
all s: Workstation | s in workers.Worker
-- div,1
all w: Workstation | some w.workers
all w: Worker | one w&Workstation.workers
-- div,5
all w: Workstation | some w.workers
all w: Worker | lone w&Workstation.workers
-- div,1
all w : Worker | Workstation in Worker.(~workers)
all w : Workstation | some w.workers
-- div,1
all w : Worker | all w1,w2 : Workstation | w in w1.workers and w in w2.workers implies w1=w2
-- div,1
all wb : Workstation | some (wb.workers & Worker)
all w : Worker | (w in Workstation.workers)
-- div,1
all w : Workstation | some w.workers
all w : Worker | one (Workstation.workers - (univ - w))
-- div,1
all w1,w2 : Workstation | all wk : Worker | wk in w1.workers and wk in w2.workers implies w1=w2
-- div,1
#Workstation.workers >= 1
all worker: Worker | one ws: Workstation | worker in ws.workers
-- div,1
all wb : Workstation | some (wb.workers & Worker)
all w : Worker | one (w & Workstation.workers)
-- div,1
all w:Workstation | some w.workers
all w:Worker | some ws:Workstation| w in ws.workers
-- div,1
all w:Worker | some ww:Workstation | w in ww.workers
all ww:Workstation | some (ww.workers)
-- div,1
all x : Workstation | some x.workers
all x : Worker | some y : Workstation | one x & y.workers
-- div,1
all ws: Workstation | some w: Worker | w in ws.workers
all w: Worker | w in Workstation.workers
-- div,2
all w: Workstation | some w1: Worker | w->w1 in workers and (one w2: Workstation | w2->w1 in workers)
-- div,1
all wb : Workstation | some w : Worker | w in wb.workers
all w : Worker | w in Workstation.workers
-- div,1
Workstation.workers != none and (all worker : Worker | one workstation : Workstation | worker in workstation.workers)
-- div,1
all ws:Workstation | one ws1:Workstation | some w1:Worker | ws->w1 in workers and ws1->w1 in workers
-- div,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1!=w2
-- div,1
Workstation in Worker.(~workers)
all w : Workstation | some w.workers
all w : Worker | w in Workstation.workers
-- div,1
all wb : Workstation | all w : Worker | some (wb.workers & Worker)
all w : Worker | one (w & Workstation.workers)
-- div,1
all ws:Workstation, w:Worker | some w1:Worker | ws->w1 in workers implies (one ws1:Workstation | ws1->w in workers)
-- div,1
all s : Workstation | some w : Worker | w in s.workers
all w : Worker | some s : Workstation | w in s.workers
-- div,1
all s : Workstation | some w : Worker | w in s.workers
all w : Worker | some s : Workstation | s in workers.w
-- div,1
all s : Workstation | some w : Worker | w in s.workers
all w : Worker | some s : Workstation | s->w in workers
-- div,1
all w : Workstation | some t : Worker | w->t in workers and
all t : Worker | some w : Workstation | w->t in workers
-- div,1
all w: Workstation | some x : Worker | w->x in workers
all w: Worker | some x: Workstation | x->w in workers
-- div,1
all w : Workstation | some t : Worker | w->t in workers
all t : Worker | some w : Workstation | w->t in workers
-- div,1
all wt:Workstation | some w:Worker | (w in wt.workers)
all w:Worker | some wt:Workstation | (w in wt.workers)
-- div,1
all ws : Workstation | some w : Worker | ws->w in workers
all w : Worker | some ws : Workstation | ws->w in workers
-- div,3
all t : Worker | all w1,w2 : Workstation | w1.workers!=none and w2.workers!=none and t in w1.workers and t in w2.workers implies w2=w1
-- div,1
all worker : Worker | (Workstation.workers != none) and (all worker : Worker | one workstation : Workstation | worker in workstation.workers)
-- div,1
all ws: Workstation | some ws.workers
all w: Worker, ws1, ws2: Workstation | w in ws1.workers && w in ws2.workers => ws1=ws2
-- div,1
all x : Workstation | some x.workers
all x : Worker | some y : Workstation | one x & y.workers + x & (Workstation-y).workers
-- div,4
all w : Workstation | some w.workers
all w : Worker | all disj w1,w2 : Workstation | w in w1.workers and w in w2.workers implies w1=w2
-- div,1
all ws : Workstation | ws.workers != none
all w1,ws : Workstation | all w : Worker |w in ws.workers and w in w1.workers implies ws = w1
-- div,1
all w : Worker | w in Workstation.workers
all w1,w2 : Workstation | all wk : Worker | wk in w1.workers and wk in w2.workers implies w1=w2
-- div,1
all ws1,ws2 : Workstation | all w1 : Worker | w1 in ws1.workers and w1 in ws2.workers implies ws1=ws2
all ws : Workstation | some ws.workers
-- div,1
all ws : Workstation | some w : Worker | w in ws.workers
and
all w1,ws : Workstation | all w : Worker |w in ws.workers and w in w1.workers implies ws = w1
-- div,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1!=w2

all w : Worker | w in Workstation.workers
-- div,1
all ws1,ws2 : Workstation | all w1 : Worker | w1 in ws1.workers and w1 in ws2.workers implies ws1=ws2
all ws : Workstation | some w : Worker | w in ws.workers
-- div,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1!=w2
some Workstation.workers
all w : Worker | w in Workstation.workers
-- div,2
