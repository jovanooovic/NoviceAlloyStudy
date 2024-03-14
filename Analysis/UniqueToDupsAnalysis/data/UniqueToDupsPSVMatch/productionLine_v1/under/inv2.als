iden not in ^parts
-- div,1
no iden & parts
-- div,1
iden not in (^parts).~(^parts)
-- div,1
all c:Product | c not in c.parts
-- div,2
no c: Component | c in c.parts
-- div,2
all c:Component | c not in c.parts
-- div,25
all c : Component | c->c not in parts
-- div,1
no iden & Component <: parts :> Component
-- div,1
all c1:Component | c1 not in c1.parts
-- div,1
all c:Component | no c.parts & c
-- div,5
all c: Component | no c & c.parts
-- div,5
all c : Component | no c<:(parts.c)
-- div,2
all c : Component | no (c<:parts).c
-- div,2
all c1,c2:Component | c1 not in c1.parts
-- div,1
all c : Component | c not in c.parts.parts
-- div,1
all c:Component | c.parts in (univ-c)
-- div,2
always(all c : Component | no (c & c.parts))
-- div,1
all c : Component | always no (c.parts & c)
-- div,2
all c:Component | (c.parts) in (c.parts - c)
-- div,1
all c : Component, d:c.parts | no (c & d)
-- div,2
all c:Component | c not in c.parts:>Component
-- div,2
always(all c : Component, d:c.parts | no (c & d))
-- div,1
all c1 : Component , y : c1.parts | always no (y & y.parts)
-- div,1
all c1,c2:Component | c1 in c2.parts => c2 in (univ -c1.parts)
-- div,1
all c1,c2:Component | c1 in c2.parts => c2 in (univ -c1.parts)
    all c1:Component | c1 not in c1.parts
-- div,2
