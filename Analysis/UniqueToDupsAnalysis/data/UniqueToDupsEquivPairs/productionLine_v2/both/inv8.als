-- equiv pair start,1
Human not in Dangerous.workstation.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
no Dangerous.parts.workstation.workers & Human
-- div,1
no (Dangerous.parts-Material).workstation.workers & Human
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws:Workstation, c:Dangerous | c in workstation.ws
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component, w : c.workstation | c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | c.workstation.workers not in Human
-- div,1
-- equiv pair end
-- equiv pair start,3
all d : Dangerous | d.workstation.workers not in Human
-- div,3
-- equiv pair end
-- equiv pair start,1
no Dangerous.parts-Material.workstation.workers & Human
-- div,1
-- equiv pair end
-- equiv pair start,1
(Component & Dangerous).workstation.workers not in Human
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | (Dangerous.workstation).workers not in Human
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Product | p in Dangerous implies (Robot in p.workstation)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | c in Dangerous implies Human not in c.workstation
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | Dangerous in workstation.w => w.workers in Robot
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Component | c in Dangerous => Human not in c.workstation.workers
-- div,3
-- equiv pair end
-- equiv pair start,1
all p : Product | p in Dangerous implies (Robot in p.workstation.workers)
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Component | c in Dangerous implies ( c.workstation.workers in Human )
-- div,2
all c:Component,ws:c.workstation | c in Dangerous implies no w: ws.workers | w not in Human
-- div,1
-- equiv pair end
-- equiv pair start,20
all d : Dangerous | d in Component  implies (d.workstation).workers not in Human
-- div,1
all c: Component | c in Dangerous => c.workstation.workers not in Human
-- div,19
-- equiv pair end
-- equiv pair start,2
all ws:Workstation, c:Dangerous | c in workstation.ws implies ws.workers not in Human
-- div,1
all c : Component | all w : Workstation | c in Dangerous and w in c.workstation implies w.workers not in Human
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component, w:Worker | c in Dangerous implies no c.workstation & w.workers and w in Human
-- div,1
-- equiv pair end
-- equiv pair start,8
all c: Component, w: Workstation | c in Dangerous and w in c.workstation implies Human not in w.workers
-- div,1
all c : Component | all w : Workstation | c in Dangerous and w in c.workstation implies Human not in w.workers
-- div,5
all c : Component | c in Dangerous implies
(all w : Workstation |
w in c.workstation implies Human not in w.workers)
-- div,1
all c : Component | all ws : Workstation | c in Dangerous and ws in c.workstation implies
(Human not in ws.workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws: Workstation | all c : Component & Dangerous | ws in c.workstation implies no (ws.workers & Robot)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Product | p in Dangerous implies (Robot in p.workstation.workers and Human not in p.workstation.workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | some d : Dangerous | c->d in parts implies (some w : Worker | c->w in workers and w in Robot)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | some ws:Workstation | c in Dangerous and c->ws in workstation implies all w:Worker | w in Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | c in Dangerous implies (Robot in c.workstation.workers and Human not in c.workstation.workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | some d : Dangerous | c->d in parts implies (all w : Worker | c->w in workers implies w in Robot)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | c in Dangerous implies some r : Robot | some w : Workstation | r in w.workers and w in c.workstation
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | all wb : Workstation | one h : Human | (c in Dangerous and h in wb.workers) implies wb not in c.workstation
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | all p : Product | all w : Worker | (p in Dangerous and p in c.^(parts) and w in c.workstation.workers) implies w not in Human
-- div,1
-- equiv pair end
