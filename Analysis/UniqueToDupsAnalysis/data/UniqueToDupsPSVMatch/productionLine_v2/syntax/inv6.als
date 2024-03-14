no id & parts
-- div,1
c : Component | c in c.^parts
-- div,2
c : Component | c in ~c.^parts
-- div,2
c : Component | c in (c.^parts)
-- div,1
all c:Component | c not in c.part
-- div,1
Components not in Component.parts
-- div,1
Component not in Compoent.^(parts)
-- div,1
let c:Component | c not in c.parts
-- div,1
all w : workstation | w.works.Human
-- div,1
all c:Component : c not in c.^parts
-- div,1
all c:Components | c not in c.*parts
-- div,1
all c : Component ! c not in c.parts
-- div,1
all c1 : Components | c not in parts
-- div,1
all c : Components | no c in c.parts
-- div,1
Components not in *(components.Parts)
-- div,1
all c : Component | c not in c.parts^
-- div,1
all c: Components | c not in c.^parts
-- div,2
all c:Component | c->c not in *.parts
-- div,2
all c : Components | c not in c.parts
-- div,3
all c : Compenent | c not in c.^parts
-- div,1
all c : Component | c not in c.parts*
-- div,1
all c : Component | c not in c.parts+
-- div,1
all c:Component | c->c not in c^.parts
-- div,1
all c:Component | c->c not in c*.parts
-- div,1
all c : Components | c not in c.^parts
-- div,1
all c: Components | c not in c.^(parts)
-- div,1
all c1,c2:Component | c2 not in c.parts
-- div,1
all c: Component: c not in c.^(c.parts)
-- div,1
all c : Components | c not in c.^(parts)
-- div,1
Component in parts.*(Component, Product)
-- div,1
all c1 : Component | c not in c.^(parts)
-- div,1
all c1,c2 : Component |c not in c.^(parts)
-- div,1
all c: Component | no (c.parts.(~parts) & p)
-- div,1
all c,d : Component | c.parts not in (d.parts.^)
-- div,3
all c1,c2: Component | c1 in parts.*(c2,Product)
-- div,1
all c: Components | c not in c^(Component.parts)
-- div,1
all c: Components | c not in c.^(Component.parts)
-- div,1
all a,b : Component | a==b implies a->b not in parts
-- div,1
all a,b : Component | a=b implies a->b not in partes
-- div,1
all c1, c2 : Component | c1 == c2 implies c2 not in c1
-- div,1
all c: Component, p: Produt| c->p in parts implies c!=p
-- div,1
all c: Components | c not in c.parts.^(Component.parts)
-- div,2
all c : Component | p : Product | c.parts not in p.parts
-- div,1
all c,p : c in Component and p in Product and c->p in parts implies p!=c
-- div,1
all c : Component, part : Product | c->part in parts and part not in Component
-- div,1
all c1,c2 : Component | all p : Product | (c1->p in parts and c2->p in parts) implies (c1==c2)
-- div,1
all c1,c2 : Components | all p : Product | (c1->p in parts and c2->p in parts) implies (c1=c2)
-- div,1
all disj c,p : univ | c in Component and p in Product and c->p in parts implies all par : Product | p->par in parts implies par!=c and
-- div,1
all c1 | not path[c1,c1]

}

pred path [c1 : Component,c2:Component]{
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,1
all c1 : Component | not path[c1,c1]

}

pred path [c1 : Component,c2:Component]{
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,2
all c1 : Component | not path[c1,c1]

}

pred path [c1 : Component,c2:Component]{
all c3 : Component | c1->c3 in parts implies (c3->c2 not in parts) and path[c3,c2]
-- div,2
all c1 : Component | not path[c1,c1]

}

pred path [c1 : Component,c2:Component]{
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and
path[c3,c2])
-- div,1
