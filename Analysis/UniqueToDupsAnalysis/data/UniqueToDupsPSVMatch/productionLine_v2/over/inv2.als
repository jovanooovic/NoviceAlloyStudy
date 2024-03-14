(Workstation = Worker.workers)
-- div,1
Workstation = Workstation.workers
-- div,1
(Workstation = workers.Workstation)
-- div,1
workers in Workstation one -> one Worker
-- div,1
all w : Workstation | w in w.workers
-- div,1
lone succ and Workstation in Workstation.(~workers)
-- div,2
lone succ and Workstation in (~workers).Workstation
-- div,1
(Workstation = workers.Worker) and (Worker = Worker.~workers)
-- div,1
all ws: Workstation | some w: Worker | w in ws
-- div,1
all wb : Workstation | some w : Worker | w in wb
-- div,1
(Workstation = workers.Worker) and (Worker = workers.Workstation)
-- div,1
(Workstation = workers.Workstation) and (Worker = Worker.~workers)
-- div,1
all ws : Workstation | some w1 : Worker | w1->ws in workers
-- div,1
all ws :  Workstation | some w :  Worker | w->ws in workstation
-- div,1
all w:Workstation | some w.workers
all w:Worker | one w.workers
-- div,2
all ws: Workstation | some ws.workers
all w: Worker | one ~workers.w
-- div,1
all ws: Workstation | some ws.workers
all w: Worker | one w.workstation
-- div,1
all ws: Workstation | #ws.workers > 0
all w: Worker | one ~workers.w
-- div,1
all ws:Workstation | some ws.workers
all w:Worker | one workers.workers
-- div,1
Worker.^workers = Workstation
all w : Worker | one ww : Workstation | w in ww.workers
-- div,1
all ws: Workstation | some w: Worker | w in ws
all w: Worker | w in Workstation
-- div,1
all ws: Workstation | some ws.workers
all w: Worker | one ws: Workstation | w in ws
-- div,1
all wk:Workstation | some wk.workers
all w:Worker | one wk:Workstation | w in wk
-- div,1
all ws: Workstation | some w: Worker | w in ws.workers
all w: Worker | w in Workstation
-- div,1
all wb : Workstation | Worker in wb.workers
one wb : Workstation | one w : Worker | w in wb.workers
-- div,1
all s : Workstation | some w : Worker | w in s.workers
all s : Worker | some w : Workstation | s in workers.s
-- div,1
all s : Workstation | some w : Worker | w in s.workers
all s : Worker | some w : Workstation | s in workers.w
-- div,1
all s : Workstation | some w : Worker | w in s.workers
all s : Worker | some w : Workstation | s->w in workers
-- div,1
all ws: Workstation | one w: Worker | w in ws.workers
all w: Worker | one ws: Workstation | w in ws.workers
-- div,4
all ws: Workstation | one w: Worker | w in ws.workers and
all w: Worker | one ws: Workstation | w in ws.workers
-- div,1
all wb : Workstation | one w : Worker | w in wb.workers
one wb : Workstation | all w : Worker | w in wb.workers
-- div,1
(some w : Worker | all ws : Workstation | w in ws.workers) and (all w : Worker | one ws : Workstation | w in ws.workers)
-- div,1
(all ws :  Workstation | some w :  Worker | w->ws in workers)
and
(all w :  Worker | one ws :  Workstation | w->ws in workers)
-- div,1
all wb : Workstation | one w : Worker | Worker in wb.workers
one wb : Workstation | all w : Worker | w in wb.workers
-- div,1
(all ws : Workstation | some w1 : Worker | w1->ws in workers)
and
(all w1 : Worker | one ws : Workstation | w1 -> ws in workers)
-- div,1
all ws : Workstation | some w1 : Worker | w1->ws in workers
all w1 : Worker | lone ws : Workstation | w1 -> ws in workers
-- div,1
all ws :  Workstation | some w :  Worker | w->ws in workstation
all w :  Worker | one ws :  Workstation | w->ws in workstation
-- div,2
all w: Workstation | some wo: Worker | w->wo in workers

all w: Worker | one work: Workstation | work->w in workstation
-- div,1
all ws: Workstation | some ws.workers
all w: Worker, ws1: Workstation, ws2: Workstation | w in ws1.workers implies w not in ws2.workers
-- div,1
all ws: Workstation | one w: Worker | ws.succ = none and w in ws.workers
all w: Worker | one ws: Workstation | ws.succ = none and w in ws.workers
-- div,1
all wb : Workstation | some (wb.workers & Worker)
all w : Worker | (w in Workstation.workers)
all wb1,wb2 : Workstation | all w : Worker | (w in wb1.workers) implies (w not in wb2.workers)
-- div,1
all wb : Workstation | some (wb.workers & Worker)
all w : Worker | one (w & Workstation.workers)
all wb1,wb2 : Workstation | all w : Worker | (w in wb1.workers) implies (w not in wb2.workers)
-- div,1
