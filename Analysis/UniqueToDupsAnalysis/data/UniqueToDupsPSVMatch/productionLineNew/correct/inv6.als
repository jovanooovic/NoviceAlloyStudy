no c:Component | c in c.^parts
-- div,2
all c:Component| c not in c.^parts
-- div,60
all x:Component | x not in x.^parts
-- div,4
all c : Component | c not in ^parts.c
-- div,2
no c : Component | c in c.^(~parts)
-- div,1
all c:Component| not c in c.^parts
-- div,23
all x1 : Component | x1 not in x1.^parts
-- div,2
all x,y : Component | x in y.^parts implies x!=y
-- div,1
all c:Component, p:Product | not c in c.^parts
-- div,1
all p : Product | p in Component implies p not in p.^parts
-- div,2
all c1, c2: Component | c2 in c1.^parts implies c2 != c1
-- div,1
all c:Product | c in Component implies not c in c.^parts
-- div,1
all c : Component | all p : Product | c in p.^parts implies c !=p
-- div,2
