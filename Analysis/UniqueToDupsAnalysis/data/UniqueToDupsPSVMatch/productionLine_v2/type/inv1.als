Human or Robot
-- div,1
Worker in Human or Robot
-- div,1
all w:Worker | w in Human or Robot
-- div,3
all w : Worker | Human.w or Robot.w
-- div,1
all w : Worker | Human.w || Robot.w
-- div,1
all w : Worker | w in (Human || Robot)
-- div,1
all w : Worker | w is Human or w is Robot
-- div,1
all w:Worker | (w & Human) or (w & Robot)
-- div,1
all p : Worker implies p in Human | p in Robot
-- div,1
all h:Human,r:Robot |  h & Worker or r & Worker
-- div,1
all w:Worker | w in workers implies w in Human or w in Robot
-- div,1
all w:Worker | Workstation.w implies (w & Human or w & Robot)
-- div,1
(Workstation.workers & Human) or (Workstation.workers & Robot)
-- div,1
(Workstation.workers & Human) or  (Workstation.workers & Robot)
-- div,1
no (Workstation.workers & Human and Workstation.workers & Robot)
-- div,1
all h: Human, r: Robot| no h not in Worker and no r not in Worker
-- div,1
all w:Worker | all wo:Workstation | (wo.w & Human or wo.w & Robot)
-- div,1
all h: Human, r: Robot| (no h not in Worker) and (no r not in Worker)
-- div,1
(Workstation.workers & Human) implies no (Workstation.workers & Robot)
-- div,1
all w:Worker | w in (Workstation <: workers) implies w in Human or w in Robot
-- div,1
