all d : Dangerous | d.workstation.workers not in Human
-- div,10
all d : Dangerous | Human not in d.workstation.workers
-- div,1
all x: Dangerous | x.workstation.workers not in Human
-- div,1
all c : Component & Dangerous | c.workstation.workers not in Human
-- div,1
all dc : Component & Dangerous | Human not in dc.workstation.workers
-- div,1
all c : Component | c = Dangerous implies Human not in c.workstation.workers
-- div,1
all c : Component | c in Dangerous implies c.workstation.workers in Human
-- div,1
all c : Component | c in Dangerous implies Human not in c.workstation.workers
-- div,1
all c: Component| c in Dangerous => c.workstation.workers not in Human
-- div,8
all x:Component| x in Dangerous implies x.workstation.workers not in Human
-- div,7
all c : Component | Dangerous in c implies no c.workstation.workers & Human
-- div,2
all d : Dangerous | some d.workstation implies (d.workstation.workers) not in Human
-- div,1
all c : Component | Dangerous in c.^parts implies no c.workstation.workers & Human
-- div,1
all c : Component, h : Human | c in Dangerous implies c.workstation.workers not in Human
-- div,1
all c : Component, w : Worker | c in Dangerous implies c.workstation.workers not in Human
-- div,1
all p : Dangerous & Component | all ws : p.workstation | one Human & ws.workers
-- div,1
all c:Component|all w:c.workstation |c in Dangerous implies Human not in w.workers
-- div,1
all c:Component, w:Worker | c in Dangerous implies (c.workstation.workers & w in Human)
-- div,1
all c : Component | some h : Human | c in Dangerous => h not in c.workstation.workers
-- div,1
all c : Component | Dangerous in c implies c.workstation.workers = c.workstation.workers & Robot
-- div,1
all d : Dangerous, ws : Workstation , h : Human | ws in d.workstation and h not in ws.workstation
-- div,1
all x : Component | all y : Workstation |y in x.workstation and x in Dangerous implies y.workers not in Human
-- div,1
all c: Component| all h: Human| all w: Workstation| c.parts in Dangerous implies h not in w.workers
-- div,2
all c:Component, ws:Workstation | c in Dangerous and ws in c.workstation implies( all w:Worker | w in ws.workers and w in Human )
-- div,1
