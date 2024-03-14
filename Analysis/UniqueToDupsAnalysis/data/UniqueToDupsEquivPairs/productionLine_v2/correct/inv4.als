-- equiv pair start,199
parts.Product = Component
-- div,7
Component = parts.Product
-- div,11
parts in Component -> some Product
-- div,16
Component in parts.Product and Material.parts = none
-- div,4
parts in Component -> some Product
no Material.parts
-- div,3
all p : Product | p.parts != none <=> p in Component
-- div,2
all c:Component | some c.parts
no Material.parts
-- div,11
no Material.parts
all c : Component | some c.parts
-- div,2
all c : Component | some c . parts
Material . parts = none
-- div,2
all m : Material | no m.parts
Component in parts.Product
-- div,1
(Component <: parts) in Component set -> some Product
no (Material <: parts)
-- div,1
all p: Product | p.parts = none implies p in Material else p in Component
-- div,1
(iden :> Component in parts.~parts) and (no iden :> Material & parts.~parts)
-- div,1
all c : Component | some c.parts
iden not in parts
no Material.parts
-- div,1
all c:Component | some c.parts
all m:Material | no m.parts
-- div,59
all x:Component | some x.parts
all x:Material | no x.parts
-- div,3
all c : Component | some c.parts
all c : Material | no c.parts
-- div,2
all m : Material | no m.parts
all c : Component | some c.parts
-- div,4
all c: Component | c.parts != none
all m: Material| no m.parts
-- div,1
all c : Component | c in Product.~parts
no Material & Product.~parts
-- div,1
all c: Component | some c.parts
all mat: Material | no mat.parts
-- div,1
all c:Component | some c.parts
all m:Material | m.parts = none
-- div,6
all c: Component | some c.parts
all m: Material | not some m.parts
-- div,1
all c: Component | c.parts != none
all m: Material | m.parts = none
-- div,5
not some c:Component | no c.parts
not some m:Material | some m.parts
-- div,1
all com: Component | some com.parts
all mat: Material | no mat.parts
-- div,1
all p: Product | (p in Component implies some p.parts) and (p in Material implies no p.parts)
-- div,1
all p:Product | (no p.parts => p in Material) and (some p.parts => p in Component)
-- div,1
all product: Component | not no product.parts
all mat: Material | no mat.parts
-- div,1
all c : Component | c in Product.~parts

all m : Material | m not in Product.~parts
-- div,1
all p: Product | no p.parts implies p in Material
all p: Product | some p.parts implies p in Component
-- div,3
all p:Product | p in Component implies some(p.parts)
all p:Product | p in Material implies no(p.parts)
-- div,1
all product: Product | product not in Material implies some product.parts
all mat: Material | no mat.parts
-- div,1
all c : Component | some p : Product | p in c.parts
all m : Material, p : Product | p not in m.parts
-- div,2
all c:Component | some p:Product | c->p in parts
all m:Material, p:Product | m->p not in parts
-- div,6
all c : Component | some p : Product | p in c.parts
all m : Material | no p : Product | p in m.parts
-- div,6
(all c : Component | some p : Product | p in c.parts) and (all m : Material | no p : Product | m->p in parts)
-- div,1
(all c: Component | some p: Product | c in parts.p)
and
(all m: Material | no p: Product | m->p in parts)
-- div,2
all c : Component | some p : Product | p in c.parts
all m : Material | all p : Product | p not in m.parts
-- div,1
all c : Component | some p:Product | c->p in parts
all m : Material | no p:Product | m->p in parts
-- div,12
all p: Component| some x: Product| p->x in parts
all m: Material| no p: Product| m->p in parts
-- div,1
all com: Component | some p: Product | p in com.parts
all m: Material | no p: Product | p in m.parts
-- div,2
all c:Component | some p:Product | c->p in parts
all m:Material | all p:Product | m->p not in parts
-- div,5
(all c: Component | some p: Product | p in c.parts) and
(all m: Material | no prod: Product | prod in m.parts)
-- div,1
all a:Component | some b:Product | a->b in parts
all a:Product,b:Product | a->b in parts implies a in Component
-- div,1
all c : Component | some p : Product | c->p in parts
all m,p : univ | m in Material and p in Product implies not m->p in parts
-- div,1
all product: Component | not no product.parts
all product: Product | product not in Material implies some product.parts
all mat: Material | no mat.parts
-- div,1
-- equiv pair end
