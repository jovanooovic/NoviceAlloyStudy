all w: workstation | some w.workstation
-- div,1
all x: Worker| all s: Workstation| #s.workers.x=1
-- div,1
all ws:Workstation, w:Worker | some w in ws.workers
-- div,1
all x: Worker| all s: Workstation| one x in s.worker
-- div,1
all ws: Workstation, w: Worker | some w in ws.workers
-- div,2
all x: Worker| all s: Workstation| #s.workstation.x=1
-- div,1
all x: Worker| all s: Workstation| one x in s.workers
-- div,1
all x: Worker| all s: Workstation| #(x in s.workers)=1
-- div,1
all x: Worker| all s: Workstation| one (x in s.workers)
-- div,1
all w:Worker | all a:Workstation | some (w in a.workers)
-- div,1
all x : Workstation | all y : Worker | some y in x.workers
-- div,1
all x : Workstation | all y : Worker | some (y in x.workers)
-- div,2
all w:Workstation,wor:Worker |  w.workers and one workers.wor
-- div,1
all w: Workstation, t: Worker | some t.workstation and one t.w
-- div,1
all ws: Workstation, w: Worker | #(ws.workers) > 0 and one w.ws
-- div,1
all ws: Workstation, w: Worker | #(ws.workers) > 0 and one ws.w
-- div,1
all w:Workstation,wor:Worker | set w.workers and one workers.wor
-- div,1
all w:Workstation | some w.workers
all w:Worker | one Workstation.w
-- div,1
all w : Worker | all s : Workstation | w in s.workers and s.workers
-- div,1
all ws: Workstation | all w: Worker | ws.workers>1 && #w.~workers=1
-- div,1
all worker : Worker | worker in workers and no worker in succ.workers
-- div,1
all x: Workstation | some x.workers
all x: Worker | some x.Workstation
-- div,1
all worker : Worker | worker in workers and worker not in succ.workers
-- div,1
all workstation: Workstation, worker: Worker| some workstation.Workstation
-- div,6
all ws: Workstation | #(ws.workers) > 0
all w: Worker | #(w.Workstation) = 1
-- div,2
all ws: Workstation | #(ws.workers) > 0
all w: Worker | #(w.(Workstation)) = 1
-- div,5
all ws: Workstation | #(ws.workers) > 0
all w: Worker | one (w.workstation) = 1
-- div,1
all ws: Workstation | all w: Worker | some ws.workers  &&  (one w) in ws.workers
-- div,1
all ws:Workstation | some ws.workers
all w : Worker | one ws:workstation | w in ws.workers
-- div,1
all w : Worker | one ws: Workstation | w & ws.workers
all ws: Workstation | some ws.workers
-- div,1
all w: workstation | some w.workers
all w: Worker | one workers.w
-- div,1
all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in succ
-- div,1
all ws : Workstation | some ws.workers
all w : Worker | one ws : workstation | w in ws.workers
-- div,1
all w:Workstation | some w.Worker
all w: Worker | (one work : Workstation | w in work.workers)
-- div,1
all w: Workstation | some w.workers
all w: Worker | one works: workstation | w in works.workers
-- div,1
all w : Workstation | some worker : Worker | worker in w.workers
and
all wo : Worker | workers.wo
-- div,1
all w: Workstation | some w.workers
all w: Worker | (one work : Workstation | w in work->workers)
-- div,1
all w: workstation | some w.workstation
all w: Worker | one workstation.w
-- div,2
all ws : Workstation | all worker : Worker | some ws.workers.worker and no worker in ws.succ.workers
-- div,1
all w : Workstation | #w.workers > 0
all p : Worker | one w : Workstation | p in workstation.workers
-- div,1
all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies no worker in succ.workers
-- div,2
all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in succ.workers
-- div,1
some ws1 : Workstation | all worker : Worker | worker in ws1.workers implies no worker in succ.workers
-- div,1
all ws1 : Workstation | all worker : Worker |some worker in ws1.workers and no worker in ws1.succ.workers
-- div,1
all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies no worker in ws1.succ.workers
-- div,1
some ws1 : Workstation | all worker : Worker | worker in workers.ws1 implies no worker in ws1.succ.workers
-- div,1
all ws : Workstation | some w : Worker | ws.workers
all w : Worker | one ws : Workstation | w in ws.workers
-- div,1
all ws1 : Workstation | all worker : Worker |some worker in ws1.workers implies no worker in ws1.succ.workers
-- div,1
all ws1 : Workstation | all worker : Worker | some worker in ws1.workers implies no worker in ws1.succ.workers
-- div,1
all w: Worker, ws: Workstation |
(ws.workers[w]) => (ws in w.workstation)
all ws: Workstation | #ws.workers > 0
-- div,1
all ws1 : Workstation | all worker : Worker | some worker in ws1.workers implies worker not in ws1.succ.workers
-- div,1
all w: Worker, ws: Workstation |
(ws.workers[w]) => (ws in w.workstation)
all ws: Workstation |
#ws.workers > 0
-- div,1
(all ws:Workstation | some w:Worker | w in ws.workers)
and
(all w1:Worker | one ws1:workstation | w1 in ws1.workers)
-- div,1
all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in ws1.succ.workers and no succ.*(workers.worker)
-- div,1
all ws:Workstation | some w:Worker | w in ws.workers
and
all w1:Worker | one ws1:workstation | w1 in ws.workers
-- div,1
