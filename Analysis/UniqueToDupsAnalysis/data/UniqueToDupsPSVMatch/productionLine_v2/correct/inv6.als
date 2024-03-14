no c : Component | c in c.^parts
-- div,4
all c:Component | c not in c.^parts
-- div,108
all c:Component | c->c not in ^parts
-- div,1
all c : Component | not c in c.^parts
-- div,1
all c: Component | no (c & c.^parts)
-- div,4
all x : Component | no x & x.^(parts)
-- div,1
all c1:Component | no c1 & c1.^parts
-- div,2
all com: Component | com not in com.^(parts)
-- div,2
all c: Product | c in Component implies c not in c.^(parts)
-- div,1
all c: Component, p: Product | no (c & c.^parts)
-- div,1
all component: Component | component not in component.^parts
-- div,2
all c,p : univ | c in Component and p in Product and c->p in parts implies p!=c and p->c not in parts and all p1 : Product | p->p1 in parts implies p1->c not in parts
-- div,1
