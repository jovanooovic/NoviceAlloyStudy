no Dangerous.Workstation & workers.Human
-- div,1
no (workers.Human and Dangerous.workstation)
-- div,2
all x: Dangerous | no x.workstation.workers in Human
-- div,1
all d : Dangerous | no Human in d.workstation.workers
-- div,1
all c : Component & Dangerous | not (c.workstation & Human)
-- div,1
all c : Component & Dangerous | no c.workstation.workers in Human
-- div,1
all c : Component | c in Dangerous => no Human in workstation.c.workers
-- div,1
all c: Component | c.Dangerous implies  c.workstation.worker not in Human
-- div,1
all c:Component & Dangerous |all w: c.Workstation | no (w.workers & Human)
-- div,2
all c: Component & Dangerous| all x: c.workstation| no (x.workers and Human)
-- div,1
all c:Component |some w:Workstation |Dangerous in c implies (w.workers & Robot)
-- div,1
all c: Component, h: Human | c.Dangerous and h in c.workstation =>
not h.Worker
-- div,2
all c:Component |all w:Workstation | Dangerous in c implies (w.workers & Robot)
-- div,1
all c:Component, ws:Workstation, w:Worker | c in Dangerous and ws in c.ws implies w not in ws.workers
-- div,1
all c:Component, ws:Workstation | c in Dangerous and ws in c.ws implies (all h:Human | h not in ws.workers)
-- div,1
