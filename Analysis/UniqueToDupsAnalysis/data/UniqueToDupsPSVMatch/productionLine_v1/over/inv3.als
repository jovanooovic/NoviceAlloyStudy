all c:Component| c.position = Robot.position
-- div,2
some r:Robot | Component.position = r.position
-- div,1
all c:Component, p:Position | p in c.position
-- div,1
