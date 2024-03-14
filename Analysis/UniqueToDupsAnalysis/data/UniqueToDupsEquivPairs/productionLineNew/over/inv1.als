-- equiv pair start,2
Human&Robot not in Robot
-- div,1
Human&Robot not in Worker
-- div,1
-- equiv pair end
-- equiv pair start,1
Worker in Human or Worker in Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Worker | w in Robot && w in Human
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Worker | w in Human and w not in Robot
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Worker | (w in Human or w in Robot) and no Human & Worker
-- div,1
-- equiv pair end
