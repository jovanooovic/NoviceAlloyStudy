workers in Workstation one -> some Worker
-- div,2
some workers
workers in Workstation one -> some Worker
-- div,1
all x : Workstation | some x.workers and
all y : Worker | one workers.y
-- div,2
all x: Workstation | some (x.workers)
all y: Worker | one (workers.y)
-- div,1
all w:Workstation | some w.workers
all w:Worker | one workers.w
-- div,4
all a : Workstation | some a.workers
all b : Worker | one workers.b
-- div,1
all x:Workstation | some x.workers
all x:Worker | one workers.x
-- div,7
all ws: Workstation | some ws.workers
all w: Worker | one workers.w
-- div,13
workers in Workstation one -> some Worker

all ws : Workstation | some ws.workers
-- div,1
all w:Workstation | some w.workers
all wo:Worker | one workers.wo
-- div,2
all w : Workstation | some (w.workers)
all w : Worker | one (w.~workers)
-- div,1
(all ws : Workstation | some ws.workers) and (all wo : Worker | one workers.wo)
-- div,2
all ws: Workstation | some ws.workers  &&  all  w: Worker | one w.~workers
-- div,1
all w : Worker | one (w.(~workers))
all ws : Workstation | some (ws.workers)
-- div,1
all ws: Workstation | some ws.workers
all w: Worker | one w.~workers
-- div,1
all w:Workstation| #w.workers>0
all w:Worker | #workers.w=1
-- div,2
all w : Worker | #(workers.w) = 1
all  wt : Workstation | #(wt.workers) > 0
-- div,2
all w : Workstation | some w.workers
all worker : Worker |  one workers.worker
-- div,1
all w : Workstation | #w.workers>0
all worker : Worker | #workers.worker=1
-- div,1
(all w: Workstation| some p: Worker| p in w.workers) && (all p: Worker| one workers.p)
-- div,1
(all w: Workstation | some r: Worker | r in w.workers) && (all w: Worker | one workers.w)
-- div,2
(all x: Workstation| some w: Worker| w in x.workers) && (all w: Worker| one workers.w)
-- div,1
all ws : Workstation | some ws.workers
all ws,ws1 : Workstation, w : Worker | one workers.w
-- div,1
workers in Workstation one -> some Worker
all w,x : Workstation | w != x implies no (w.workers & x.workers)
-- div,2
all a:Worker|(one w:Workstation | a in w.workers)
all w:Workstation | some w.workers
-- div,1
all W:Workstation | some W.workers
all w:Worker | one W:Workstation | w in W.workers
-- div,1
all s : Workstation | some s.workers
all w : Worker | one s : Workstation | w in s.workers
-- div,1
all p: Workstation | some p.workers
all x: Worker | one v: Workstation | x in v.workers
-- div,2
all x : Workstation | #(x.workers)>0

all x : Worker | one w :Workstation  | x in w.workers
-- div,1
all x : Workstation | #(x.workers) > 0
all x : Worker | one y : Workstation | x in y.workers
-- div,1
all w: Worker| one ws:Workstation| w in ws.workers
all ws:Workstation| some ws.workers
-- div,2
all ws:Workstation | some ws.workers
all w : Worker | one ws:Workstation | w in ws.workers
-- div,7
all ws : Workstation | #ws.workers > 0
all w : Worker | one ws : Workstation | w in ws.workers
-- div,2
all w:Workstation | some w.workers
all w:Worker | one work:Workstation|  w in work.workers
-- div,15
all ws : Workstation | ws.workers != none
all w : Worker | one ws : Workstation | w in ws.workers
-- div,3
all trab : Worker |one w : Workstation |  trab in w.workers
all w : Workstation | #(w.workers)>0
-- div,1
all w : Worker | one wor : Workstation | w in wor.workers
all wor : Workstation | some wor.workers
-- div,1
all w : Worker | one ws: Workstation | one w & ws.workers
all ws: Workstation | some ws.workers
-- div,1
all ws : Workstation | #ws.workers > 0
all w: Worker | (one work : Workstation | w in work.workers)
-- div,1
all w: Workstation | some w.workers
all w1: Worker | one works: Workstation | w1 in works.workers
-- div,1
all w : Worker | one ws: Workstation | some w & ws.workers
all ws: Workstation | some ws.workers
-- div,1
(all s : Workstation | some w : Worker | w in s.workers)
and
(all w : Worker | one ws : Workstation| w in ws.workers)
-- div,1
(all ws : Workstation | (some w : Worker | w in ws.workers)) and (all w :Worker | one ws : Workstation | ws in workers.w)
-- div,1
all wo:Worker | one w:Workstation | wo in w.workers
all w:Workstation | some wo:Worker | wo in w.workers
-- div,1
all ws: Workstation| some w: Worker | w in ws.workers
all w: Worker | one ws: Workstation | w in ws.workers
-- div,11
all w: Worker |
one ws: Workstation |
w in ws.workers
all ws: Workstation |
some w: Worker |
w in ws.workers
-- div,2
(all ws: Workstation | some w: Worker | ws -> w in workers)
and
(all w:Worker | one ws:Workstation | ws -> w in workers)
-- div,2
all ws: Workstation | some w: Worker | ws -> w in workers
and
all w:Worker | one ws:Workstation | ws -> w in workers
-- div,1
all ws : Workstation | some w : Worker | #ws.workers > 0
all w : Worker | one ws : Workstation | w in ws.workers
-- div,1
(all ws:Workstation | some w:Worker | w in ws.workers)
and
(all w1:Worker | one ws1:Workstation | w1 in ws1.workers)
-- div,1
all ws:Workstation | some w:Worker | w in ws.workers and (all wk:Worker | one ws1:Workstation | wk in ws1.workers)
-- div,1
all w: Workstation |some wo: Worker | wo in w.workers
all w: Worker | one work : Workstation | w in work.workers
-- div,3
all ws: Workstation | some w:Worker | w in ws.workers
all w: Worker | one work : Workstation | w in work.workers
-- div,2
all wk:Workstation | some w:Worker | wk in workers.w and (all w2:Worker | one wk2:Workstation | w2 in wk2.workers)
-- div,1
all ws : Workstation | some w : Worker | w in ws.workers and (all w2 : Worker | one work : Workstation | w2 in work.workers)
-- div,1
( all work : Workstation | some w : Worker | work->w in workers)
and
(all w : Worker | one ws : Workstation | ws->w in workers)
-- div,1
all x: Workstation | some y : Worker | y in x.workers
all x: Worker | some y : Workstation | x in y.workers
all x: Worker | all y, z : Workstation | x in y.workers and x in z.workers implies y = z
-- div,2
