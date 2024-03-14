no Component . parts . workstation . ~succ
-- div,1
all c: Component | (c.parts not in c)
-- div,2
all c: Component | (c.^parts in c)
-- div,3
all c: Component | (c not in c.^parts)
-- div,1
parts in (workstation.~succ).~workstation
-- div,1
all c: Component | (c not in c.~parts)
-- div,1
all c: Component | (c.^parts not in c)
-- div,2
all c: Component | (c.~^parts in c)
-- div,1
all c: Component | c.^parts not in end
-- div,1
all c: Component | (c not in c.~^parts)
-- div,1
all c: Component | (c not in c.^~parts)
-- div,1
all c: Component | (c.~^parts not in c)
-- div,1
all c : Component | c.^parts not in Material
-- div,1
parts :> Component in (workstation.~succ).~workstation
-- div,1
parts :> Component in ^(workstation.~succ.~workstation)
-- div,1
Component . workstation not in Component . parts . workstation . succ
-- div,1
no (parts :> Component & ^(workstation.succ.~workstation))
-- div,1
no (parts :> Component & workstation.*succ.~workstation)
-- div,3
all x : Component | x.parts not in x.workstation.*succ
-- div,4
all c : Component | some c.workstation implies no c.parts
-- div,2
all c:Component | some c.workstation => some c.parts
-- div,1
all c:Component| some c implies (historically some c.parts)
-- div,1
all c : Component | begin in c.workstation implies no c.parts
-- div,1
parts :> Component in ((Component <: workstation ).~succ.(~workstation :> Component))
-- div,1
parts :> Component in ^((Component <: workstation).succ.(~workstation :> Component))
-- div,1
parts :> Component in ^(workstation.~succ.(~workstation :> Product))
-- div,1
parts :> Component in ^((Component <: workstation).~succ.(~workstation :> Component))
-- div,2
all c:Component | c.workstation in c.parts.workstation.*succ
-- div,5
all c : Component | c.parts.workstation in c.workstation.^succ
-- div,2
all c:Component | some c.workstation => Component = c.^parts
-- div,1
all c:Component | some c.workstation => Component = c.*parts
-- div,1
all c:Component | c.workstation in c.parts.workstation.^succ
-- div,4
all c : Component | c.parts.workstation in c.workstation.*succ
-- div,1
all c: Component |(^parts.c).workstation in (c.workstation).^succ
-- div,1
all c : Component | c.parts & Component in Workstation.~workstation
-- div,1
all c:Component | c.workstation in Product.parts.workstation.^succ
-- div,1
all c: Component, p: c.parts, w: c.workstation | c.parts in w
-- div,1
all c: Component| (c.^(~parts)).workstation in (c.workstation).^(succ)
-- div,3
all c : Component | begin in c.workstation implies no c.parts&Component
-- div,1
all c: Component | all p: c.parts | c.workstation in p.^succ
-- div,1
all c:Component | c.workstation in Component.parts.workstation.*succ
-- div,1
all c:Component | c.workstation in Component.parts.workstation.^succ
-- div,4
all c:Component | c.^parts in (c.workstation.^~succ).~workstation
-- div,1
all c : Component | begin in c.^workstation implies no c.parts&Component
-- div,1
all c : Component | begin in c.workstation implies no c.^parts&Component
-- div,1
all c:Component | no c.^parts & (c.workstation.*succ).~workstation
-- div,1
all c:Component | no c.^parts & (c.workstation.^succ).~workstation
-- div,1
all c : Component, p : c.parts | p.workstation in c.workstation.^succ
-- div,1
all c : Component, p : c.parts | c.workstation in p.workstation.*succ
-- div,1
all c: Component, p: c.parts, w: c.workstation | p.workstation = w
-- div,1
all c : Component, p : c.parts| c.workstation in p.workstation.^succ
-- div,4
all p:Product | (p.workstation) in ((p.parts & Component).workstation).*succ
-- div,2
all p:Product | (p.workstation) in ((p.parts & Component).workstation).^succ
-- div,1
all p:Product | (p.parts & Component).workstation in ~succ.(p.workstation)
-- div,2
all c: Component | c.^(parts.workstation) not in end implies c.workstation not in end
-- div,1
all c : Component | (Component & c.parts).workstation in c.workstation.(^succ)
-- div,1
all c:Component | c.workstation in (c.parts & Component).workstation.*succ
-- div,1
all c:Component | c.workstation in (c.parts & Component).workstation.^succ
-- div,3
parts :> Component not in ^(workstation.succ.~workstation) + workstation.~workstation
-- div,1
all p:Product | (p.parts & Component).workstation in ^~succ.(p.workstation)
-- div,1
all c : Component | c.parts.workstation in Workstation - c.workstation.^(succ)
-- div,1
all c, p : Component | (p in c . parts) =>
(c . workstation) in (p . workstation . ^succ)
-- div,1
all c:Component | c.workstation in (c.^parts & Component).workstation.^succ
-- div,2
no (parts :> Component & (workstation.~workstation + workstation.^succ.~workstation))
-- div,1
all x : Component | no (x.parts & Component).workstation & (x.workstation).*succ
-- div,1
no (parts :> Component & (^(workstation.succ.~workstation) + workstation.~workstation))
-- div,1
no (parts :> Component & (workstation.~workstation + ^(workstation.succ).~workstation))
-- div,1
all c : Component, p : c.parts | p.workstation in c.workstation.succ.^succ
-- div,4
no (parts :> Component & (workstation.~workstation + ^(workstation.succ.~workstation)))
-- div,2
all c: Component, p: c.parts, w: c.workstation | c.parts.workstation = w
-- div,1
all c : Component | c.parts.workstation in (begin.*succ - c.workstation.*succ)
-- div,1
all c: Component | all p: c.parts | c.workstation in p.workstation.^succ
-- div,3
all c:Component | c.workstation in (Product.*parts & Component).workstation.^succ
-- div,1
all c:Component | c.^parts&Component in (c.workstation.^~succ).~workstation
-- div,1
all c:Component | c.workstation in (Product.^parts & Component).workstation.^succ
-- div,2
all c : Component, p : c.parts-Material | c.workstation in p.workstation.^succ
-- div,1
all c1, c2 : Component | c2 in c1.^parts implies c2.workstation in c1.workstation.^succ
-- div,3
all c1, c2 : Component | c2.workstation in c1.workstation.^succ implies c2 in c1.^parts
-- div,1
all c : Component, p : c.parts&Component | c.workstation in p.workstation.^succ
-- div,3
all c1, c2 : Component | c2 in c1.^parts implies c2.workstation not in c1.workstation.*succ
-- div,2
all c1, c2 : Component | c2 in c1.^parts implies c2.workstation not in c1.workstation.^succ
-- div,1
all c1, c2 : Component | c2 in c1.^parts <=> c2.workstation in c1.workstation.^succ
-- div,1
all c1, c2 : Component | c2 in c1.^parts <=> c2.workstation not in c1.workstation.^succ
-- div,1
all c : Component, p : Product | (p in c . parts) =>
(c . workstation) in (p . workstation . *succ)
-- div,1
all c : Component, p : Product | (p in c . parts) => (p . workstation) in (c . workstation . ^succ)
-- div,1
all c: Component, p: Product | p in c.parts implies c.workstation in p.workstation.^succ
-- div,8
all c:Component, m:Material, w:Workstation | m not in c.parts implies w not in c.workstation
-- div,3
all c:Component, p:Product | (c->p in parts) => (c.workstation) in (p.workstation.^succ)
-- div,1
all a1, a2: Component | a2 in a1.parts implies a2.workstation in begin and a1.workstation in end
-- div,1
no (parts :> Component & (^(workstation.succ.~workstation) + (Component <:workstation ).(~workstation :> Component)))
-- div,1
all c: Component, p: Component | p in c.parts implies c.workstation in p.workstation.^succ
-- div,1
all c : Component | all p : c.parts | some (c.workstation) => before(some(p.workstation))
-- div,1
all c : Component, p : Product | (p in c . parts) =>
(c . workstation . ^~succ) in (p . workstation)
-- div,1
all c: Component, p: Product | p in c.^parts implies c.workstation in p.workstation.^succ
-- div,1
all c : Component, p : c.parts |
p in Component => p.workstation not in c.workstation.*succ
-- div,2
all c : Component | all p : c.parts & Component | c.workstation in p.workstation.^succ
-- div,4
all w: Workstation, c: Product | w in c.^(parts).workstation && w.^(succ) in c.workstation
-- div,1
all c : Component | c.parts.workstation in Workstation - c.workstation.^(succ) - c.workstation
-- div,1
all w: Workstation, c: Component | w in c.^(parts).workstation && w.^(succ) in c.workstation
-- div,1
all c:Component | all p:c.parts | p in Material or c.workstation in p.workstation.succ
-- div,3
all c : Component | all p : c.parts & Component | some (c.workstation) => some(p.workstation)
-- div,2
all c1, c2 : Component | c1!=c2 and c2 in c1.^parts implies c2.workstation in c1.workstation.^succ
-- div,2
all c1, c2 : Component | c1!=c2 and c2 in c1.^parts implies c2.workstation in c1.workstation.*succ
-- div,1
all c:Component | all p:c.parts | p in Material or c.workstation in p.workstation.^succ
-- div,1
all c1: Component, c2: c1.^parts, w1: c1.workstation, w2: c2.workstation | w2 in w1.^succ
-- div,2
all c1: Component, c2: c1.^parts, w1: c1.workstation, w2: c2.workstation | w1 in w2.^succ
-- div,2
all c : Component, p : c.parts | some p.workstation && p.workstation in c.workstation.succ.^succ
-- div,1
all c : Component | all p : c.parts & Component | some (c.workstation) => after(some(p.workstation))
-- div,1
all c:Component, m:Material, w:Workstation, p:Product | p not in c.parts implies w not in c.workstation
-- div,1
all c : Component | all p : c.parts & Component | some (c.workstation) => before(some(p.workstation))
-- div,1
all c,c2 : Component | all w : Workstation | w in c.workstation and c2 in c.^(parts) implies
c in c2.^(parts)
-- div,1
all c : Component | all p : c.parts & Component | all w: p.workstation | c.workstation in w.^succ
-- div,1
all w: Workstation, c: Product | some c.parts => w in c.^(parts).workstation && w.^(succ) in c.workstation
-- div,1
all w: Workstation, c1, c2: Component | c2 in c1.^(parts) => w in c2.workstation && w.^(succ) in c1.workstation
-- div,2
all w: Workstation, p: Product | some p.^(parts) => w in p.^(parts).workstation && w.^(succ) in p.workstation
-- div,1
all w1, w2: Workstation, c1, c2: Product | c2 in c1.^(parts) && w2 in c2.workstation && w1 in c1.workstation => w1 in w2.^(succ)
-- div,1
all c:Component | c.workstation in (c.^parts & Component).workstation.^succ || no (c.^parts & Component).workstation.^succ
-- div,1
all w1, w2: Workstation, c1, c2: Product | c2 in c1.^(parts) && w2 in c2.workstation && w1 in c1.workstation => w2 in w1.^(succ)
-- div,1
all c:Component | c.workstation in (c.^parts & Component).workstation.*succ || no (c.^parts & Component).workstation.*succ
-- div,1
all w1, w2: Workstation, c1, c2: Component | c2 in c1.^(parts) && w2 in c2.workstation && w1 in c1.workstation => w1 in w2.^(succ)
-- div,2
all c1,c2:Component, w1,w2:Workstation | w1 in c1.workstation and w2 in c2.workstation and c2 in c1.^parts implies w1 in w2.^succ
-- div,5
all w: Workstation, c1, c2: Component | c2 in c1.^(parts) => w in c2.workstation && w.^(succ) in c1.workstation-c2.workstation
-- div,1
all c,c2 : Component | all w,w2 : Workstation |
w in c.workstation and c2 in c.^(parts) and w2 in c2.workstation implies
w in w2.^(succ)
-- div,1
all c1, c2: Component | all w1, w2: Workstation |
c2 in c1.parts and c1.workstation in w1 and c2.workstation in w2
implies w1 in w2.succ
-- div,1
all disj w1, w2: Workstation, c1, c2: Component | c2 in c1.^(parts) => w2 in c2.workstation && w1 in c1.workstation && w2 in w1.^(succ)
-- div,1
all c1,c2: Component, ws1,ws2: Workstation | ws1 in c1.workstation and ws2 in c2.workstation and c2 in c1.^(parts) implies ws1 in ws2.^(succ)
-- div,1
all c1, c2: Component | all w1, w2: Workstation |
c2 in c1.^(parts) and w1 in c1.workstation and w2 in c2.workstation
implies w1 in w2.succ
-- div,1
all w: Workstation, c1, c2: Component | c2 in c1.^(parts) => w in c2.workstation && w.^(succ) in c1.workstation && w not in c1.workstation
-- div,3
all c1, c2: Component | all w1, w2: Workstation |
c2 in c1.^(parts) and w1 in c1.workstation and w2 in c2.workstation
implies w1 in w2.^(succ)
-- div,1
all c1, c2: Component | all w1, w2: Workstation | w1 in c1.workstation and w2 in c2.workstation and c2 in c1.^(parts) implies w2 in w1.^(succ)
-- div,1
all c1,c2 : Component | all w1,w2 : Workstation | w1 in c1.workstation and w2 in c2.workstation and c2 in c1.^parts
implies w1 in w2.^succ
-- div,13
all c0, c1 : Component | all w0, w1 : Workstation | c0->w0 in workstation and c1->w1 in workstation and c1 in c0.^parts implies w0 in w1.^succ
-- div,1
all c : Component | all p : c.parts | some (c.workstation) => some(p.workstation) and all w: p.workstation | c.workstation in w.^succ
-- div,1
all w: Workstation, c1, c2: Component | c2 in c1.^(parts) => w in c2.workstation-c1.workstation && w.succ in c1.workstation-c2.workstation
-- div,1
all disj w1, w2: Workstation, c1, c2: Component | c2 in c1.^(parts) => w2 in c2.workstation && w1 in c1.workstation && w1 in w2.^(succ) && w1 != w2
-- div,1
all w: Workstation, c1, c2: Product | c2 in c1.^(parts) => w in c2.workstation-c1.workstation && w.^(succ) in c1.workstation-c2.workstation
-- div,1
all w: Workstation, c1, c2: Component | c2 in c1.^(parts) => w in c2.workstation-c1.workstation && w.^(succ) in c1.workstation-c2.workstation
-- div,3
all c1,c2 : Component | all w1,w2 : Workstation | w1 in c1.workstation and w2 in c2.workstation and c1 in c2.^parts
implies w1 in c2.workstation.^succ
-- div,1
all c : Component | all p : Product | all w, wa : Workstation | w in c.workstation and p in c.^parts and wa in p.workstation implies w in wa.^succ
-- div,1
all c : Component | all p : Component | all w, wa : Workstation | w in c.workstation and p in c.^parts and wa in p.workstation implies w in wa.^succ
-- div,1
all c1,c2 : Component | all w1,w2 : Workstation | c1!=c2 and w1 in c1.workstation and w2 in c2.workstation and c1 in c2.^parts
implies w1 in c2.workstation
-- div,1
all c : Component | all p : c.parts & Component | some (c.workstation) => some(p.workstation) and all w: p.workstation | c.workstation in w.^succ
-- div,3
all w: Workstation, p: Product | some p.^(parts) => w in p.^(parts).workstation-p.workstation && w.^(succ) in p.workstation-p.^(parts).workstation
-- div,1
all c1,c2 : Component | all w1,w2 : Workstation | c1!=c2 and w1 in c1.workstation and w2 in c2.workstation and c1 in c2.^parts
implies w1 in c1.workstation.^succ
-- div,1
all c1,c2 : Component | all w1,w2 : Workstation | c1!=c2 and w1 in c1.workstation and w2 in c2.workstation and c1 in c2.^parts
implies w1 in c2.workstation.^succ
-- div,2
all c1,c2 : Component | all w1,w2 : Workstation | c1!=c2 and w1 in c1.workstation and w2 in c2.workstation and c1 in c2.^parts
implies w2 in c1.workstation.^succ
-- div,1
all c1,c2 : Component | all w1,w2 : Workstation | c1!=c2 and w1 in c1.workstation and w2 in c2.workstation and c1 in c2.^parts
implies w2 in c2.workstation.^succ
-- div,1
all disj w1, w2: Workstation, c1, c2: Component | c2 in c1.parts => w2 in c2.workstation-c1.workstation && w1 in c1.workstation-c2.workstation && w1 in w2.^(succ)
-- div,1
all disj w1, w2: Workstation, c1, c2: Component | c2 in c1.^(parts) => w2 in c2.workstation-c1.workstation && w1 in c1.workstation-c2.workstation && w1 in w2.^(succ)
-- div,2
all c1, c2 : Component | c2 in c1.^parts implies c1.workstation in c2.workstation.^succ
all c1, c2 : Component | c1.workstation in c2.workstation.^succ implies c2 in c1.^parts
-- div,1
all c1, c2 : Component | c2 in c1.^parts implies c2.workstation in c1.workstation.^succ
all c1, c2 : Component | c2.workstation in c1.workstation.^succ implies c2 in c1.^parts
-- div,1
all disj w1, w2: Workstation, c1, c2: Component | c2 in c1.^(parts) => w2 in c2.workstation-c1.workstation && w1 in c1.workstation-c2.workstation && w1 in w2.^(succ) && w1 != w2
-- div,1
all w: Workstation, c1, c2: Component | c2 in c1.^(parts) => w in c2.workstation-c1.workstation && w.^(succ) in c1.workstation-c2.workstation
all w: Workstation, p: Product | some p.^(parts) => w in p.^(parts).workstation-p.workstation && w.^(succ) in p.workstation-p.^(parts).workstation
-- div,1
