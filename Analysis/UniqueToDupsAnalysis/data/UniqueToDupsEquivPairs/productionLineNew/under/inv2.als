-- equiv pair start,4
all x:Worker | one workers.x
-- div,1
all w:Workstation,wor:Worker |   one workers.wor
-- div,2
all wo:Worker | one w:Workstation | wo in w.workers
-- div,1
-- equiv pair end
-- equiv pair start,6
all w: Worker | lone w.workstation
-- div,1
all w : Worker | lone w & Workstation.workers
-- div,1
all ws1,ws2 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in ws1.succ
-- div,1
all ws1,ws2 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in succ.ws1
-- div,1
all ws1,ws2 : Workstation | all worker : Worker | worker in workers.ws1 implies worker not in workers.ws2 and ws1 != ws2
-- div,1
all ws1,ws2 : Workstation | all worker : Worker | worker in workers.ws1 implies worker not in ws2.workers and ws1 != ws2
-- div,1
-- equiv pair end
-- equiv pair start,23
all w:Workstation | some w.workers
-- div,1
all x: Workstation | some (x.workers)
-- div,1
all ws: Workstation| some ws.workers
-- div,4
all s : Workstation | #s.workers>0
-- div,1
all ws: Workstation | #(ws.workers) > 0
-- div,1
all w: Workstation| some p: Worker| p in w.workers
-- div,1
all x : Workstation | some y : Worker | y in x.workers
-- div,1
all w : Workstation | some t : Worker | t in w.workers
-- div,1
all w:Workstation| some x:Worker| w->x in workers
-- div,1
all ws: Workstation | some w: Worker | w in ws.workers
-- div,3
all w : Workstation | some t : Worker | t in w.workers and w in workers.t
-- div,1
all w : Workstation | some worker : Worker | worker in w.workers and
#(w.workers)>0
-- div,1
all ws : Workstation | some ws.workers
all ws : Workstation, w : Worker | w in ws.workers implies w not in ws.succ
-- div,1
all ws : Workstation | some w : Worker | w in ws.workers
all ws : Workstation, w : Worker | w in ws.workers implies w not in ws.succ
-- div,2
all w : Workstation | some worker : Worker | worker in w.workers
all w : Workstation | some worker : Worker | #(w.workers)>0
-- div,1
all ws : Workstation | some w : Worker | w in ws.workers
all ws,ws1 : Workstation, w : Worker | w in ws.workers implies w not in ws.succ
-- div,1
all ws : Workstation | some w : Worker | w in ws.workers
all ws,ws1 : Workstation, w : Worker | w in ws.workers && w in ws1.workers implies w != ws1
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | some Worker
-- div,1
-- equiv pair end
-- equiv pair start,6
all w : Worker | w in Workstation.workers
-- div,2
all w : Worker | one w & Workstation.workers
-- div,1
all w:Workstation,wor:Worker |   some workers.wor
-- div,1
all w:Worker | some a:Workstation | w in a.workers
-- div,1
all w : Worker | some ws : Workstation | w in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,3
all w:Workstation,wor:Worker |  some w.workers
-- div,2
all ws: Workstation | all w: Worker | some ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
some workers
all w : Worker | w in Workstation.workers
-- div,1
-- equiv pair end
-- equiv pair start,4
some Workstation.workers
all w : Worker | one workers.w
-- div,1
all w: Workstation | some workers
all w: Worker | (one work : Workstation | w in work.workers)
-- div,1
some w : Workstation | some w.workers
all w : Worker | one work : Workstation | w in work.workers
-- div,2
-- equiv pair end
-- equiv pair start,9
all ws: Workstation  | #ws.workers> 0  && one ws.workers.~workers
-- div,1
all s : Workstation | some s.workers
all w,x : Workstation | w != x implies no (w.workers & x.workers)
-- div,1
all s : Workstation | #s.workers>0
all w,x : Workstation | w != x implies no (w.workers & x.workers)
-- div,1
all ws : Workstation | some ws.workers
all ws,ws1 : Workstation, w : Worker | w in ws.workers && w in ws1.workers implies ws = ws1
-- div,1
all ws : Workstation | some ws.workers
all ws,ws1 : Workstation, w : Worker | w in ws.workers && ws != ws1 implies w not in ws1.workers
-- div,1
all x : Workstation | #(x.workers)>0
all x : Worker | all z,w : Workstation | (x in z.workers and z!=w) implies x not in w.workers
-- div,1
all x : Workstation | #(x.workers)>0
all x,y : Worker | all z,w : Workstation | (x in z.workers and y in w.workers and z!=w) implies x!=y
-- div,1
all x: Workstation | some y : Worker | y in x.workers
all x: Worker | all y, z : Workstation | x in y.workers and x in z.workers implies y = z
-- div,2
-- equiv pair end
-- equiv pair start,2
all w,x : Workstation | w != x implies no (w.workers & x.workers)
-- div,1
all s : Workstation | #s.workers>=0
all w,x : Workstation | w != x implies no (w.workers & x.workers)
-- div,1
-- equiv pair end
-- equiv pair start,2
all w:Workstation,wor:Worker | some w.workers and lone workers.wor
-- div,1
all w : Workstation | all worker : Worker | some w.workers and lone workers.worker
-- div,1
-- equiv pair end
-- equiv pair start,26
all x: Workstation, y: Worker | some (x.workers) && one (workers.y)
-- div,1
all ws: Workstation, w: Worker | some ws.workers and one workers.w
-- div,3
all w:Workstation,wor:Worker | some w.workers and one workers.wor
-- div,3
all ws: Workstation, w: Worker | some ws.workers  &&  one w.~workers
-- div,3
all ws: Workstation, w: Worker | #ws.workers>0 && #w.~workers = 1
-- div,1
all w : Workstation, worker : Worker | #w.workers>0 and #workers.worker=1
-- div,2
all ws: Workstation | all w: Worker | some ws.workers && one w.~workers
-- div,3
all w : Worker | all ws : Workstation | one (w.(~workers)) and some (ws.workers)
-- div,3
all ws: Workstation | all w: Worker | some ws.workers && #w.~workers=1
-- div,1
all w : Workstation | all worker : Worker | some w.workers and one workers.worker
-- div,1
all ws: Workstation | all w: Worker | #ws.workers> 0  && #w.~workers=1
-- div,2
all w : Workstation|all worker : Worker | #w.workers>0 and #workers.worker=1
-- div,1
all ws: Workstation | all w: Worker | one ws2: Workstation |#ws.workers> 0  &&  w in ws2.workers
-- div,1
all ws:Workstation, w1:Worker | one ws1:Workstation | some w:Worker | w in ws.workers and w1 in ws1.workers
-- div,1
-- equiv pair end
-- equiv pair start,9
all a : Worker, b : Workstation | some b.workers and some workers.a
-- div,1
all ws: Workstation, w: Worker | some ws.workers and some workers.w
-- div,1
all w:Workstation,wor:Worker |  some w.workers and some workers.wor
-- div,1
all w : Worker, wt : Workstation | #(wt.workers) > 0 and #(workers.w) > 0
-- div,1
all x : Workstation | all y : Worker | some x.workers and some workers.y
-- div,1
all a : Worker | all b : Workstation | some b.workers and some workers.a
-- div,1
all ws : Workstation, w : Worker | some ws.workers and w in Workstation.workers
-- div,1
all w : Workstation, worker : Worker | #w.workers>0 and #workers.worker>0
-- div,1
all w : Workstation, v : Worker | some worker : Worker | worker in w.workers and some workers.v
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation,wor:Worker |   some w.workers => some workers.wor
-- div,1
-- equiv pair end
-- equiv pair start,2
all w: Workstation| some p: Worker| p in w.workers and one workers.p
-- div,1
all w:Workstation| some x:Worker| w->x in workers and one workers.x
-- div,1
-- equiv pair end
-- equiv pair start,15
all x : Workstation | some x.workers and
all y : Worker | some workers.y
-- div,2
all w : Workstation | some w.workers
all w : Worker | some workers.w
-- div,1
all ws : Workstation | some ws.workers
all w : Worker | some workers.w
-- div,2
all w : Worker | #(workers.w) > 0
all  wt : Workstation | #(wt.workers) > 0
-- div,1
all W:Workstation | some W.workers
all w:Worker | one (Workstation.workers & w)
-- div,1
all w : Worker | one w & Workstation.workers
all ws: Workstation | some ws.workers
-- div,2
all ws : Workstation | some w : ws.workers | all w2 : Worker | w2 in Workstation.workers
-- div,1
all x : Workstation | #(x.workers) > 0
all x : Worker | some y : Workstation | x in y.workers
-- div,1
all ws : Workstation | #ws.workers > 0
all w : Worker | some ws : Workstation | w in ws.workers
-- div,1
all ws : Workstation | ws.workers != none
all w : Worker | some ws : Workstation | w in ws.workers
-- div,1
all w : Worker | some wor : Workstation | w in wor.workers
all wor : Workstation | some wor.workers
-- div,1
all x : Workstation | some y : Worker | y in x.workers
all x : Worker | some y : Workstation | x in y.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
some workers
all w,x : Workstation | w != x implies no (w.workers & x.workers)
-- div,1
-- equiv pair end
