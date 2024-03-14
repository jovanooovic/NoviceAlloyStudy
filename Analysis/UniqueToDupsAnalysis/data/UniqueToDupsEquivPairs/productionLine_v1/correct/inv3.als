-- equiv pair start,63
Component.position in Robot.position
-- div,10
all c:Component | c.position in Robot.position
-- div,6
all c:Component | some c.position & Robot.position
-- div,14
all c : Component | some position.(c.position) & Robot
-- div,2
all c: Component | some Robot.position & c.position
-- div,5
all c : Component, p : c.position | some (Robot <: position).p
-- div,2
all c: Component | some Robot<:position.(c.position)
-- div,2
all c:Component | some r:Robot | c.position = r.position
-- div,4
all c:Component | some r:Robot | r.position = c.position
-- div,5
all c:Component | some r:Robot | c.position in r.position
-- div,1
all c : Component | some r : Robot | r.position in c.position
-- div,2
all c: Component | let p = c.position | some Robot <: position.p
-- div,1
all p : Component.position | some r : Robot | r->p in position
-- div,3
all c:Component, p:Position | some(c.position & Robot.position)
-- div,1
all c:Component, p:c.position | some r:Robot | r.position = p
-- div,2
all c: Component, p: c.position | some r: Robot | p in r.position
-- div,1
all p : Position | some position.p & Component implies some position.p & Robot
-- div,1
all c:Component | all p:(c.position) | some r:Robot | r.position in p
-- div,1
-- equiv pair end
