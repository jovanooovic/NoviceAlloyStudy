-- equiv pair start,101
no Human&(Dangerous.workstation).workers
-- div,4
no Dangerous.workstation & workers.Human
-- div,4
no Dangerous.workstation.workers & Human
-- div,14
Dangerous.workstation.workers & Human = none
-- div,1
no (Dangerous & Component).workstation.workers & Human
-- div,2
no (Component & Dangerous).workstation.workers & Human
-- div,1
no Human & (Component & Dangerous).workstation.workers
-- div,1
all d : Dangerous | d not in workstation.workers.Human
-- div,2
all d:Dangerous | no Human&d.workstation.workers
-- div,2
all d : Dangerous | no d.workstation.workers&Human
-- div,5
all c:Dangerous | no c.workstation.workers & Human
-- div,5
all c:Dangerous,w:c.workstation.workers | w not in Human
-- div,5
all d : Dangerous, h : Human | h not in (d.workstation).workers
-- div,1
all c:Dangerous, ws:c.workstation.workers | no ws & Human
-- div,1
all c:Dangerous, ws:c.workstation | no ws.workers & Human
-- div,1
all c:Dangerous,ws:c.workstation,w: ws.workers | w not in Human
-- div,4
all c: Component | c in Dangerous => no (Human & c.workstation.workers)
-- div,1
all c: Component | c in Dangerous => no (c.workstation.workers & Human)
-- div,8
all c:Dangerous,ws:c.workstation | no w: ws.workers | w in Human
-- div,1
all c:Dangerous, h:Human | c in Component => h not in c.workstation.workers
-- div,1
all c:Component, h:Human | c in Dangerous => h not in c.workstation.workers
-- div,6
all c:Dangerous, ws:c.workstation | all w:ws.workers | w not in Human
-- div,2
all c: Component, h:Human | c in Dangerous implies no c.workstation & workers.h
-- div,1
all d : Dangerous, h : Human, w : Workstation | d -> w in workstation => not w -> h in workers
-- div,1
all c:Dangerous, ws:c.workstation | c in Dangerous implies no w:ws.workers | w in Human
-- div,1
all c:Component, ws:c.workstation | c in Dangerous implies no w:ws.workers | w in Human
-- div,6
all w:Workstation, d:Dangerous | d->w in workstation implies not some p:Human | w->p in workers
-- div,1
all c : Component | all w : Worker | (c in Dangerous and w in c.workstation.workers) implies w not in Human
-- div,1
all c: Component, ws: Workstation | c in Dangerous and c->ws in workstation implies no ws.workers&Human
-- div,1
all d : Dangerous | all w : Workstation | all h : Human | w in d.workstation implies h not in w.workers
-- div,1
all c: Component, w: Workstation, h: Human | c in Dangerous and w in c.workstation implies h not in w.workers
-- div,2
all c:Component, ws:Workstation | c in Dangerous and c->ws in workstation => (not some h:Human| ws->h in workers)
-- div,1
all c: Component, w: Worker, ws: Workstation | c in Dangerous and ws in c.workstation and w in ws.workers implies w not in Human
-- div,1
all c : Component | all w: Workstation |
c in Dangerous and w in c.workstation implies
(all h : Human | h not in w.workers)
-- div,5
all c:Component, ws:Workstation, w:Worker | c->ws in workstation and c in Dangerous and ws->w in workers implies w not in Human
-- div,1
all c : Component | all ws : Workstation | c in Dangerous and ws in c.workstation implies
(all h : Human | h not in ws.workers)
-- div,1
all p: Component | all h: Human | all ws: Workstation |
p in Dangerous and h in ws.workers implies ws not in p.workstation
-- div,2
all com: Component | all ws: Workstation | all h: Human | ws in com.workstation and com in Dangerous implies h not in ws.workers
-- div,1
all d,ws : univ | ws in Workstation and d in Dangerous and d->ws in workstation implies all w : Worker | ws->w in workers implies w not in Human
-- div,1
all c:Component,ws:c.workstation | c in Dangerous implies no w: ws.workers | w in Human
all c:Dangerous,ws:c.workstation | no w: ws.workers | w in Human
all c:Dangerous,ws:c.workstation,w: ws.workers | w not in Human
all c:Dangerous | no c.workstation.workers & Human
no Dangerous.workstation.workers & Human
-- div,1
-- equiv pair end
