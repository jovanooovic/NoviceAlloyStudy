iden not in parts
-- div,1
iden not in ^parts
-- div,1
not iden in ^parts
-- div,2
iden not in Component<:parts
-- div,1
no c:Component | c in c.parts
-- div,4
no c : Component | c->c in parts
-- div,1
all c:Component | c not in c.parts
-- div,50
all c:Component | c->c not in parts
-- div,20
all c : Component | not c in c.parts
-- div,1
all x : Component | no x & x.parts
-- div,1
all c : Component | c not in c.~(parts)
-- div,1
all x : Component | no x.parts & x
-- div,1
all c : Component | not c->c in parts
-- div,1
all c: Component | no (c.parts & c)
-- div,2
all c : Component | no c&c.parts
-- div,3
all x : Component | one x - x.parts
-- div,1
all c : Component | c not in c&c.parts
-- div,1
all com: Component | com not in com.parts
-- div,3
all c: Component | no (c.~parts & c)
-- div,1
all c:Component | Component not in c.parts
-- div,1
all c:Component | c not in c.parts.parts
-- div,1
all c : Component | c->c not in parts and c=c
-- div,1
all c1:Component, c2:c1.parts | c1!=c2
-- div,1
all c:Component | c not in c.parts.parts.parts
-- div,1
all a,b : Component | a=b implies a->b not in parts
-- div,2
all c: Product | c in Component implies c not in c.parts
-- div,1
all p: Product | p in Component implies p not in p.parts
-- div,1
all c : Component | c in Product and c->c not in parts
-- div,2
all c1, c2 : Component | c1 = c2 implies c2 not in c1.parts
-- div,1
all c1,c2: Component | c1 in c2.parts implies c1!=c2
-- div,3
all c0, c1 : Component | c0->c1 in parts implies c0!=c1
-- div,1
all c1,c2:Component | c1->c2 in parts implies c1!=c2
-- div,3
all c:Component | some c.parts => c not in c.parts
-- div,1
all c1,c2 : Component |c1=c2 implies c1->c2 not in parts
-- div,1
all p : Product | p in Component implies not p->p in parts
-- div,1
all c : Component, p:Product | p=c => p not in c.parts
-- div,1
all c : Component, p:Product | p in c.parts => p!=c
-- div,1
all c:Component | c not in c.parts and c not in c.parts.parts
-- div,1
all c: Component, p: Product| c->p in parts implies c!=p
-- div,1
all c1,c2 : Component | c1->c2 in parts implies c2->c1 not in parts
-- div,3
all c0, c1 : Component | c0->c1 in parts implies c1->c0 not in parts
-- div,1
all c : Component, p : Product | c in Product and c->c not in parts
-- div,1
all c:Component, p:Product | c->p in parts implies c->c not in parts
-- div,1
all c : Component | all p : Product | p->c in parts implies p!=c
-- div,1
all c:Component | some p:Product | c->p in parts implies p!=c
-- div,1
all c,c2:Component | (c not in c.parts) and (c2 in c.parts => c not in c2.parts)
-- div,1
all c: Product, p: Product| c in Component and c->p in parts implies c!=p
-- div,1
all c,p : univ | c in Component and p in Product and c->p in parts implies p!=c
-- div,2
all a : Component | all b : Component | a->b in parts implies b->a not in parts
-- div,1
all disj c,p : univ | c in Component and p in Product and c->p in parts implies p->c not in parts
-- div,1
all a : Component | all b : Component | a=b implies (a->b not in parts and b->a not in parts)
-- div,1
all c:Component | c not in c.parts
all p:Product | p in p.parts => p not in Component
-- div,1
all c,p : univ | c in Component and p in Product and c->p in parts implies p!=c and p->c not in parts
-- div,1
all a : Component | all b : Component | (a->b in parts implies b->a not in parts) and (b->a in parts implies a->b not in parts)
-- div,1
all com : Component | com not in com.parts
all c1, c2: Component | c1 != c2 and c1 in c2.parts implies c2 not in c2.parts
-- div,1
all c0, c1 : Component | c0->c1 in parts implies c0!=c1
all c0, c1 : Component | c0->c1 in parts implies c1->c0 not in parts
-- div,2
all c,p : univ | c in Component and p in Product and c->p in parts implies all par : Product | p->par in parts implies par!=c
-- div,1
all disj c,p : univ | c in Component and p in Product and c->p in parts implies all par : Product | p->par in parts implies par!=c
-- div,1
all p : Product | all m : Material | all c : Component | (p->m in parts implies p not in Component) or (p->c in parts implies p not in Material)
-- div,1
all c : Component | not c->c in parts
all disj c,p : univ | c in Component and p in Product and c->p in parts implies all par : Product | p->par in parts implies par!=c
-- div,1
