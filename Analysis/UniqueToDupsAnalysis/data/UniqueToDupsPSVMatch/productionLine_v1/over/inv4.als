all c : Component | no c.parts.position
-- div,1
all c: Component | c.position.lt[(c.position).position]
-- div,1
all c : Component | c.parts.position = c.position
-- div,2
all c:Component | c.parts.position in c.position
-- div,1
all c : Component, p : c.parts | p not in c.^parts
-- div,1
all c:Component | (c.position) = (c.^parts).position
-- div,2
all c:Component |  one ((c.position) + (c.parts).position)
-- div,1
all c:Component | one (c.position) + (c.^parts).position
-- div,3
all disj c, c1 : Component | c.position.lt[c1.position]
-- div,1
all c:Component | all p:c.parts | p not in c.^parts
-- div,1
all c : Component | (c.parts & Component).position = c.position
-- div,2
all c:Component | no  c.parts.position.~^next
-- div,1
all c:Component | c.parts in c.position.~^next
-- div,5
all c: Component| c.parts.position in prevs[c.position]
-- div,2
all c:Component | c.parts in (c.^position.~^next)
-- div,1
all c:Component | c.position in c.position.~^next
-- div,1
all c: Component | c.^parts.position in c.position.prevs
-- div,4
all c: Component, p: c.parts | gt[c.position, p.position]
-- div,1
all c: Component, p: c.parts | gte[c.position, p.position]
-- div,1
all c:Component | c.parts.position in c.position.~next
-- div,1
all c : Component, pos : c.position, p : c.parts | p.position = pos
-- div,1
all c:Component | c.parts.position in c.position.~^next
-- div,1
all c: Component | (c.parts).position in (c.position).^~next
-- div,1
all c: Component| always c.parts.position in prevs[c.position]
-- div,1
all c: Component , p : c.parts | p.position not in nexts[c.position]
-- div,2
all c : Component, p : c.parts | p.position in c.position.prev
-- div,1
all c: Component, p: c.parts & Component | gt[c.position, p.position]
-- div,1
all c : Component, pos : c.position | all p : c.parts | p.position = pos
-- div,1
all c: Component | let parts = c.parts | lte[parts.position, c.position]
-- div,1
all c : Component | all p : c.parts | p in c.position.prevs.parts
-- div,1
all c : Component | all x: c.parts | x.position not in c.position.nexts
-- div,1
all c : Component | all p : c.parts | p.position not in nexts[c.position]
-- div,1
all c: Component | ((c.^parts) & Component).position not in (c.position).*next
-- div,1
all c: Component | c.^parts.position in prevs[c.parts.position] + c.position
-- div,2
all c : Component | ((c.parts & Component).position = c.position) or no (c.parts & Component)
-- div,1
all c: Component | no {p: Product | p.position in ^next[c.position]}
-- div,1
all c: Component | c.^parts.position in (prevs[c.^parts.position] + c.position)
-- div,1
all c: Component, p: c.^parts | p.position in c.position.prev + c.position
-- div,2
all c:Component, p:c.parts | p in Component implies c.position in p.position.nexts
-- div,1
all c : Component | all x: c.parts & Component | x.position in c.position.prevs
-- div,1
all c:Component | all p:Product | p in c.parts => c.position in nexts[p.position]
-- div,1
all c: Component | no {p: Product | p.position in ^next[c.position]} & c.parts
-- div,2
all c : Component | all p : c.parts | some pos : c.position.prevs | p.position = pos
-- div,1
all p : Position | no (position.p <: Component).parts & (position.(p.^next) <: Component).*parts
-- div,1
all p : Position | no (position.p <: Component).*parts & (position.(p.^next) <: Component).*parts
-- div,1
all c:Component | all p:Product | p in c.parts => c.position in nexts[p.position] && p.position in prevs[c.position]
-- div,1
