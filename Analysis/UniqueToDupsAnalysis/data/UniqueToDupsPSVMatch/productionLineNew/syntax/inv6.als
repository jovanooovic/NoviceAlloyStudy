Components.parts - iden
-- div,1
all x1,x2 : Component |
-- div,1
no c:Component | c in c.parts^
-- div,1
all c Component| c not in c.parts
-- div,1
all c:Component | c not in c.part
-- div,1
all c : Components | no (c.parts).c
-- div,1
all c: Components | c not in c.parts
-- div,1
all c : Component | c not in p.^parts
-- div,1
all c : Components | c not in c.parts
-- div,2
all c : Components | not c in c.^parts
-- div,2
all c:Component | c not in c.component
-- div,1
all c:Components | c not in c.^(parts)
-- div,1
all c: Component | Componest not in c.parts
-- div,1
all c : Component | c !in c.parts
-- div,2
all c,c1 : Component | c==c1 implies c not in c.parts
-- div,2
all p : Product | p in Component implies no c.^(parts)
-- div,1
all c:Product | p in Component implies p not in c.parts
-- div,1
all c:Component, c1:Component | c1 in c.parts and c1!=c2
-- div,1
all c1, c2: Component | c2 in c1^.parts implies c2 != c1
-- div,1
all x:Product | x in Components implies x not in x.parts
-- div,1
all c:Component, c1:Component | c1 not in c.parts and c1==c2
-- div,1
all c : Component | all p : Product | c in p.part implies c1 !=p
-- div,1
all p : Product | p in component implies p not in component.parts
-- div,1
all c : Component | all p : Product | c in p.parts implies c1 !=p
-- div,1
all c : Component | c not in c.parts
all c : Component| Dangerous not in c.parts and Componenst not in c.parts
-- div,1
all c : Component | c not in c.parts
all c : Component| Dangerous not in c.parts and Componensts not in c.parts
-- div,1
