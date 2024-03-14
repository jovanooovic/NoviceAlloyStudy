noprev
-- div,1
Component.parts.postion.lte[Component.parts]
-- div,1
Component.parts.position.lte[Component.parts]
-- div,1
all c: Component | c.^parts in prevs[c.parts]
-- div,1
all c: Component | c.parts.position = prevs[c.parts]
-- div,1
all c: Component | c.parts.position in prevs[c.parts]
-- div,1
all c:Component | (c.position) == (c.^parts).position
-- div,1
all c:Component | c.part.position in c.position.~^next
-- div,1
all c : Component | all p : c.parts | p not in nexts[c]
-- div,1
all c:Component
	p in c.parts
	gt[c.position,p.position]
-- div,1
all c:Component
	p in c.parts | gt[c.position,p.position]
-- div,1
all c:Component | p in c.parts | gt[c.position,p.position]
-- div,1
all c:Component | (c.parts.position) in  prevs(c.position)
-- div,1
all c: Component | p: c.^parts | p.position.lte[c.position]
-- div,1
all c:Component | p in c.parts => gt[c.position,p.position]
-- div,2
Component.parts.position in prevs[Components.position.next]
-- div,1
all c : Component, p : c.parts | c.position <= p.position.one
-- div,1
all c: Component | all p: p.parts | lt[p.position, c.position]
-- div,1
all c:Component | one p in c.parts => gt[c.position,p.position]
-- div,1
all c: Component | all p: p.parts | lte[p.position, c.position]
-- div,1
all c: Component | all p: c.parts | c.position <= p.position.one
-- div,1
all c : Components | all p : c.parts | p in c.position.prevs.parts
-- div,1
all c: Component | no {p: Product | p.position in ^next[c.position]}
-- div,1
all c: Component | c.^parts.position in c.positon + c.position.prevs
-- div,1
all c: Component | let parts = c.parts | lte[p.position, c.position]
-- div,1
all p : Position | position.p).parts not in position.(p.^next).parts
-- div,2
all disj c, c1 : Component | smaller[c.position, c1.position :Position]
-- div,1
all disj c, c1 : Component | smaller[c.position, c1.position : Position]
-- div,1
all c : Component, pos : c.position | all p : c.parts | p.position.leq[pos]
-- div,1
all p : Position | no (position.p <: Components) & (position.(p.^next) <: Components)
-- div,1
