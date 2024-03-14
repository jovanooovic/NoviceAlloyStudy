-- equiv pair start,9
no parts & iden
-- div,6
no iden & parts
-- div,2
all c:Product | c not in c.parts
-- div,1
-- equiv pair end
-- equiv pair start,2
parts not in iden
-- div,1
^parts not in iden
-- div,1
-- equiv pair end
-- equiv pair start,1
Component<:parts not in iden
-- div,1
-- equiv pair end
-- equiv pair start,15
no Component & Component.parts
-- div,1
all c1,c2:Component | c2 not in c1.parts
-- div,1
all c1,c2:Component | c1->c2 not in parts
-- div,3
all c : Component | no c.parts & Component
-- div,2
all c1 : Component, c2 : Component | c1->c2 not in parts
-- div,1
all c1, c2 : Component | c1->c2 not in parts and c2->c1 not in parts
-- div,1
all c : Component, p:Product | p in c.parts => p not in Component
-- div,1
all c2:Component, p:Product | p in c2.parts => p not in Component
-- div,1
all c : Component, pa : Product |c->pa in parts implies pa not in Component
-- div,2
all c : Component, p : Product | c in Product and c->p in parts implies p not in Component
-- div,1
all c : Component | c->c not in parts
all c1,c2 : Component | c1->c2 not in parts
-- div,1
-- equiv pair end
-- equiv pair start,3
Component not in Component.parts
-- div,3
-- equiv pair end
-- equiv pair start,4
no c:Component | c not in c.parts
-- div,1
all c:Component | c in c.parts
-- div,1
all c : Component | c->c in parts
-- div,2
-- equiv pair end
-- equiv pair start,2
no c : Component | c . parts in c
-- div,1
all c: Component | c<:parts not in iden
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Component | c in c.^parts
-- div,1
all c : Component | c in c.~^parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Component | one x.^parts+x
-- div,1
-- equiv pair end
-- equiv pair start,3
one c:Component | c not in c.parts
-- div,2
one c:Component | c->c not in parts
-- div,1
-- equiv pair end
-- equiv pair start,2
lone c:Component | c not in c.parts
-- div,1
lone c:Component | c->c not in parts
-- div,1
-- equiv pair end
-- equiv pair start,7
some c:Component | c not in c.parts
-- div,5
some c:Component | no (c.parts & c)
-- div,2
-- equiv pair end
-- equiv pair start,1
Component not in Component.^(parts)
-- div,1
-- equiv pair end
-- equiv pair start,1
some c:Component | c not in c.^parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | c.parts = Component - c
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Component | c.parts not in Component
-- div,3
-- equiv pair end
-- equiv pair start,1
some c:Component | no (c.parts & Component)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c1 : Component, c2 : Component | c1->c2 in parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c1,c2:Component | c1->c2 in parts implies c1 = c2
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component, p:Product | p not in c.parts => p=c
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | c not in c.parts and c.parts not in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all c1,c2:Component | c1->c2 not in parts implies c1 = c2
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component, p : Product | c in Product and c->p in parts
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Component | c not in c.parts
all p:Product | p not in p.parts => p in Component
-- div,2
-- equiv pair end
-- equiv pair start,2
all c1,c2 : Component | all p : Product | (c1->p in parts and c2->p in parts) implies (c1=c2)
-- div,2
-- equiv pair end
