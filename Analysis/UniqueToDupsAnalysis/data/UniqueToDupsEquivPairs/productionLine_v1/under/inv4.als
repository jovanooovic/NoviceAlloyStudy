-- equiv pair start,20

-- div,4
no prev[Component]
-- div,2
no Resource.parts
-- div,1
all c:Component |  one ((c.position))
-- div,1
all c:Component | no((c.^parts & Resource).position  & c.position.^next)
-- div,1
all c:Component | c.position not in c.position.^next
-- div,4
all c: Component , p : c.parts | p not in nexts[c.position]
-- div,2
all c:Component | no (c.parts & c.position.~^next)
-- div,1
all c: Component , p : c.parts | p not in nexts[p.position]
-- div,1
all c:Component | no (c.parts & c.parts.position.~^next)
-- div,1
Component.^parts.position in Component.position.prevs + Component.position
-- div,1
all p : Position | no (position.p <: Component) & (position.(p.^next) <: Component)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | ((c.^parts) & Component).position not in (c.position).^next or no (c.^parts & Component)
-- div,1
-- equiv pair end
