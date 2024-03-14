some Component.postion
-- div,1
all c: Component | some Robot.[c.position]
-- div,1
all c: Component | some position(.c.position)
-- div,1
all c: Component | some c.position.~rposition
-- div,1
all c: Component | Robot/position[c.position]
-- div,1
all c : Component | some Robot.position $ c.position
-- div,1
all c: Component | some (Robot/position).(c.position)
-- div,1
all c: Component | some (position<:Robot)(.c.position)
-- div,1
all c:Component | some r.Robot |  r.positon in c.position
-- div,1
all c:Component | some r.Robot |  c.position in r.position
-- div,1
all c:Component | some r:Robot | r.component = c.component
-- div,1
all c: Component , some r:Robot | r->(c.position) in position
-- div,1
all p : Position | p in Component.position => some positionr.p
-- div,1
all c:Component, p:c.Position | some r:Robot | r.position == p
-- div,1
all c: Component, c.position | some r: Robot | p in r.position
-- div,1
all c: Component | some (position<:(Robot->Position))(.c.position)
-- div,2
all c:Component, p:Position | p in c.position
-- div,1
all c: Component , some r:Robot | r->(c.position) in Robot<:position
-- div,1
all c: Component | some (position:>Position).(c.(Component:>position)
-- div,1
all c: Component | some r: Robot | r.position = c.position
-- div,2
