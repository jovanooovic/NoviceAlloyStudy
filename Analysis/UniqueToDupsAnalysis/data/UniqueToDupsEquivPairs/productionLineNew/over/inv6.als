-- equiv pair start,2
no *parts
-- div,2
-- equiv pair end
-- equiv pair start,6
no (iden & ^parts)
-- div,2
no ^parts & iden
-- div,2
all p: Product | p not in p.^parts
-- div,1
all p : Product | no p & p.^parts
-- div,1
-- equiv pair end
-- equiv pair start,6
all c: Component | no c.parts
-- div,3
all c : Component | no c.^(parts)
-- div,1
all p : Product | no Component.parts
-- div,1
all p : Product | p in Component implies no p.^(parts)
-- div,1
-- equiv pair end
-- equiv pair start,5
all c : Component | no parts.c
-- div,3
all x1,x2 : Product | x2 in x1.parts implies x2 not in Component
-- div,1
all c: Component | not (some p : Product | c in p.parts)
-- div,1
-- equiv pair end
-- equiv pair start,19
all x : Component | x not in x.*parts
-- div,2
all c:Component| c not in c.*parts
-- div,7
all c: Component | not c in c.*parts
-- div,2
all c1,c2 : Component | c2 in c1.parts and c1!=c2
-- div,2
all c1, c2 : Component | c2 in c1.parts and c2!=c1
-- div,1
all p : Product | p in Component implies p not in p.*parts
-- div,1
all c:Component, c1:Component | c1 in c.parts and c!=c1
-- div,2
all c:Component, c1:Component | c1 in c.parts and c1!=c
-- div,1
all c1: Component, c2 : Component | c2 in c1.parts and c1!=c2
-- div,1
-- equiv pair end
