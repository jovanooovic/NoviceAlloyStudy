Worker & Workstation
-- div,1
one Worker in Workstation
-- div,4
Workstation one -> some Worker
-- div,1
Workstation some -> one Worker
-- div,2
all w: Worker | w & workstation
-- div,1
all w : Workstation | w.workers
-- div,1
all w: Worker | w & Workstation
-- div,1
all ws: Workstation | ws.workers
-- div,1
all w: Worker | (w in workstation)
-- div,1
all w: Worker | ~(w in workstation)
-- div,1
all ws: Workstation, w: Worker | ws-> w
-- div,1
all w: Worker | ~(w not in workstation)
-- div,1
all wb : Workstation | some Worker in wb
-- div,1
all w: Workstation | some x : Worker | w->x
-- div,2
all wb : Workstation | (wb.workers & Worker)
-- div,1
all ws: Workstation, w: Worker | ws->w in Worker
-- div,1
all w : Worker | all ws: Workstation | one w in ws
-- div,3
all w : Workstation, wo : Worker | w one -> some wo
-- div,1
all wt:Workstation,w:Worker | some (w in wt.workers)
-- div,1
all w : Worker, ws : Workstation | lone w in ws.workers
-- div,1
all s:Workstation | some s.workers and s.workers in iden
-- div,1
all s:Workstation | some s.workers and (s.workers in iden)
-- div,1
all s:Workstation, w:Worker | some s.workers and s.w in iden
-- div,1
all ws: Workstation| some ws.workers
all w: Worker | w.~workers
-- div,1
all ws: Workstation | some ws.workers
all w: Worker | w in workers
-- div,1
all s:Workstation | some s.workers
all w:Worker | one w.Workstation
-- div,1
all s:Workstation | some s.workers
all w:Worker | one Workstation.w
-- div,1
all w : Workstation, wr : Worker | some w.workers and wr in workers
-- div,1
all w : Workstation, wr : Worker | some w.workers and one w.workers.wr
-- div,2
all w : Workstation | some w.workers
lone Worker in Workstation.workers
-- div,1
Worker.^workers
all w : Worker | one ww : Workstation | w in ww.workers
-- div,1
all w : Workstation | some w.workers
all w : Worker | one Workstation.w
-- div,1
all wb : Workstation | Worker in wb.workers
one w : Worker | w in workers
-- div,1
all w : Workstation, t: workers | some w.workers and workers in w.workers
-- div,1
all wb : Workstation | Worker in wb.workers
all w : Worker | w in workers
-- div,1
all w : Workstation | some w.workers
all w : Worker | one w in Workstation
-- div,1
all wb : Workstation | some w : Worker | w in wb.workers
Worker in workers
-- div,1
Workstation.workers
all w : Worker | one ws : Workstation | w in ws.workers
-- div,1
all w : Workstation, t: Worker | (some w.workers) and (workers in w.workers)
-- div,1
all w : Workstation, t: workers | (some w.workers) and (workers in w.workers)
-- div,1
all w : Worker ,  ws : Workstation | (some ws.workers) and (one w.Workstation)
-- div,1
all w : Worker ,  ws : Workstation | (some ws.workers) and (one Workstation.w)
-- div,1
all w : Worker ,  ws : Workstation | (some ws.workers) and (one Workstation.^w)
-- div,1
all w : Worker ,  ws : Workstation | (some ws.workers) and (one w.^Workstation)
-- div,1
one Worker.~(Worker & Workstation.workers) and Workstation in Worker.(~workers)
-- div,1
all w : Worker ,  ws : Workstation | (some ws.workers) and (one Workstation.~w)
-- div,1
all w : Workstation | some w.workers
all wr : Worker | one Workstation.workers.wr
-- div,1
all wt:Workstation | some wt.workers
all w:Worker | some w in Workstation.workers
-- div,1
all w : Workstation | some w.workers
all w : Worker | one w in Workstation.workers
-- div,1
all w : Worker | one w in Workstation.workers and Workstation in Worker.(~workers)
-- div,1
all ws: Workstation | some ws.workers
all w: Worker | some w in Workstation.workers
-- div,1
all w:Worker | some w in Workstation.workers
all ww:Workstation | some (ww.workers)
-- div,1
all wb : Workstation | all w : Worker | some (wb.workers & Worker) and (w & workers)
-- div,1
all workers : Worker | Workstation.workers != none and worker in Workstation.workers
-- div,1
all wb : Workstation | some (wb.workers & Worker)
all w : Worker | one (workers & w)
-- div,3
all wb : Workstation | some w : Worker | w in wb.workers
all w : Worker | w in workers
-- div,3
all wb : Workstation | all w : Worker | some (wb.workers & Worker) and one (w & workers)
-- div,1
all wb : Workstation | wb.Worker
one wb : Workstation | all w : Worker | w in wb.workers
-- div,1
all wb : Workstation | all w : Worker | some (wb.workers & Worker)
all w : Worker | workers.w
-- div,2
all w: Worker, ws: Workstation | some ws.workers
all w: Worker | one ws: Workstation | one w.ws
-- div,1
all w : Workstation | some wo : Worker | w -> wo in workers and all ww : Worker | ww in workers
-- div,1
all ws: Workstation | some ws.workers
all w: Worker | one ws: Workstation | ws->w in ws.workers
-- div,1
all ws: Workstation | some w: Worker | w in ws.workers
all w: Worker | w in (one Workstation).workers
-- div,1
all ws: Workstation | not none ws.workers
all worker: Worker | one ws: Workstation | worker in ws.workers
-- div,1
all w: Workstation | some w.workers
all w: Worker | w in Workstation.workers or Workstation.~(succ.workers)
-- div,1
all ws: Workstation| sum w: Worker | w->ws in workers
all k: Worker | one ks: Workstartion | w->ks in workers
-- div,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.Worker and w2 in ws2.Worker implies w1=w2
-- div,2
all w1, w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.Worker and w2 in ws2.Worker implies w1=w2
-- div,2
all wt:Workstation | some w:Worker | (w in wt.workers)
all w:Worker | some wt:Workstation | one (w in wt.workers)
-- div,1
all workstation : Workstation | all workers : Worker | workstation.workers != none and worker in Workstation.workers
-- div,1
all workstation : Workstation | all workers : Worker | Workstation.workers != none and worker in Workstation.workers
-- div,1
all ws : Workstation | some w : Worker | ws -> w in workers
all w : Worker | one ws : workstation | ws->w in workers
-- div,1
all wks : Workstation | some w : workers | w->wks in workers
all w : workers | one wks: Workstation | w->wks in workers
-- div,1
all wks : Workstation | some w : workers | wks->w in workers
all w : workers | one wks: Workstation | wks->w in workers
-- div,1
all wks : Workstation | some w : workers | wks->w in workers
all w : Workers | one wks: Workstation | wks->w in workers
-- div,1
all workstation : Workstation | all workers : Worker | workers in workstation.workers != none and worker in Workstation.workers
-- div,1
all workstation : Workstation | all workers : Worker | (workers in workstation.workers) != none and worker in Workstation.workers
-- div,1
all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.workers and w2 in ws2.workers implies w1!=w2
all ws : Workstation | some Worker in ws.workers
all w : Worker | w in Workstation.workers
-- div,1
