-- equiv pair start,4
all w: Worker | one w.workstation
-- div,1
all w:Workstation,wor:Worker | some w.workers and one workers.w
-- div,1
all ws:Workstation, w:Worker | (some w.workstation) and (some ws.workers)
-- div,1
all ws: Workstation | all w: Worker | some ws.workers && one w.workers
-- div,1
-- equiv pair end
-- equiv pair start,3
some Workstation.workers && one workers.Worker
-- div,3
-- equiv pair end
-- equiv pair start,17
all w: Worker, ws: Workstation | w in ws.workers
-- div,2
all ws:Workstation, w:Worker | (w in ws.workers)
-- div,1
all wk:Workstation, w:Worker | wk->w in workers
-- div,1
all w : Worker | all s : Workstation | w in s.workers
-- div,1
all w : Workstation | all t : Worker | t in w.workers
-- div,1
all x : Workstation | all y : Worker | y in x.workers
-- div,1
all wst : Workstation | all w : Worker | w in wst.workers
-- div,1
all ws: Workstation, w: Worker | some ws.workers && w in ws.workers
-- div,1
all w: Worker, ws: Workstation | w in ws.workers and some ws.workers
-- div,1
all w : Worker | all s : Workstation | w in s.workers and some s.workers
-- div,1
all w : Workstation | all t : Worker | t in w.workers and w in workers.t
-- div,1
all ws: Workstation | all w: Worker | some ws.workers && w in ws.workers
-- div,2
all w : Workstation | all worker : Worker | worker in w.workers and #(w.workers)>0
-- div,1
all ws:Workstation, w:Worker | w in ws.workers and (some ws1: Workstation | w in ws1.workers)
-- div,1
(all ws: Workstation, w:Worker | w in ws.workers)
and
(all w:Worker | all ws:Workstation | w in ws.workers)
-- div,1
-- equiv pair end
-- equiv pair start,5
all w: Workstation| one k: Worker | k in w.workers
-- div,1
all w:Workstation| some x:Worker| w->x in workers and one w.workers
-- div,1
all x: Workstation | some y : Worker | y in x.workers
all x, y: Worker , z : Workstation | z in workers.x and z in workers.y implies x = y
-- div,1
all x: Workstation | some y : Worker | y in x.workers
all x, y: Worker , z : Workstation | x in z.workers and y in z.workers implies x = y
-- div,2
-- equiv pair end
-- equiv pair start,1
all w : Worker, wt : Workstation | #(wt.workers) > 1
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | lone w : Worker | w in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
all wk:Workstation, w:Worker | wk->w in workers and one wk.workers
-- div,1
all wk:Workstation, w:Worker | wk->w in workers and one Workstation.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws: Workstation | all w: Worker | #ws.workers>2 && #w.~workers=1
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws: Workstation | all w: Worker | some ws.workers && one ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Worker, wt : Workstation | #(wt.workers) > 1 and w in wt.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Worker | all s : Workstation | w in s.workers <=> some s.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Worker, wt : Workstation | #(wt.workers) = 1 and #(workers.w) = 1
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Worker, wt : Workstation | #(wt.workers) > 1 and #(workers.w) = 1
-- div,1
all ws: Workstation | all w: Worker | #ws.workers>1 && #w.~workers=1
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Worker, wt : Workstation | #(wt.workers) > 1 and #(workers.w) > 1
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws: Workstation | #(ws.workers) > 0
all w: Worker | one w->workstation
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Workstation | one p.workers
all x: Worker | x in Workstation.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
(all w: Workstation | some r: Worker | r in w.workers) && one workers.Worker
-- div,2
-- equiv pair end
-- equiv pair start,1
some w : Workstation | all worker : Worker | worker in w.workers and
#(w.workers)>0
-- div,1
-- equiv pair end
-- equiv pair start,8
all w: Worker, ws: Workstation | w in ws.workers
all ws: Workstation | some ws.workers
-- div,1
all w : Worker | all s : Workstation | w in s.workers
all s : Workstation | some s.workers
-- div,1
all x : Workstation | #(x.workers) > 0
all x : Worker | all y : Workstation | x in y.workers
-- div,1
all trab : Worker |all w : Workstation |  trab in w.workers
all w : Workstation | #(w.workers)>0
-- div,1
all w : Worker | all ws: Workstation | one w & ws.workers
all ws: Workstation | some ws.workers
-- div,1
all worker : Worker |all w : Workstation |  worker in w.workers
all w : Workstation | #(w.workers)>0
-- div,1
all w : Workstation | all worker : Worker | worker in w.workers
all w : Workstation | #(w.workers)>0
-- div,1
all wst : Workstation | some w : Worker | w in wst.workers
all w : Worker | all wst : Workstation | w in wst.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation | some h:Worker | h in w.workers
some w:Workstation | all h:Worker |h in w.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws1 : Workstation | all worker : Worker | worker in ws1.workers and worker not in ws1.succ.workers
-- div,1
-- equiv pair end
-- equiv pair start,5
all ws : Workstation | all worker : Worker | worker in ws.workers implies worker not in ws.succ.workers
-- div,1
all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in ws1.succ.workers
-- div,4
-- equiv pair end
-- equiv pair start,4
all ws1,ws2 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in ws2.workers
-- div,1
all ws1 : Workstation | all w1,w2 : Worker | w1 in ws1.workers  and w2 in ws1.workers implies w1 != w2
-- div,1
all ws1,ws2 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in ws2.workers and ws1 != ws2
-- div,2
-- equiv pair end
-- equiv pair start,1
all ws1 : Workstation | some worker : Worker | worker in ws1.workers implies worker not in ws1.succ.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
(all ws: Workstation, w:Worker | w in ws.workers)
and
(all ws:Workstation | one w:Worker | w in ws.workers)
-- div,1
-- equiv pair end
-- equiv pair start,3
(all ws:Workstation | all w:Worker | w in ws.workers) and
(all w:Worker | one ws:Workstation | w in ws.workers)
-- div,1
( all work : Workstation | all w : Worker | work->w in workers)
and
(all w : Worker | one ws : Workstation | ws->w in workers)
-- div,1
all x: Workstation | all y : Worker | y in x.workers
all x: Worker | all y, z : Workstation | x in y.workers and x in z.workers implies y = z
-- div,1
-- equiv pair end
-- equiv pair start,1
(all ws:Workstation | all w:Worker | w in ws.workers) and (one ws:Workstation | all w:Worker | w in ws.workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws1,ws2 : Workstation | some worker : Worker | worker in ws1.workers implies worker not in ws2.workers and ws1 != ws2
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in ws1.succ.workers and no succ.workers.worker
-- div,1
-- equiv pair end
