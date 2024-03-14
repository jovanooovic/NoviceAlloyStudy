all
-- div,2
all w | w in worstation.w
-- div,1
all ws,w | w in worstation.w
-- div,1
Workstation one -> Worker some
-- div,1
all Workstation one -> some Worker
-- div,1
all w : Workstations | w in w.workers
-- div,2
all w : Worker | all ws: Workstation |
-- div,2
all w: Worker | not in w - workstation
-- div,1
(Workstation = workers.Workstation) and
-- div,1
works in Workstation one -> some Worker
-- div,1
workers in one Workstation -> some Worker
-- div,2
workers in Workstation one -> Worker some
-- div,1
all wb : Worstation | (wb.workers & Worker)
-- div,1
all w : Worker one ws : Workstation | w in ws
-- div,1
all w : Worker, ws : Workstation | w in one ws
-- div,1
w : Workstation, wo : Worker | w one -> some wo
-- div,1
all ws :  Workstation | ws implies (lone w : Worker)
-- div,1
all ws: Workstation, w: Worker | ws->w in workers and
-- div,1
all ws :  Workstation | ws implies (some w : Worker )
-- div,1
all ws :  Workstation | ws implies (lone w : Worker |)
-- div,1
all ws : Workstation , some w : Worker | ws->w in workers
-- div,3
all w : Worksation | some wor : Workers | wor in w.workers
-- div,1
all ws : Workstation | some w1 : Worker | w1->ws in worker
-- div,1
all w : Workstation | some wor : Workers | wor in w.workers
-- div,1
all ws : Workstation | some w : worker | ws -> w in workers
-- div,1
all w: Workstation | some w.workers and no Workers-w.workers
-- div,1
all w:Worker | one workers.w
all w:Wokstation | some w.workers
-- div,1
all w : Workstation, wo : Worker | w one -> some wo in workers
-- div,1
all w : Workstation | some w.workers
all w : Worker | one work
-- div,1
all w : Workstation | some w.workers
all w : Workers | one work
-- div,1
all w:Workers | one workers.w
all w:Workstation | some w.workers
-- div,1
all w:Worker | one workers.w
all w:Workstations | some w.workers
-- div,1
all ws: Workstation | some w.workers
all w: Worker | w in workers
-- div,1
all w : Worker | one workers.w and w: Workstation | some w.workers
-- div,1
all ws: Workstation | some w.workers
all w: Worker | some workers.w
-- div,1
all s:Workstation | some s.workers
all w:Worker | one Workstation.s
-- div,1
all w : Workstation | some w.workers
all w : Worker ! one workers.w
-- div,1
all w : Worksation | some wor : Workers | wor in w.workers and w in
-- div,1
all wb : Workstation | w : Worker | some (wb.workers & Worker) and wb->w
-- div,1
all wb : Workstation | some w : Worker | w in wb.workers
Worker in wb.workers
-- div,1
all ws: Workstation, some w: Worker | w in ws
all w: Worker | w in Workstation
-- div,1
all ws: Workstation | all w: Worker | ws.workers != none and w in one ws.workers
-- div,1
all w: Worker | w in Workstation.workers
all s: Workstation | s in workers.Workers
-- div,1
Workstation in workers.Worker
all w : Worker, one w : Workstation | w in ww.workers
-- div,1
all wb : Workstation | w : Worker | some (wb.workers & Worker) and wb->w in workers
-- div,1
some Workstation.workers
all w : Worker | lone workers.w and w in Workstation.worker
-- div,1
Workstation in workers.Worker
all w : Worker | one w : Workstation | w in ww.workers
-- div,1
all workers : Worker | workstation.workers != none and worker in Workstation.workers
-- div,1
all ws: Workstation | some ws.workers
all w: Worker, ws: workStation | w in ws.workers
-- div,1
all w:Worker,one ww:Workstation | w in ww.workers
all ww:Workstation | some (ww.workers)
-- div,3
all w : Workstation, some wo : Worker | w -> wo in workers
all w : Worker | w in workers
-- div,1
all w:Worker,some ww:Workstation | w in ww.workers
all ww:Workstation | some (ww.workers)
-- div,1
all w:Worker,ww:Workstation | w in some(ww.workers)
all ww:Workstation | some (ww.workers)
-- div,1
all w : Worker ,  ws, ws2 : Workstation | (some ws.workers) and (w in w2 implies w not in w)
-- div,1
all x : Workstation | some x.workers
all x : Worker, one y : Workstation | one x & y.workers
-- div,1
all ws : Workstation | some w.workers
all w : Worker | one ws : Workstation | w in ws.workers
-- div,1
all w: Worker, ws: Workstation | some ws.workers
all w: Worker | one ws: Workstations | one w.ws
-- div,1
all w: Workstation | w.workers != none and (some w1: Workstation, all p:Worker | p in w1.workers)
-- div,1
all wb : Workstationn | some (wb.workers & Worker)
all w : Worker | one (w & Workstation.workers)
-- div,1
all ws:Workstation | one ws1:Workstation | some w1:Worker | ws->w1 in workers and ws1->w in workers
-- div,1
all wtt : Workstation | some wtt.workers

all wtt : Workstation | all w : worker | w in wtt.workers
-- div,1
all ws: Workstation | some w: Worker | w in ws.workers
all w: Worker | w in one Workstation.workers
-- div,1
workers in Workstation one -> some Worker
all w,x : Worksation | w != x -> no (w.workers & x.workers)
-- div,1
workers in Workstation one -> some Worker
all w,x : Worksations | w != x -> no (w.workers & x.workers)
-- div,1
all ws : Workstation | ws.workers != none and (all w : Worker | one ws : Workstation | w in wks.workers)
-- div,1
all ws:Workstation | some w:Worker | w in ws.workers
all w:Workers | one ws:Workstation | w in ws.workers
-- div,1
(all ws : Workstation | ws.workers != None) and (all w : Worker | one ws : Workstation | w in ws.workers)
-- div,1
all ws:Workstation | some w:Workers | w in ws.workers
all w:Worker | one ws:Workstation | w in ws.workers
-- div,1
all w: Workstation | some w.workers
all w: Worker | w in Workstation.workers or Worstation.~(succ.workers)
-- div,1
workers in Workstation one -> some Worker
all w,x : Worksation | w != x implies no (w.workers & x.workers)
-- div,1
all ws: Workstation | one w: woker | w in ws.workers
all w: Worker | one ws: Workstation | w in ws.workers
-- div,1
all ws: Workstation | some w: Worker | w in ws.workers
all w: Worker, one ws: Workstation | w in ws.workers
-- div,1
all ws: Workstation | one w: worker | w in ws.workers
all w: Worker | one ws: Workstation | w in ws.workers
-- div,1
all s: Workstation | some w: Worker | w in s.workers
all w: worker | one s: Worstation | s in workers.Worker
-- div,1
all s: Workstation | some w: Worker | w in s.workers
all w: Worker | one s: Worstation | s in workers.Worker
-- div,1
all w: Workstation | some x : Worker | w->x in workers
all x: Worker | some x: Workstation | x->w in workers
-- div,1
all ws : Workstation | some w : Worker | w in ws.workers
all w : Worker | one ws : Worksation | w in ws.workers
-- div,1
all ws : Workstation | some w : Worker | w in ws.workers
all w : Worker | one ws : worksation | w in ws.workers
-- div,1
all w : Workstation | some wk : Worker | wk in w.workers
all wk : Woker | one w : Workstation | wk in w.workers
-- div,1
all w: Worker, ws: Workstation | some ws.workers and one workstation.w
all w: Worker | one ws: Workstation | one
-- div,1
all w : Workestation | some wk : Worker | wk in w.workers
all wk : Woker | one w : Workstation | wk in w.workers
-- div,1
all w1, w2 : Worker | all ws1,ws2: Worstation | ws1!=ws2 and w1 in ws1.worker and w2 in ws2.worker implies w1=w2
-- div,1
all w1, w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.worker and w2 in ws2.worker implies w1=w2
-- div,1
all w : Wokerstation | some wk : Workers | wk in w.workers
all wk : Wokers | one w : Workstation | wk in w.workers
-- div,1
all w : Workstation, some wo : Worker | w -> wo in workers
all wo : Worker | one w : Workstation| w -> wo in workers
-- div,1
all w: Workstation | some : wo : Worker | wo in w.workers
and
all wo : Worker | one w: Workstation | wo in w.workers
-- div,1
all wks : Workstation | some w : Workers | wks->w in workers
all w : Workers | one wks: Workstation | wks->w in workers
-- div,1
all w: Workstation | some w1: Worker | w->w1 in workers and (one w2: Workstation | all w3: Workers | w2->w3 in workers)
-- div,1
(some w : Worker | all ws : Workstation | w in ws.workers) and (one ws : Workstation | all w : Worker | w2 in ws3.workers)
-- div,1
all ws : Workstation | some w1 : Worker | w1->ws in workers
all w1 : Workers | lone ws : Workstation | w1 -> ws in workers
-- div,1
(all ws : Workstation | some w : Worker | ws->w in worker)
and
(all w : Worker | some ws : Workestation | ws->w in worker)
-- div,1
(all ws : Workstation | some w : Worker | ws->w in workers)
and
(all w : Worker | some ws : Workestation | ws->w in workers)
-- div,1
all w : Workstation, some wo : Worker | w -> wo in workers and
all wor : Worker | one wr : Workstation| wr -> wor in workers
-- div,1
all ws :  Workstation | some w :  Worker | w->ws in workstation
all w :  Worker | one w :  Workstation | w->ws in workstation
-- div,1
all w : Workstation | some wo : Worker | w -> wo in workers and all wwo : Worker | one ww : Workstations | ww -> wwo in workers
-- div,1
all x : Workstation | some x.workers
all x : Worker, some y : Workstation | one x & y.workers and no x & (Workstation-y).workers
-- div,1
all w : Workstation | some wor : Worker | wor in w.workers and
all worker : Worker | one ws : Workestation | worker in ws.workers
-- div,1
all ws : Worstation | ws.workers != none
all w1,ws : Workstation | all w : Worker |w in ws.workers and w in w1.workers implies ws = w1
-- div,1
all ws: Workstation | one w: Worker | ws.succ == none and w in ws.workers
all w: Worker | one ws: Workstation | ws.succ == none and w in ws.workers
-- div,1
all wb : Workstation | some w : Worker | w in wb.workers
all wb : Workstation, w : Worker | w in wb.workers
-- div,1
all ws: Workstation | some w: ws.workers
all w: Worker | one w.workstation
all w: Worker, ws1, ws2: w.workstation | ws1 != ws2 => ws1 not in ws2.^succ and ws2 not in ws1.^succ
-- div,1
