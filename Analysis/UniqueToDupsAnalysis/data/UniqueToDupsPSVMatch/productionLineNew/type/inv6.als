no ^Component.parts
-- div,1
no ^(Component.parts)
-- div,1
Component.parts - iden
-- div,1
no c:Component | c in c^parts
-- div,1
no c : Component | c in c(~parts)
-- div,1
all c : Component | no c.parts = c
-- div,1
all c:Component | no c in  c.parts
-- div,1
no c : Component | c in c^(~parts)
-- div,2
all c : Component | no (c.parts).c
-- div,1
all c : Component | no c.(parts.c)
-- div,1
all c: Component | no c in c.^parts
-- div,1
all c: Component | none c & c.parts
-- div,1
all c : Component | no c in c.parts
-- div,1
all c:Component | no c in  c.^parts
-- div,1
all c : Component | c not in c^(~parts)
-- div,1
all c : Component | c not in ^(c.parts)
-- div,1
all c : Component | c not in c.^(c.parts)
-- div,1
all c:Component, p:Product | no c in c.^parts
-- div,1
all x:Component | x not in x.parts or x.parts.parts
-- div,1
all c1, c2: Component | c2 in ^c1.parts implies c2 != c1
-- div,1
