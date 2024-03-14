some Component.parts
no Material.parts
-- div,2
no Material.parts
some Component.parts
-- div,3
all c : Component | c in Product.parts

no (Material <: parts)
-- div,1
all c : Component, m : Material | no c.parts and no m.parts
-- div,1
some x : Product | x in Component.parts and x not in Material.parts
-- div,1
all c:Component,m:Material| no m.parts and some parts.c
-- div,1
all c: Component, m: Material| #c.parts <0 and no m.parts
-- div,1
all c: Component, m: Material| #c.parts <1 and no m.parts
-- div,1
all c:Component, m:Material | c in c.parts and m not in m.parts
-- div,1
(all c: Component| some c.parts) && (all m: Material| no parts.m)
-- div,1
all p: Material | some p.parts
all p: Component | no p.parts
-- div,1
(all c: Component| some parts.c) && (all m: Material| no parts.m)
-- div,1
all c : Component | c in (Product-Material).parts

no (Material <: parts)
-- div,1
all c : Component | c in c.parts
and
all m: Material | m in m.parts
-- div,1
all c: Component | c in c.parts
all m: Material | m not in m.parts
-- div,1
(all c: Component| some parts.c) && (all m: Material| #parts.m=0)
-- div,1
all c : Component | #c.parts>0
all m :Material | #m.parts>0
-- div,2
all c: Component | some c.parts && (all m: Material | #m.parts = none )
-- div,1
all c: Component | all m: Material | some c.parts && #m.parts = none
-- div,1
all c:Component, m:Material, p:Product | c in p.parts and no m.parts
-- div,1
all c: Component | all m: Material | #c.parts>0 && #m.parts = none
-- div,2
all c:Component, m:Material, p:Product | c in p.parts and m not in p.parts
-- div,1
all p:Component | some Product.parts
all c:Material | no Product.parts
-- div,1
all c: Component, m: Material| c not in Dangerous and #c.parts >0 and no m.parts
-- div,1
all c: Component | c in Product.parts
all m: Material | m not in Product.parts
-- div,1
all x : Product | x in (Component-Material).parts and x not in (Material-Component).parts
-- div,1
all y : Product | y.parts in Component
all y : Product | y.parts not in Material
-- div,1
some y : Product | y.parts in Component
some y : Product | y.parts not in Material
-- div,1
all p1:Product | all c:Component , m:Material | p1 in c.parts and p1 in m.parts
-- div,1
some p1:Product | all c:Component , m:Material | p1 in c.parts and p1 not in m.parts
-- div,1
all p: Product, c: Component | p.parts in c && (all m: Material | #m.parts = none)
-- div,1
all c: Component, p: c.parts-(c+Dangerous) | all m: Material | p in c && #m.parts = none
-- div,1
all c : Component | one p : Product | p in c.parts
and
all m : Material | no p: Product | p in m.parts
-- div,1
(all c : Component | some p : Product | p.parts in c)
and
(all m : Material | no p : Product | p.parts in m)
-- div,1
all c : Component | some p:Product | c in p.parts
and
all m: Material | no p:Product | c in p.parts
-- div,1
(all c:Component | some p:Product | c in p.parts)
and
(all m:Material | no p:Product | m in p.parts)
-- div,5
(all c:Component | some p:Product | p in c.parts)
and
(all m:Material | no p:Product | p not in m.parts)
-- div,1
(all c : Component | some p : Product | c in p.parts) and (all m : Material | no p : Product | m->p in parts)
-- div,1
(all c:Component | some p:Product | p not in c.parts)
and
(all m:Material | no p:Product | p not in m.parts)
-- div,1
all c : Component | some p:Product | c in p.parts
and
all m: Material | all p:Product |  c not in p.parts
-- div,1
(all c:Component | some p:Product | c in p.parts)
and
(all c:Component | some m:Material | c not in m.parts)
-- div,1
