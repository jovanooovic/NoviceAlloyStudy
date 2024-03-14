all c:Dangerous | no h:Human in c.wokstation.workers
-- div,1
(Dangerous & Components).workstation.workers in Robot
-- div,1
all c:Dangerous | no h:Human | h not in c.wokstation.workers
-- div,1
all d:Dangerous & Components, c:d.workstation | no (c.workers & Human)
-- div,1
all c: Component & Dangerous, ws: c.workstation | no w.workers & Human
-- div,1
all c:Component&Dangerous | no h:Human | h not in c.wokstation.workers
-- div,2
all x: Component | x in Dangerous -> no x.workstation.workers in Human
-- div,1
all c: Component & Dangerous | c.workstation not in (x.workers & Human)
-- div,1
all c: Component & Dangerous, ws: c.workstations | no w.workers & Human
-- div,1
all c: Components| c in Dangerous => c.workstation.workers not in Human
-- div,1
all c: Component & Dangerous, ws: c.worckstations | no w.workers & Human
-- div,1
all c : Components | c in Dangerous implies c.workstation.workers in Robot
-- div,1
all d : Dangerous, w: Worker | w in d.worksation.workers implies w in Robot
-- div,1
all c: Component | c in Dangerous implies  c.workstation.worker not in Human
-- div,1
all d: Component & Dangerous | all x : d.worksation | no (x.workers & Human)
-- div,1
all c: Component & Dangerous| all x: c.workstation| no (w.workers and Human)
-- div,1
all ws: Workstation | Dangerous in ws.^components => Human not in ws.workers
-- div,1
all d : Dangerous, w: Worker | w in s.worksattion.workers implies w in Robot
-- div,1
all c : Component | c == Dangerous implies Human not in c.workstation.workers
-- div,1
all c : Component | s in c.workstation implies c.workstation.workers in Human
-- div,1
aall c: Component & Dangerous | all x : c.workstation | no (x.workers & Human)
-- div,1
all c : Components & Dangerous | all x : c.workstation | no (x.workers & Human)
-- div,1
all c:Component |some w:Workstation |Dangerous in c implies (w.worksers & Robot)
-- div,1
all c : Components | all h : Human | c in Dangerous implies h not in c.workstation
-- div,1
all d : Dangerous | some d.worstation implies (d.workstation.workers) not in Human
-- div,1
all c : Components, h : Human | c in Dangerous implies h not in c.workstation.workers
-- div,1
all c: Components + Dangerous | no h: Human | some wc: c.workstation | h in wc.workers
-- div,1
all x:Worker,all z:Dangerous | all w:Workstation | w in z.workstation implies x in Robot
-- div,1
all c : component, w : Worker | c in Dangerous implies c.workstation.workers not in Human
-- div,1
all c: w.parts | all h: Human| all w: Workstation| c in Dangerous implies h not in w.workers
-- div,1
all c : Component, w : worker | c in Dangerous && w in c.workstation.workers implies w in Robot
-- div,1
all c : Component | Dangerous in c implies c.workstation.workers = c.workstation.workers & Robots
-- div,1
all d : Dangerous, ws : Workstation , h : Human | ws in c.workstation implies h not in ws.workstation
-- div,1
all c:Component, h:Human, w:Workstation | c in Dangerous and ws in c.workstation implies h not in ws.workers
-- div,1
all x : Component | all y : Workstation |y in c.workstation and c in Dangerous implies y.workers not in Human
-- div,1
all p : Product | all trab : Worker | all w : Workstation| (p in Dangerous and trab in w.workers) implies trab in Roboy
-- div,1
all c:Component | all ws:Workstation | c in Dangerous and w in c.workstation implies(all h:Human | h not in ws.workers )
-- div,1
all c:Components | all ws:Workstation | c in Dangerous and w in c.workstation implies(all h:Human | h not in ws.workers )
-- div,1
