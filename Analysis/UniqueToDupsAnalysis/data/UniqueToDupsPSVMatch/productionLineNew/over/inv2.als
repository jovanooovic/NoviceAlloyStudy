some Workstation.workers && one workstation.Worker
-- div,1
all ws : Workstation | some w : Worker | w in ws
-- div,1
all ws : Workstation | some ws.workers
all w : Worker | one succ.w
-- div,1
all w : Workstation | some w.workers
all w : Worker | one w.workers
-- div,1
all s : Workstation | some w : Worker | s.workers in s && one workers.s
-- div,1
all s : Workstation | some w : Worker | w in s.workers && one workers.s
-- div,1
all s : Workstation | #s.workers>0
all w: Worker | one w.workstation
-- div,1
all ws:Workstation | some ws.workers &&
all w:Worker | one w.workstation
-- div,2
all ws : Workstation | some ws.workers
all w : Worker | one workstation.w
-- div,1
all ws: Workstation | some (ws.workers)
all w: Worker | #(w.workstation) = 1
-- div,1
all ws: Workstation | #(ws.workers) > 0
all w: Worker | #(w.workstation) = 1
-- div,3
all w: Worker | #w.^workstation = 1
all ws: Workstation | #ws.workers > 0
-- div,1
all ws: Workstation | ws.workers != none && all w: ws.workers | w.workstation = ws
-- div,1
all p: Workstation | one p.workers
all x: Worker | one v: Workstation | x in v.workers
-- div,2
all ws : Workstation | some ws.workers
all w : Worker | one ws : Workstation | w in ws.workstation
-- div,1
some w : Workstation | some w.workers
all w : Worker | one work : Workstation | w in work.workstation
-- div,1
all wst : Workstation | some w : Worker | w in wst
all w : Worker | all wst : Workstation | w in wst
-- div,1
all ws : Workstation | some w : Worker | w in ws
all w : Worker | one ws : Workstation | w in ws.workers
-- div,1
all ws : Workstation | some ws.workers
all ws,ws1 : Workstation, w : Worker | w in ws.workers implies w not in ws1.workers
-- div,1
all w:Workstation | some h:Worker | h in workers.w
some w:Workstation | all h:Worker |h in workers.w
-- div,1
all ws : Workstation | some w : Worker | w in ws.workers
all ws,ws1 : Workstation, w : Worker |w in ws.workers && w in ws1.workers implies w = ws1
-- div,2
all ws : Workstation | some w : Worker | w in ws.workers
all ws,ws1 : Workstation, w,w1 : Worker |w in ws.workers && w in ws1.workers implies w = ws1
-- div,1
