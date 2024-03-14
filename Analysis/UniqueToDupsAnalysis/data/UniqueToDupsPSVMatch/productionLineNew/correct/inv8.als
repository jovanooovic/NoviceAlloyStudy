no (workers.Human & Dangerous.workstation)
-- div,2
no Dangerous.workstation & workers.Human
-- div,4
no ((Component & Dangerous).workstation.workers) & Human
-- div,1
all d: Dangerous, ws : d.workstation | no (ws.workers & Human)
-- div,1
all c: Dangerous, ws : c.workstation | no (ws.workers & Human)
-- div,1
all c:Component&Dangerous | no c.workstation.workers&Human
-- div,2
all dc : Component & Dangerous | no (dc.workstation.workers & Human)
-- div,1
all c : Dangerous | (all h : Human | c not in workstation.workers.h)
-- div,1
all c:Product | c in Dangerous implies no (c.workstation.workers & Human)
-- div,1
all c : Component | c in Dangerous => no (c.workstation.workers & Human)
-- div,2
all d:Dangerous & Component, c:d.workstation | no (c.workers & Human)
-- div,1
all c : Component | c in Dangerous implies #(c.workstation.workers & Human) = 0
-- div,1
all c: Component & Dangerous, ws: c.workstation | no ws.workers & Human
-- div,1
all c: Component, h: Human |
(c in Dangerous) => (h !in c.workstation.workers)
-- div,3
all c:Component & Dangerous | all w:c.workstation | no (w.workers & Human)
-- div,3
all c: Component & Dangerous| all s: c.workstation| no (s.workers & Human)
-- div,1
all c: Component & Dangerous| all x: c.workstation| no (x.workers & Human)
-- div,19
all c : Dangerous & Component | all x : c.workstation | no ( x.workers & Human)
-- div,1
all d: Component & Dangerous | all x : d.workstation | no (x.workers & Human)
-- div,1
all c : Component, ws : c.workstation | c in Dangerous => no (Human & ws.workers)
-- div,1
all d : Dangerous | all w: d.workstation | no h : Human | h in w.workers
-- div,1
all d : Dangerous | all w : Worker | (w in d.workstation.workers) implies (w not in Human)
-- div,2
all c : Component & Dangerous | all ws : c.workstation | no (ws.workers & Human)
-- div,1
all p : Dangerous & Component | all ws : p.workstation | no Human & ws.workers
-- div,2
all c : Component | all h : Human | c in Dangerous => h not in c.workstation.workers
-- div,1
all c: Component| all x : c.workstation | c in Dangerous => no (x.workers & Human)
-- div,1
all d:Dangerous, h:Human, ws:Workstation | ws in d.workstation implies h not in ws.workers
-- div,1
all d:Dangerous & Component, c:d.workstation, w:Worker | w in c.workers => w not in Human
-- div,1
all c:Component| all ws:c.workstation| all w : ws.workers| c in Dangerous implies w not in Human
-- div,1
all c:Component, h:Human, ws:Workstation | c in Dangerous and ws in c.workstation implies (h not in ws.workers)
-- div,1
all d : Dangerous, h : Human, ws1, ws2 : Workstation | h in ws1.workers and ws2 in d.workstation implies ws1 != ws2
-- div,1
all c : Component, wk: Workstation | c in Dangerous and wk in c.workstation implies (all h : Human | h not in wk.workers)
-- div,1
all c:Component, ws:Workstation | c in Dangerous and ws in c.workstation implies (all h:Human | h not in ws.workers)
-- div,3
all c:Component | all ws:Workstation | c in Dangerous and ws in c.workstation implies(all h:Human | h not in ws.workers )
-- div,2
