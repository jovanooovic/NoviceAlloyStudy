all w: Workstation |
-- div,1
all s in Workstation | #s.workers>0
-- div,1
all x: Workstation | x.workers not empty
-- div,1
some Workstation.workers && one workers.y
-- div,1
all w:Workstation, some x:Worker| w->x in workers
-- div,2
all x: Workstation | lone x.workers
-- div,1
all x: Workstation | some x.workers
-- div,1
all x: Workstation | #(x.workers) != 0
-- div,1
all x: Worker| all s: Workstation| #(x in s.worker)=1
-- div,1
all w : Worker , one ws:Workstation | w in ws.workers
-- div,1
all w : Workstation, v : Worker | some worker : Worker
-- div,2
all w:Workstation| #w.wokers>0
all w:Worker | #works.w=1
-- div,1
all w:Workstation| #w.workers>0
all w:Worker | #works.w=1
-- div,1
all worker : Worker | some w.workers and one workers.worker
-- div,1
all w:Worker, ws:Workstation | some w -> one ws in ws.workers
-- div,1
all w:Worker| s:Workstation | w in s.workers and #s.worker > 0
-- div,1
all w : Workstation| #w.workers>0
all w : Worker | #w.worker=1
-- div,1
all w Workstation | some w.workers
all w Worker | one workers.w
-- div,1
all w: Workstation | some w.workers
all w: Worker | one works.w
-- div,1
all w:Worker| s:Workstation | w in s.workers and s.worker != none
-- div,1
all ws : Workstation, w : Worker | some ws.workers & one workers.w
-- div,1
all w : Worksation | some w.workers
all w : Worker | some workers.w
-- div,1
all w:Workstation, some x:Worker| w->x in workers and one workers.x
-- div,1
all ws: Workstation | #(ws.workers) > 0
all w: Worker | #(w.ws) = 1
-- div,1
all w : Worktation | some w.workers
all w : Worker | some workers.w
-- div,1
all ws: Workstation | some w: ws.workers && one ws.workers.~workers
-- div,1
all ws: Workstation | w: Worker | some ws.workers && w in ws.workers
-- div,1
all w : Workstation | some w.workers
all wo : Worker | one workers.w
-- div,1
some Workstation.workers | all w : Worker | w in Workstation.workers
-- div,1
all x in Workstation | some x.workers
all y in Worker | one workers.y
-- div,1
all s in Workstation | #s.workers>0
all w: Worker | one w.workstation
-- div,1
all ws in Workstation | #w.workers>0
all w: Worker | one w.workstation
-- div,1
all x: Workstation | some x.workers
all x: Worker | some Workstation.x
-- div,1
all ws : Workstation | some w : Worker | #ws.workers > 0
all w : Worker
-- div,1
all w : Worker | one w & Workstation.workers | some Workstation.workers
-- div,1
all ws in Workstation | #ws.workers>0
all w: Worker | one w.workstation
-- div,1
all ws: Workstation | some ws.workers  &&  all  w: Worker one w.~workers
-- div,1
all w : Worker, wt : Workstation | #(wt.workers) == 1 and #(workers.w) = 1
-- div,1
all ws: Workstation | #(ws.workers) > 0
all w: Worker | one w in Workstation
-- div,1
all ws:Workstation | some ws.workers and (all w:Workers | one w.workstation)
-- div,1
all x: Workstation | some y: Worker | y in x.workers
-- div,1
all ws: Workstation | some w: ws.workers
all w: Worker | one ws: w.workstation
-- div,2
all ws: Workstation | #(ws.workers) > 0
all w: Worker | #(w.Workstation) = 1
}
-- div,1
all w:Worker| s:Workstation | w in s.workers
all s:Workstation| some s.workers
-- div,1
all ws:Workstation | some ws.workers
all w : Worker | one ws.workstation | ws.w
-- div,1
all w:Workers | s:Workstation | w in s.workers
all s:Workstation| some s.workers
-- div,1
all x: Workstation | some x.workers
all x: Worker | x in one Workstation.workers
-- div,1
all ws : Workstation | some ws.workers | all w : Worker | w in Workstation.workers
-- div,3
all ws : Workstation | some sw.workers | all w : Worker | w in Workstation.workers
-- div,2
all a:worker|one w:Workstation | a in w.workers
all w:Workstation | some w.workers
-- div,1
all w : Worker | one w & Workstation.workers | all ws: Workstation | some ws.workers
-- div,1
all a:worker|(one w:Workstation | a in w.workers)
all w:Workstation | some w.workers
-- div,1
all w : Worker | lone w & Workstation.workers | all ws : Workstation | some ws.workers
-- div,1
all ws: Workstation | #(ws.workers) > 0
all w: Worker | w in Workstation and one w->ws
-- div,1
all w : Workers | s : Workstation | w in s.workers
all s : Workstation | some s.workers
-- div,1
all ws:Workstation | some ws.workers
all w : Worker, one ws:Workstation | w in ws.workers
-- div,1
all ws:Workstation | some ws.workers
all w : Worker | one ws.workstation |w in ws.workers
-- div,1
all w : Workers | all s : Workstation | w in s.workers
all s : Workstation | some s.workers
-- div,1
all x : Workstation | #(x.workers)>0

all x : Worker | one Workstation : w | x in w.workers
-- div,2
all w:Workstation | some h:Worker
all w: Worker | (one work : Workstation | w in work.workers)
-- div,1
(all ws:Workstation | all w:Worker | w in ws.workers) and (one ws:Workstation | w in ws.workers)
-- div,1
all ws:Workstation | all w:Worker | w in ws.workeres implies (one wss:Worstation | wss in workers.w)
-- div,1
all ws in Workstation | #w.workers>0
all w,x : Workstation | w != x implies no (w.workers & x.workers)
-- div,4
all ws : Workstation | all worker : Worker | worker in ws.workers implies worker not in ws1.succ.workers
-- div,1
all w:Worker, ws:Workstation | some w -> one ws in ws.workers

workers in Workstation one -> some Worker
-- div,1
all ws1 : Workstation | all w1,w2 : Worker | w1 in ws1.workers  and w2 in ws1.workers implies ws1 != ws2
-- div,1
(all ws: Workstation, w:Worker | w in ws.workers)
and
(all ws:Workstion | one w:Worker | w in ws.workers)
-- div,1
all ws: Workstation | #(ws.workers) > 0
all w: Worker | one w->Workstation
-- div,1
all x: Workstation | some x.workers
all x: Worker | x in Workstation.workers
-- div,1
all ws:Workstation | some w:Worker | w in ws.workeres
and
all w:Worker |one wss:Worstation | w in wss.workers)
-- div,1
all ws: Workstation| some w: worker | w in ws.workers
all w: worker | one ws: Workstation | w in ws.workstation
-- div,1
all ws:Workstation | some w:Workers | w in ws.workers
and
all w1:Worker | one ws1:workstation | w1 in ws.workers
-- div,1
all ws : Workstation | some w : Workers| w in ws.workers
all w : Worker | one ws : Workstation | w in ws.workers
-- div,1
all ws:Workstation | some w:Worker | w in ws.workers and (all wk:Worker | one ws1:Worktation | wk in ws1.workers)
-- div,1
(all ws:Workstation | some w:Worker | w in ws.workers)
and
(all w1:Worker | one ws1:workstation | w1 in ws.workers)
-- div,1
(all s : Workstation | some w : Worker | w in s.workers)
and
(all w : Worker | one ws : Workstation| w in s.workers)
-- div,1
all w: Workstation | some wo : Workers | wo in w.workers
all w: Worker | (one work : Workstation | w in work.workers)
-- div,1
all ws1,ws2 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in ws2.wokers and ws1 != ws2
-- div,1
all ws : Workstation | some w : Worker | w in ws.workers and (all w2 : Worker | one work : WorkStation | w2 in work.workers)
-- div,1
all x: Workstation | some x.workers
all x: Worker | some y: Workstation | x in y.workers
-- div,1
all x: Workstation | some y : Worker | y in x.workers
all x Worker , y , z : Workstation | x in y.workes and x in z.workers implies y = z
-- div,1
all x: Workstation | some y : Worker | y in x.wokers
all x, y: Worker , z : Workstation | x in z.workers and y in z.workers implies x = y
-- div,2
all x: Workstation | some y : Worker | y in x.workers
all x Worker | all y, z : Workstation | x in y.workes and x in z.workers implies y = z
-- div,1
all x: Workstation | some y : Worker | y in x.workers
all x: Worker | all y, z : Workstation | x in y.workes and x in z.workers implies y = z
-- div,1
