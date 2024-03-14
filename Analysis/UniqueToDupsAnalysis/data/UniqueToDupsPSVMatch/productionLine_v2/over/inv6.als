no *parts
-- div,1
no iden & ^parts
-- div,15
no *parts & iden
-- div,4
no ^parts & iden
-- div,9
no (parts . ~parts & iden)
-- div,1
all c : Component | no (c.parts)
-- div,1
all c1:Component | no c1.^(parts)
-- div,1
all p:Product | p->p  not in ^parts
-- div,1
all c:Component | c not in c.*parts
-- div,10
some c:Component | c not in c.*parts
-- div,1
all c : Component | c.parts not in (c.^parts)
-- div,1
all p: Product | no (p.parts.(~parts) & p)
-- div,1
all c,d : Component | c.parts not in (d.^parts)
-- div,1
all c1, c2 : Component | c1 = c2 implies c2 not in c1
-- div,1
all c,d : Component | c.parts not in (c.^parts)
-- div,1
all c: Component | no (c.parts.(~parts) & c)
-- div,3
all c : Component, p : Product | p->c not in parts
-- div,1
all c : Component, p : Product | c->p not in parts
-- div,1
all p : Product, c : Component | c->p not in parts
-- div,1
all c: Component, p: Product | (p.parts not in c.parts)
-- div,1
all c: Component, p: Product | (c.parts not in p.parts)
-- div,1
all c: Component, p: Product | no c.parts & p.parts
-- div,4
all c : Component |all p : Product| c->p not in parts
-- div,1
all c:Component | c not in c.parts and c.parts not in c.parts
-- div,1
all c : Component |	all p : Product | c.parts not in (p.^parts)
-- div,1
all p, c : univ | p in Product and c in Component implies  c->p not in parts
-- div,1
all c : Component, pa : Product | c->pa in parts and pa not in Component
-- div,1
all c : Component, p : Product | c in Product and c->p in parts and p not in Component
-- div,3
all c : Component, pa : Product | c in Product and c->pa in parts and pa not in Component
-- div,1
all c : Component | c.parts not in (c.^parts)
all c,d : Component | c.parts not in (d.^parts)
-- div,2
all c,p : univ | c in Component and p in Product and p->c in parts implies all par : Product | p->par in parts implies par!=c
-- div,1
