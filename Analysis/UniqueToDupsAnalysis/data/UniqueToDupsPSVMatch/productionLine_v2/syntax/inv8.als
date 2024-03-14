no Human&(vworkstation).workers
-- div,1
all ws:Worstation |  ^parts.Dangerous
-- div,1
no (Dangerous.workstation & workers.Humans)
-- div,1
(Workstation.workstation).workers in Robots
-- div,1
all c : Component | c in Dangerous implies c in
-- div,2
all c:Dangerous, w:c.worstation.workrs | w not in Human
-- div,1
all c:Dangerous,ws:c.workstation.workers | w not in Human
-- div,1
al c:Dangerous, ws:c.workstations.workers | no ws & Human
-- div,1
all c: Dangerous, w: c.worstation.workers | w not in Human
-- div,1
all c:Dangerous, ws:c.workstations.workers | no ws & Human
-- div,1
all c: Dangerous, w: c.worstations.workers | w not in Human
-- div,1
all c: Component | c in Dangerous => Humans not in c.workstation
-- div,1
all c: Components | c in Dangerous => Humans not in c.workstation
-- div,1
all c: Component| c in Dangerous => c.workstation.workers not in Humans
-- div,1
all c : Component | c.parts in Danger iff c.workstation.workers in Robot
-- div,1
all c:Component | c in Dangerous implies c.workstation.workes not in Human
-- div,1
all c : Component | some (c & Danger) implies c.workstation.workers in Robot
-- div,1
all Componentes | c in Dangerous implies Human not in (c.workstation).wokers
-- div,1
all c : Component | c in Dangerous implies no ( c.worstaion.workers & Human )
-- div,1
all c: Components | c in Dangerous implies no (c.workstation.workers & Human)
-- div,1
all c : Component | c in dangerous implies no ( c.worstaion.workers & Human )
-- div,1
all c : Component | c in Dangerous implies (c.workstation).works not in Human
-- div,1
all c : Component | c in Dangerous implies no ( c.workstaion.workers & Human )
-- div,2
all c : Component | c in Dangerous implies c.workstation.workers not in Human )
-- div,1
all c: Componentes | c in Dangerous implies Human not in (c.workstation).workers
-- div,1
all c: Component, ws: c.workstation | c in Dangerous implies no w: workers.Human
-- div,1
all c:Component, ws:c.Worstation | c in Dangerous implies no w:ws.workers | w in Human
-- div,1
all c: Components, h:Human | c in Dangerous implies none c.workstation & h.workstation
-- div,1
all c:Component, ws:c.worstation | c in Dangerous implies no w:ws.workers | w in Human
-- div,1
all w:Workstation, d:Dangerous | d->w in worstation implies not some p:Human | w->p in workers
-- div,1
all c : Component | some d : Dangerous | c->d in parts implies (c->z in workers and z in Robot)
-- div,1
all p:Product,wt:Workstation | wt in p.workstation and p in Dangerous implies wt.workes in Robot
-- div,1
all c: Component, w: Workstatio | c in Dangerous and w in c.workstation implies Human not in w.workers
-- div,1
all d : Dangerous | all w : Workstation | all h : Human | w in d.workstaion implies h not in w.workers
-- div,2
all c: Component | all w: worker | all ws: Workstation | c in Dangerous and w in c.ws implies w in Robot
-- div,1
all c: Component, w: Workstation h: Human | c in Dangerous and w in c.workstation imples h not in w.workers
-- div,2
all c: Component, w: Workstation, h: Human | c in Dangerous and w in c.workstation imples h not in w.workers
-- div,1
all c:Component, ws:Workstation | c in Dangerous and c->ws in workstation => (not some h:Human h in workers)
-- div,1
all c : Component | all ws : Workstation | c in Dangerous and ws in c.workstation implies ws.workes in Robot
-- div,1
all c : Component | all w : Workstation | c in Dangerous and w in c.workstation
implies Human not in w.workers)
-- div,1
all c : Component | all ws : Workstation | c in Dangerous and w in c.workstation implies w.workers not in Human
-- div,1
all d,ws | ws in Workstation and d in Dangerous implies all w : Worker | ws->w in workers implies w not in Human
-- div,1
all c : Component | all ws : Workstation | c in Dangerous and ws in c.workstation implies
(Human not in w.workers)
-- div,1
all c : Component | c in Dangerous implies
(all w : Workstation | w in c.workstation implies Human not in w.workers))
-- div,1
all c:Component | some ws:Workstation | c in Dangerous and c->ws in workstation implies all h:Human ws->h not in workers
-- div,1
all p: Component | all h: Human | all ws: Workstation
p in Dangerous and h in ws.workers implies ws not in p.workstation
-- div,2
all c : Component | all w: Workstation |
c in Dangerous and w in c.workstatio implies
(all h : Human | h not in w.workers)
-- div,1
all c : Component | all w: Workstation |
c in Dangerous and w in c.worstation implies
(all h : Human | h not in w.workers)
-- div,1
all c : Component | all p : Product | all w : Workker | (p in Dangerous and p in c.^(parts) and w in c.workstation.workers) implies w not in Human
-- div,1
