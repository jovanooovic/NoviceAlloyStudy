no prev
-- div,1
no *prev[Component]
-- div,1
no prev[*Component]
-- div,1
no *(prev[Component])
-- div,1
all c:Component | (c.^parts)
-- div,1
all c: Component| c.parts.position
-- div,1
all c:Component | (c.^parts).position
-- div,2
all c: Component | c.parts in c.^~next
-- div,2
all c: Component | c.parts not in c.^next
-- div,1
all c: Component | c.parts not in c.^~next
-- div,1
all c : Component, p : c.parts | not p.*parts
-- div,1
all c:Component | c.parts(c.^position.~^next)
-- div,1
all c:Component | c.parts:>(c.position.~^next)
-- div,1
all c:Component | c.parts.position < c.position
-- div,1
all c: Component | c.parts.position < c.position
-- div,1
all c:Component | c.parts  not in c.position.next
-- div,1
all c:Component, p:c.parts | c.position < c.prevs
-- div,1
all c:Component | (c.parts.position) < c.position
-- div,1
all c:Component | c.parts.position in c.^~position
-- div,1
all c:Component | c.parts.position in c.~^position
-- div,1
all c : Component |  c.^parts not in c.^next.^parts
-- div,2
all c:Component, p:c.parts | c.position < p.position
-- div,1
all c:Component, p:c.parts | c.position > p.position
-- div,1
all disj c, c1 : Component | c.position < c1.position
-- div,1
all c : Component |  c.^parts not in (c.^next).^parts
-- div,2
all c : Component, p : c.parts | c.position < p.position
-- div,1
all c : Component, p : c.parts | p.position < c.position
-- div,1
all c : Component, p : c.parts | c.position <= p.position
-- div,1
all disj c, c1 : Component | c.position before c1.position
-- div,1
all c:Component, p:c.parts | c.position < c.prevs.position
-- div,2
all disj c, c1 : Component | smaller[c.position, c1.position]
-- div,2
all c : Component | c.parts.position implies (after (c.position))
-- div,1
all p : Position | no position.p.parts & position.(p.^next).*parts
-- div,1
all p : Position | no position.p.*parts & position.(p.^next).*parts
-- div,2
all p : Position | Component.p.parts not in Component.(p.^next).parts
-- div,1
all p1,p2:Position | (Component.p1).parts not in (Component.p2).parts
-- div,1
all p : Position | no (position.p).*parts & (position.(p.^next)).*parts
-- div,1
all c: Component | let parts = p.parts | gt[parts.Position, c.position]
-- div,1
all c: Component | let parts = p.parts | lt[parts.position, c.position]
-- div,1
all disj c1, c2: Component | c1.parts & c2.parts => c1.position = c2.position
-- div,1
all p : Position | no (position.p).*parts & (position.(p.^next)).*parts
  	all c : Component | no c.parts.position
-- div,1
