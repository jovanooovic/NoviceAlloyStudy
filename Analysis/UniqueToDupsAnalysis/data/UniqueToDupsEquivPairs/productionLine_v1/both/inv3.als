-- equiv pair start,1
some Component.position
-- div,1
-- equiv pair end
-- equiv pair start,2
Robot = position.(Component.position)
-- div,1
Robot in position.(Component.position)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | some c.parts.position
-- div,1
-- equiv pair end
-- equiv pair start,1
some Component.position & Robot.position
-- div,1
-- equiv pair end
-- equiv pair start,8
all c:Component | Robot.position in c.position
-- div,1
all c:Component, r:Robot | c.position = r.position
-- div,2
all c:Component, r:Robot | c.position in r.position
-- div,1
all c: Component, r: Robot | one c.position & r.position
-- div,1
all c:Component.position, r:Robot | some r.position & c
-- div,1
all c: Component, r: Robot | some c.position & r.position
-- div,1
all c : Component | all r:Robot | r.position = c.position
-- div,1
-- equiv pair end
-- equiv pair start,2
(Robot <: position).(Component <: Position.position) = (Robot <: position).Position
-- div,1
(Robot <: position).(Component <: Position.position) = (Robot <: position.Position)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component,p:Product, r:Robot,pos1,pos2:Position| c->p in parts and p->pos1 in position and r->pos2 in position implies pos1=pos2
-- div,1
-- equiv pair end
