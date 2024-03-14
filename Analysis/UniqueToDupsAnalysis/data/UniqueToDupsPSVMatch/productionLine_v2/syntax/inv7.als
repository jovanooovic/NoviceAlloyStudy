all c:Component |
-- div,7
all c:Component.Dangerous |
-- div,1
parts.dangerous in Dangerous
-- div,1
all c:Components | some c.parts & Dangerous
-- div,1
all c:Component | some d:Dangerous & c.^parts
-- div,1
all c:Component,p:Parts | p in c.parts implies c in Dangerous
-- div,1
all c:Components| c.parts in Dangerous implies c in Dangerous
-- div,1
all c:Components | c.parts in Dangerous implies c in Dangerous
-- div,3
all c:Components | some Dangerous & c.^parts => c in Dangerous
-- div,1
all c:Components | some c.^parts.Dangerous implies c in Dangerous
-- div,1
all c:Component | some d:Dangerous & c.^parts implies c in Dangerous
-- div,1
all c : Component | d : Dangerous | d in c.parts implies c in Dangerous
-- div,1
all c: Component, p: Part | some c.parts&Dangerous implies c in Dangerous
-- div,1
all c:Component | lone d:Dangerous | c->d in parts implies p is Dangerous
-- div,1
all c: Component, d: Dangerous, p: Product | p->d in parts => c-> in parts
-- div,1
all c : Component | all p : Product | p in Dangerous implies c in dangerous
-- div,1
all c:Component | c.parts in Dangerous implies c in Dangerous
-- div,1
all c : Component, all d : Dangerous | some c.parts.d implies c in Dangerous
-- div,1
all c : Component, some d : Dangerous | d in c.^(parts) implies c in Dangerous
-- div,1
all c1, c2 : Component | c2 in Dangerous | c2 in c.^parts implies c2 in Dangerous
-- div,1
all c: Component, p: Part | p in c.parts and p in Dangerous implies c in Dangerous
-- div,1
all c1, c2 : Component | c2 in Dangerous and c2 in c.^parts implies c2 in Dangerous
-- div,1
all p:Product | p in Components and some(p.parts & Dangerous) implies p in Dangerous
-- div,1
all p : Product | c : Component | p in Dangerous and  in c.^parts implies c in Dangerous
-- div,1
all p : Product | c : Component | p in Dangerous and c in p.parts implies c in Dangerous
-- div,2
all p : Product | c : Component | p in Dangerous and p in c.^parts implies c in Dangerous
-- div,2
all c: Component | some p: Produts | p = Dangerous and c->p in parts implies c = Dangerous
-- div,1
all c: Component | some p: Products | p = Dangerous and c->p in parts implies c = Dangerous
-- div,1
all p,d : univ | c in Component and d in Dangerous and c->d in parts implies c in Dangerous
-- div,1
all c: Component | all p: Products | p in Dangerous and p in c.^(parts) implies c in Dangerous
-- div,1
parts.Dangerous in Dangerous
all c:Components | some c.parts & Dangerous implies c in Dangerous
-- div,1
all com : Component | one p : Product | p in Dangerous and p in com..^(parts) implies com in Dangerous
-- div,1
all c:Component,p:Product | p in c.parts and p in Dangerous implies c in Dangerous
-- div,1
all c:Component | some p:Product | some d:Dangeorus | c->p in parts and d->p in parts implies c in Dangerous
-- div,1
