Dangerous.workstation.workers in Robot
-- div,1
no Component.workstation & workers.Human
-- div,1
~workers.((~workstation).Dangerous) in Robot
-- div,1
~workers.((~workstation).Component) in Robot
-- div,1
~workers.~workstation.Dangerous in Robot
-- div,1
(Component & Dangerous).workstation.workers in Robot
-- div,2
all c:Dangerous | c.workstation.workers in Robot
-- div,1
all d : Dangerous | d.workstation.workers in Robot
-- div,4
all c : Component | (c . workstation . workers) in Robot
-- div,1
all c:Component| no c.workstation.workers & Human
-- div,1
all c: Component | c in Dangerous implies no workers.Human
-- div,1
all c : Component, h : Human | h not in c.workstation.workers
-- div,1
all c: Component, w: Worker | c in Dangerous implies w in Robot
-- div,1
all c : Component & Dangerous | c.workstation.workers in Robot
-- div,1
all c:Component | c in Dangerous  => c.workstation.workers in Robot
-- div,10
all c : Component | all w : Worker | c in Dangerous implies w not in Human
-- div,1
all w : Worker | all c : Component | c in Dangerous implies w not in Human
-- div,1
all c : Component | c in Dangerous implies (c.workstation).~workers not in Human
-- div,1
all c:Component,ws:Workstation | no c.workstation.workers & Human
-- div,1
all c : Component | some (c & Dangerous) implies c.workstation.workers in Robot
-- div,2
all w : Workstation | some Dangerous & workstation.w => w.workers in Robot
-- div,2
all d : Dangerous, h : Human, w : Workstation | d -> w in workstation and not w -> h in workers
-- div,1
all c:Component, ws:Workstation | c in Dangerous implies no w:ws.workers | w in Human
-- div,2
all p:Product, ws:Workstation | ws in p.workstation and p in Dangerous implies ws.workers in Robot
-- div,1
all p:Product,wt:Workstation | wt in p.workstation and p in Dangerous implies wt.workers in Robot
-- div,1
all c: Component | all w: Worker | c in Dangerous and w in c.workstation.workers implies w in Robot
-- div,2
all c : Component | all w : Workstation | c in Dangerous and w in c.workstation implies w.workers in Robot
-- div,2
all c : Component | all ws : Workstation | c in Dangerous and ws in c.workstation implies ws.workers in Robot
-- div,1
all d,ws : univ | ws in Workstation and d in Dangerous implies all w : Worker | ws->w in workers implies w not in Human
-- div,1
all c: Component, w: Worker, ws: Workstation | c in Dangerous and ws in c.workstation and w in ws.workers implies w in Robot
-- div,1
all c: Component, w: Worker, ws: Workstation | c in Dangerous and ws in c.workstation implies w in Robot and w in ws.workers
-- div,1
all c:Component, w : Worker, wks : Workstation | (c in Dangerous and c->wks in workstation and wks->w in workers) implies w in Robot
-- div,1
all c : Component | all w : Worker | all ws : Workstation | c in Dangerous and w in c.workstation.workers implies  w in Robot
-- div,1
all c: Component , ws: Workstation | c in Dangerous and ws in c.workstation implies (all w: Worker | w in ws.workers implies w in Robot)
-- div,1
all c:Component, w : Worker, wks : Workstation, p : Product | (c in Dangerous and c->wks in workstation and wks->w in workers) implies w in Robot
-- div,1
