all w : Workstation | not (w.workers & Human+Robot)
-- div,1
all ws : Workstation | no (Robot & Human in ws.workers)
-- div,1
all ws : Workstation | no (Human & Robot) in ws.workers
-- div,1
all w:Workstation |all a:w.workers | no Human.a & Robot.a
-- div,2
all w: Workstation | w.workers & Human or w.workers & Robot
-- div,1
all w : Workstation | no ( w.workers.Human & w.workers.Robot)
-- div,1
all w: Workstation | (w.workers & Human) or (w.workers & Robot)
-- div,1
all w:Workstation |  (w.workers & Human) or  (w.workers & Robot)
-- div,1
all w: Workstation | no(w.workers & Human) or (w.workers & Robot)
-- div,1
all w : Workstation | (w.workers & Human) -> w.workers & Robot = {}
-- div,5
all w:Workstation | Human in w.workers implies no Robot in w.workers
-- div,1
all w: Workstation | no(w.workers and Human) or no(w.workers & Robot)
-- div,1
all ws: Workstation | no (Human in ws.workers and Robot in ws.workers)
-- div,3
all w: Workstation | #w.workers in Human = 0 or #w.workers in Robot = 0
-- div,1
all  ws: Workstation | ws.workers & Human implies not ws.workers & Robot
-- div,1
all c:Workstation | no (c.workers and Human) or no (c.workers and Robot)
-- div,1
all w: Workstation | (#w.workers in Human) =0 or (#w.workers in Robot) = 0
-- div,1
all w:Workstation,wo:Worker| (w.workers & Human) <=> no (w.workers & Robot)
-- div,1
all w: Workstation | #(w.workers in Human) = 0 or #(w.workers in Robot) = 0
-- div,2
all w: Workstation | (#w.workers in Human) = 0 or (#w.workers in Robot) = 0
-- div,1
all w:Workstation, wo:Worker | no ((w.workers & Human) and (w.workers & Robot))
-- div,1
all w:Worker, ws:Workstation | w in ws.workers implies (w & Human) or
(w & Robot)
-- div,1
all w : Workstation | some h : Human, r : Robot | h in w.workers implies no r in w.workers
-- div,1
all r : Robot | all ws : workstation | r in ws.workers iff (not(some h : Human| h in ws.workers))
-- div,1
all h : Human | all r : Robot | all ws : workstation | r in ws.workers implies h not in ws.workers
-- div,1
all r : Robot | all ws : workstation | (r in ws.workers) iff (not(some h : Human| h in ws.workers))
-- div,1
all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) iff (not(h in ws.workers))
-- div,1
all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) implies (h not in ws.workers)
-- div,1
all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) implies (not(h in ws.workers))
-- div,1
all w: Workstation | (Robot in w.workers => no Human in w.workers) or (Human in w.workers => Robot not in w.workers)
-- div,1
all ws: Workstation | (ws.workers in Human implies ws.workers not in Robot) & (ws.workers in Robot implies ws.workers not in Human)
-- div,1
