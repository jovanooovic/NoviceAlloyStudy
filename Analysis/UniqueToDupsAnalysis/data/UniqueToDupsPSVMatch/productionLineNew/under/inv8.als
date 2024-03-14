all c:Product | c in Dangerous implies no (c.workers & Human)
-- div,1
all wc: Human.workstation | no d: Dangerous | d in wc
-- div,1
all c:Component | c in Dangerous implies workstation.c.workers in Robot
-- div,1
all c : Component | all x : workstation.c | no ( x.workers & Human)
-- div,1
all c : Dangerous | (all h : Human | c not in workstation.workstation.h)
-- div,2
all c : Component | c in Dangerous => no (workstation.c.workers & Human)
-- div,3
all c: Component & Dangerous | all x: c.workstation | no ( x & Human)
-- div,1
all c : Component | all h : Human | c in Dangerous implies h not in c.workstation
-- div,1
all ws : Workstation | (ws.workers & Dangerous) = none or (ws.workers & Human) = none
-- div,1
all c : Component, ws : workstation.c | c in Dangerous => no (Human & ws.workers)
-- div,1
all c : Component | c in Dangerous implies (all h : Human | c not in workstation.workstation.h)
-- div,1
all c : Component | c in Dangerous => all ws : workstation.c | no (ws.workers & Human)
-- div,1
all d:Dangerous, h:Human, ws:Workstation | ws in d.workstation implies ws not in h.workstation
-- div,1
all d : Dangerous, ws : Workstation , h : Human | ws in d.workstation implies h not in ws.workstation
-- div,1
all h: Human| all w: Workstation| all c: w.parts | c in Dangerous implies h not in w.workers
-- div,1
all x : Component | all y : Workstation |y in y.workstation and y in Dangerous implies y.workers not in Human
-- div,1
all x : Component | all y : Workstation |y in x.workstation and y in Dangerous implies y.workers not in Human
-- div,1
all c: Component| all h: Human| all w: Workstation| w in workstation.c and c.parts in Dangerous implies h not in w.workers
-- div,1
all c: Component| all h: Human| all w: Workstation| c.parts in Dangerous and w in workstation.c implies h not in w.workers
-- div,2
