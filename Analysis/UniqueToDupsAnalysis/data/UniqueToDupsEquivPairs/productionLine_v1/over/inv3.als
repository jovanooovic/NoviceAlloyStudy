-- equiv pair start,2
all c:Component| c.position = Robot.position
-- div,2
-- equiv pair end
-- equiv pair start,1
all c:Component, p:Position | p in c.position
-- div,1
-- equiv pair end
-- equiv pair start,1
some r:Robot | Component.position = r.position
-- div,1
-- equiv pair end
