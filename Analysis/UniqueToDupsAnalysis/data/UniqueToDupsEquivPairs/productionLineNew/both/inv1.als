-- equiv pair start,2
no Human & Worker
-- div,1
all w : Worker | no Human & Worker
-- div,1
-- equiv pair end
-- equiv pair start,1
some Human and some Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Worker | one (w&Human+Robot)
-- div,1
-- equiv pair end
-- equiv pair start,4
all r : Robot, h : Human | no (workers.r & workers.h)
-- div,2
all h : Human, r : Robot, w : Workstation | r in w.workers implies h not in w.workers
-- div,1
all h : Human, r : Robot, w : Workstation | r in w.workers implies no Human&w.workers
-- div,1
-- equiv pair end
-- equiv pair start,4
all w:Workstation | w.workers in Human or w.workers in Robot
-- div,2
all w : Workstation | w.workers in Robot or w.workers in Human
-- div,2
-- equiv pair end
-- equiv pair start,1
all w : Workstation | Robot in w.workers implies Human not in w.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (w.workers in Robot ) implies (no w.workers & Human) and (some w.workers)
-- div,1
-- equiv pair end
