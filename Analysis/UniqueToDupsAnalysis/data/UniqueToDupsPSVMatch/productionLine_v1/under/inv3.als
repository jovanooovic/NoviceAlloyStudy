all c:Component | some Robot
-- div,1
all c:Component | some (c.position)
-- div,3
all c:Component | c.parts.position in Robot.position
-- div,1
all c:Component | c.^parts.position in Robot.position
-- div,1
all c:Component, p:Position | some r : Robot | p in c.position implies some Robot
-- div,1
all c:Component,p:Product |some r:Robot,pos1,pos2:Position| c->p in parts and p->pos1 in position and r->pos2 in position implies pos1=pos2
-- div,1
