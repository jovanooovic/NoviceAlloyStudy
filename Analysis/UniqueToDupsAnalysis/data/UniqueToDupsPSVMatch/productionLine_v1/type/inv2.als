no ^parts in iden
-- div,1
^parts & iden = none
-- div,2
^parts not in iden - {}
-- div,1
^parts not in iden - none
-- div,1
no (Component.^parts).Component
-- div,1
all c:Component | no ^(c.parts)
-- div,1
all c:Component | no c.(c.parts)
-- div,1
all c:Component | no c in c.parts
-- div,2
all c:Component | no (c.^parts).c
-- div,1
all c:Component | no c in c.^parts
-- div,2
all c : Component | no c.(parts.c)
-- div,1
all c : Component | no c.(c.parts)
-- div,1
all c : Component | c.parts in iden
-- div,1
all c : Component | no c.^(parts).c
-- div,1
all c:Component | c not in ^c.parts
-- div,1
all c : Component | no c->c in parts
-- div,4
all c:Component | c not in *(c.parts)
-- div,1
all c:Component | c not in ^(c.parts)
-- div,1
all c : Component | no c in c.^(parts)
-- div,1
Component.parts not in ^Component.parts
-- div,1
all c : Component | c not in *(c.parts)
-- div,1
all c : Component | no c.^(parts.parts).c
-- div,1
Component.parts not in ^(Component.parts)
-- div,1
all c : Component | (c.^parts).c not in parts
-- div,1
all c : Component | c & ^parts.c not in parts
-- div,1
all c : Component | c.^parts & c not in parts
-- div,1
all c : Component | no (c<:parts) & (parts.c)
-- div,1
(Component.^parts).~(Component.^parts) in iden
-- div,1
all c : Component | c & ^parts<:c not in parts
-- div,1
all c : Component | no (c<:parts) & (parts<:c)
-- div,1
all c,c1 : Component, p : Position | c not in c->parts and c1 not in c1->parts and c->p + c1->p in position => c = c1
-- div,1
all c,c1 : Component, p : Position | (c not in c->parts) and (c1 not in c1->parts) and c->p + c1->p in position => c = c1
-- div,1
