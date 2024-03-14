-- equiv pair start,1
all w: Worker | w in Robot or w in Human
-- div,1
-- equiv pair end
-- equiv pair start,1
all h: Human, r:Robot | h.~workers != r.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all h: Human, r:Robot | h.~workers != r.~workers
-- div,1
-- equiv pair end
-- equiv pair start,2
all x: Workstation.workers | x in Human or x in Robot
-- div,1
all w:Worker, ws:Workstation | w in ws.workers implies (w in Human) or (w in Robot)
-- div,1
-- equiv pair end
-- equiv pair start,2
Human in Workstation.workers implies Robot not in Workstation.workers
-- div,1
Human in Workstation.workers implies Robot not in Workstation.workers
Robot in Workstation.workers implies Human not in Workstation.workers
-- div,1
-- equiv pair end
-- equiv pair start,2
all w:Workstation | Human in w.workers implies Robot not in w.workers
-- div,1
all w: Workstation | (Robot in w.workers => Human not in w.workers) or (Human in w.workers => Robot not in w.workers)
-- div,1
-- equiv pair end
-- equiv pair start,8
all w : Workstation | (w.workers in Robot) implies
(w.workers not in Human)
-- div,1
all ws : Workstation | some w : Worker | (w in ws.workers and w in Robot) <=> ws.workers in Robot
-- div,1
all ws: Workstation | (ws.workers in Human implies ws.workers not in Robot) and (ws.workers in Robot implies ws.workers not in Human)
-- div,1
all ws : Workstation | (ws.workers in Human implies (ws.workers not in Robot)) or
(ws.workers in Robot implies (ws.workers not in Human))
-- div,1
all ws : Workstation | (ws.workers in Human implies not ws.workers in Robot) and
(ws.workers in Robot implies not ws.workers in Human)
-- div,1
all ws : Workstation | (ws.workers in Human implies not ws.workers in Robot) or
(ws.workers in Robot implies not ws.workers in Human)
-- div,2
all ws: Workstation | (ws.workers in Human implies ws.workers not in Robot)
all ws: Workstation | (ws.workers in Robot implies ws.workers not in Human)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | Worker in ws.workers implies Robot not in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | (Human not in ws.workers iff Robot not in ws.workers)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (w.workers - Human = Robot) or (w.workers - Human = none)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation| all h: Human| some r: Robot| h in w.workers => r not in w.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | all h : Human, r : Robot | h in ws.workers and r in ws.workers
-- div,1
-- equiv pair end
-- equiv pair start,3
no w : Workstation | all h : Human | all r : Robot | (h in w.workers) and (r in w.workers)
-- div,3
-- equiv pair end
-- equiv pair start,3
all ws : Workstation | some w : Worker | (w in ws.workers and w in Robot) implies ws.workers in Robot
-- div,1
all ws : Workstation | some w : Worker | (w in ws.workers and w in Robot) implies ws.workers not in Human
-- div,1
all ws: Workstation| some w: Worker | w in Human and w in ws.workers => ws.workers not in Robot
all ws: Workstation |some  w: Worker | w in Robot and w in ws.workers => ws.workers not in Human
-- div,1
-- equiv pair end
-- equiv pair start,2
all ws : Workstation | (Human not in ws.workers and Robot in ws.workers) or (Human in ws.workers and Robot not in ws.workers)
-- div,1
all ws : Workstation | (Human not in ws.workers iff Robot in ws.workers) and (Human in ws.workers iff Robot not in ws.workers)
-- div,1
-- equiv pair end
