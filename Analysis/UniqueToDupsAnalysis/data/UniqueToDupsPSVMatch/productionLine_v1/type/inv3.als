(position.~position)
-- div,1
all c: Component | c.position
-- div,1
all c:Component, p:Position | c.p
-- div,1
all r: Robot | r.position.~position
-- div,1
all c: Component | position[c.position]
-- div,1
all c: Component | c.position.~position
-- div,2
all c: Component | some c.position.Robot
-- div,1
all c: Component | some Robot[c.position]
-- div,2
all c:Component | some Robot.(c.position)
-- div,2
all c:Component | some (c.position).Robot
-- div,2
all c: Component | some c.(Robot.position)
-- div,1
all c: Component | some Robot.(c.position)
-- div,1
all c:Component | some Robot.~(c.position)
-- div,1
all c: Component | some position.c.position
-- div,2
all c: Component | some position(c.position)
-- div,1
all c: Component | some c.position.~position
-- div,1
all c: Component | some position.(c.position)
-- div,6
all c:Component | some (c.position).~position
-- div,1
all c : Component | some (c.position & Robot)
-- div,1
all c : Component | some position.(c.position)
-- div,2
all c:Component | some ((c.position).Position)
-- div,1
all c: Component | Robot.position & c.position
-- div,1
all c: Component | some (c.position).~position
-- div,1
all c:Component, p:Position | c->p in Position
-- div,1
all c: Component | c.position & Robot.position
-- div,1
all c: Component | let p = c.position | position.p
-- div,1
all c : Component | some r:Robot | r in c.position
-- div,1
all c:Component | some Robot.position in c.position
-- div,1
all c:Component | some c.position in Robot.position
-- div,1
all c:Component.position | some Robot.position in c
-- div,1
all c: Component | some Robot.position & c.Position
-- div,1
all c:Component | some (c.position && Robot.position)
-- div,1
all p : Component.position | some Robot->p in position
-- div,1
all c: Component | some (Robot:>position).(c.position)
-- div,2
all c: Component | let p = c.position | some position.p
-- div,1
all c:Component | some ((c.position) && Robot.position)
-- div,1
all c: Component | some (position:>Position).(c.position)
-- div,1
all c: Component | some (Position:>position).(c.position)
-- div,1
all c:Component | some r:Robot | r.Component = c.Component
-- div,1
all p : Position | some position.p implies some position.p
-- div,1
all p : Position | p in Component.position => some position.p
-- div,2
all c:Component, p:c.Position | some r:Robot | r.position = p
-- div,2
all p : Component.Position | some r : Robot | r->p in position
-- div,1
all c:Component, p:c.Position | (some r:Robot | r.position = p)
-- div,1
all c : Component | some p : Position | c.p implies some Robot.p
-- div,1
all c:Component, p:Position | p in c.position implies some Robot.p
-- div,1
all c:Component, p:Position | c->p in Position implies some (Robot.p)
-- div,1
all c : Component | some p : Position | some p.c implies some Robot.p
-- div,1
all c : Component | some p : Position | some c.p implies some Robot.p
-- div,5
all c: Component | some (position:>Position).(c.(Component:>position))
-- div,1
(Robot <: position).(Component <: Position.position) = (Robot <: position)
-- div,1
all c:Component, p:Position | some r : Robot | p in c.position implies some (r.p)
-- div,1
all c:Component, p:Position | some r:Robot | c.p in position implies r.p in Position
-- div,1
all c:Component, p:Position | some r : Robot | p in c.position implies some p in r.position
-- div,1
iden & Component->Robot in (Component:>(position.~position)).~(Component:>(position.~position))
-- div,2
