iden not in ^parts
-- div,1
no c:Component | c in c.parts
-- div,1
all x:Component | x not in x.parts
-- div,7
all c : Component | c !in c.parts
-- div,43
all c:Component | c not in parts.c
-- div,1
all c: Component | not (c in parts.c)
-- div,1
all c:Component| not c in c.parts
-- div,9
all x1 : Component | x1 not in x1.parts
-- div,1
all c: Component | no c & c.parts
-- div,1
all x1,x2 : Component | x1 not in x1.parts
-- div,1
all c: Component | Component not in c.parts
-- div,3
all x,y:Component | x in y.parts implies x!=y
-- div,2
all c,c1 : Component | c=c1 implies c not in c.parts
-- div,2
all c,c1 : Component | c!=c1 implies c not in c.parts
-- div,1
all c : Component, d: Dangerous | c not in c.parts
-- div,2
all c: Component | all x: c.parts | x!=c
-- div,1
all c:Product | c in Component implies c not in c.parts
-- div,1
all p : Product | p in Component implies p not in p.parts
-- div,3
all x:Product | x in Component implies x not in x.parts
-- div,1
all c : Component | all p : c.parts | p != c
-- div,1
all c : Component | all p : c.parts | c not in p
-- div,1
all c1,c2 : Component | c2 in c1.parts implies c1!=c2
-- div,1
all c1, c2 : Component | c2 in c1.parts implies c2!=c1
-- div,2
all x1,x2 : Component | x2 in x1.parts implies x2 != x1
-- div,2
all c:Product | c in Component implies not c in c.parts
-- div,1
all x:Component | x not in x.parts and x not in parts.x
-- div,1
all c1, c2: Component| c1 not in c1.parts and c2 not in c2.parts
-- div,2
all x, y: Product | x in Component and y in x.parts implies y != x
-- div,1
all x,y:Component | (x in y.parts or y in x.parts)implies x!=y
-- div,1
all c : Component | all p : Product | c in p.parts implies c !=p
-- div,2
all x:Product | x in Component implies x not in x.parts and x not in parts.x
-- div,1
all c1, c2: Component| c1 in c2.parts and c2 in c1.parts implies c1=c2
-- div,1
all c1, c2: Component| c1 in c2.parts and c2 in c1.parts implies c1!=c2
-- div,1
all p : Product | p in Component && p in p.parts implies p not in Component.parts
-- div,1
all c : Component | c not in c.parts
all c : Component | Component not in c.parts
-- div,1
