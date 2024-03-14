not iden & ^parts
-- div,1
no ^parts in iden
-- div,1
Component.parts
-- div,1
Component.~Component
-- div,2
Component in parts.*(Product)
-- div,1
Component not Component.parts
-- div,1
all w : workstation | w.Robot
-- div,1
all c:Component | c not c.parts
-- div,1
all c : Component | not c.^parts
-- div,1
all c : Component | not c&c.parts
-- div,1
all c : Component | c in ~c.^parts
-- div,1
all c : Component | c not in parts
-- div,1
all c : Component | c not c.^parts
-- div,1
all c:Component | no c->c in parts
-- div,1
Component not in *(Component.parts)
-- div,1
Component not in *(parts.Component)
-- div,1
all c: Component | c->c !in c.parts
-- div,1
all c : Component | no c in c.parts
-- div,1
all c:Component | c not in ^c.parts
-- div,1
Component not in ^(Component.parts)
-- div,1
all c:Component | c->c.*parts = none
-- div,1
all c : Component | c not in c&parts
-- div,2
all c : Component | c not in ^c.parts
-- div,2
all c:Component |  no(c & (^c.parts))
-- div,1
all w : workstation | w.workers.Human
-- div,1
all c:Component |  no(c & ^(c.parts))
-- div,2
all c:Component | c->c not in c.parts
-- div,4
some c:Component | c not in *(c.parts)
-- div,1
some c:Component | c not in ^(c.parts)
-- div,1
all c:Component | c->c not in c.*parts
-- div,2
all c : Component | c in parts.*Product
-- div,1
all x : Component | no x & x.^(x.parts)
-- div,1
all c:Component | c->c not in ^(c.parts)
-- div,1
all c1,c2:Component | no c1->c2 in parts
-- div,1
all c: Component | c not in c.^(c.parts)
-- div,1
all c:Component | c->c not in *(c.parts)
-- div,2
all c:Component | c->c not in c.(*parts)
-- div,1
all c1,c2: Component | c1 in parts.*(c2)
-- div,1
all c:Component | c->c not in (c.*parts)
-- div,1
all c1,c2:Component | no (c1->c2 in parts)
-- div,1
all c: Component | c not in c.parts.^(Component.parts)
-- div,1
all c:Component | c not in c.parts and c not c.parts.parts
-- div,1
all c: Product, p: Product| c im Component and c->p in parts implies c!=p
-- div,1
