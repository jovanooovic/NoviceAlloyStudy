all c : Component | no(nexts[c.position] & c.parts.position)
-- div,4
all c:Component | c.parts.position in c.position.*prev
-- div,2
all c: Component, p: c.^parts | (p.position).lte[c.position]
-- div,1
all c : Component | no c.^parts.position & c.position.^next
-- div,4
all c:Component | (c.parts.position) in  (prevs[c.position]+c.position)
-- div,1
all c: Component | all p: c.^parts | (p.position).lte[c.position]
-- div,1
all c : Component, p : c.parts.position | p not in c.position.^next
-- div,1
all c: Component, p: c.parts & Component | gte[c.position, p.position]
-- div,2
all c : Component, pos : c.position, p : c.parts | p.position.lte[pos]
-- div,1
all c: Component | c.^parts.position in c.position + c.position.prevs
-- div,1
all c: Component | c.^parts.position in c.position.prevs + c.position
-- div,9
all c: Component| always c.parts.position in prevs[c.position] + c.position
-- div,1
all c : Component, p : (c.parts & Component) | p.position not in nexts[c.position]
-- div,2
all c : Component, pos : c.position | all p : c.parts | p.position.lte[pos]
-- div,1
all c:Component, p:c.parts & Component | c.position in p.position.*next
-- div,1
all c: Component, p: c.^parts | p.position in c.position.prevs + c.position
-- div,1
all c : Component | all x: c.parts & Component | x.position not in c.position.nexts
-- div,1
all c : Component | all p : (c.parts & Component) | p.position not in nexts[c.position]
-- div,2
all c:Component, p:c.parts | p in Component implies c.position in p.position.*next
-- div,1
all c : Component | all p : c.parts | p in Component implies p.position not in nexts[c.position]
-- div,1
all c : Component | all p : c.parts | not (some pos: c.position.^next | p.position = pos)
-- div,1
all c: Component | no ({p: Product | some p.position && p.position in ^next[c.position]} & c.parts)
-- div,1
