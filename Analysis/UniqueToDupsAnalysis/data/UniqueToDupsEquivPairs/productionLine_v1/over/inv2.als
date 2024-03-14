-- equiv pair start,10
no Component.^parts
-- div,1
all c : Component | no c.^(parts)
-- div,2
all c : Component | no c->parts->c
-- div,1
all c : Component | no c.(c<:parts)
-- div,3
all c : Component | no c.parts.*parts
-- div,1
all c:Component | c.parts in (univ-c-c.parts)
-- div,1
all c1,c2 : Component | always no (c1.parts & c2.parts)
-- div,1
-- equiv pair end
-- equiv pair start,5
no (Component.*parts)
-- div,1
no (Component<:*parts)
-- div,1
all c : Component | no c->c
-- div,1
all c : Component | no (c.*parts)
-- div,1
all c : Component | c not in c.*parts
-- div,1
-- equiv pair end
-- equiv pair start,1
no (Component.^parts)<:Component
-- div,1
-- equiv pair end
