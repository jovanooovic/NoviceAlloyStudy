-- equiv pair start,1
Robot.position = Component.position
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Component | no c.parts.parts
-- div,1
all c: Component | no c.parts.^parts
-- div,1
-- equiv pair end
-- equiv pair start,1
Robot.position in Component.position
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | one (c.^parts).position
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | lone (c.^parts).position
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | c.position.lte[c.^parts.position]
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | c.position.gte[c.^parts.position]
-- div,1
-- equiv pair end
-- equiv pair start,2
Component.parts.position in prevs[Component.position]
-- div,1
Component.parts.position in prevs[Component.position + 1]
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component |  no ((c.position)- (c.parts).position)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Component, p : c.parts | p not in c.parts.^parts
-- div,1
all c : Component, p : Product | p in c.parts implies p not in c.parts.^parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | Robot->(c.parts.position) in position
-- div,1
-- equiv pair end
-- equiv pair start,4
all c: Component, p: c.parts | lt[c.position, p.position]
-- div,1
all c:Component | all p:Product | p in c.parts => lt[c.position,p.position]
-- div,3
-- equiv pair end
-- equiv pair start,4
all c:Component | c.parts.position not in c.position.^next
-- div,2
all c: Component | ((c.parts) & Component).position not in (c.position).^next
-- div,1
all c: Component | ((c.parts):>Component).position not in (c.position).^next
-- div,1
-- equiv pair end
-- equiv pair start,3
Component.parts.position in prevs[Component.position.next]
-- div,2
Component.parts.position in prev[Component.position.next]
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Component | c.position not in c.parts.position.^next
-- div,2
-- equiv pair end
-- equiv pair start,1
all c: Component | (c.parts).position not in (c.position).^~next
-- div,1
-- equiv pair end
-- equiv pair start,9
all p : Position | no position.p.parts & position.(p.^next).parts
-- div,5
all disj c1, c2: Component | some (c1.parts & c2.parts) => c1.position = c2.position
-- div,2
all p : Position | no (position.p <: Component).parts & (position.(p.^next) <: Component).parts
-- div,1
all disj c1, c2: Component | all p: c1.parts, pos: c1.position | p in c2.parts implies c2.position = pos
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Position | position.p.parts not in position.(p.^next).parts
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Position | position.p.^parts not in position.(p.^next).^parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component, p: c.parts & Component | lt[c.position, p.position]
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Component | some p:Product | p in c.parts => gt[c.position,p.position]
-- div,2
-- equiv pair end
-- equiv pair start,3
all c:Component | some p:Product | p in c.parts => lt[c.position,p.position]
-- div,3
-- equiv pair end
-- equiv pair start,2
all c: Component | ((c.^parts) & Component).position not in (c.position).^next
-- div,2
-- equiv pair end
-- equiv pair start,1
all disj c1, c2: Component | some (c1.parts & c2.^parts) => c1.position = c2.position
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj c1, c2 : Component | c1.parts in c2.parts implies c1.position in c2.position.*prev
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | ((c.^parts) & Component).position not in (c.position).^next or no c.^parts
-- div,1
-- equiv pair end
