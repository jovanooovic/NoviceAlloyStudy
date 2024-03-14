Component -> parts.Product
-- div,1
all c : Component | c in parts
-- div,1
some Component.parts-iden
no Material.parts
-- div,1
some Component:>parts - iden
no Material.parts
-- div,1
parts in Component -> some Product
no parts in Material
-- div,1
all p:Product | p in Product.parts -> p in Component.parts
-- div,1
some Component.(Component:>parts - iden)
no Material.parts
-- div,1
Component in Product.parts and no Material in Product.parts
-- div,1
all c:Component | c in parts
all m:Material | m not in parts
-- div,1
all c:Component | some c.parts
all m:Material | none m.parts
-- div,1
Component in Product.parts and no (Material in Product.parts)
-- div,1
all c : Component, m : Material | some c.parts and not m.parts
-- div,1
all c: Component | none c.parts
all m: Material | none m.parts
-- div,1
all c: Component | some c.parts
all m: Material | none m.parts
-- div,2
all c : Component | c in parts
all m : Material | m not in parts
-- div,1
all m : Material | no m.parts
Component in Product.parts.Component
-- div,1
some Component.parts
iden not in Component->parts
no Material.parts
-- div,2
parts in Component -> some Product
parts in Material -> none Product
-- div,2
(iden :> Component in parts.~parts) and (no Material in parts.~parts)
-- div,1
parts in Component ->  some Product
parts in Material none -> Product
-- div,1
all com: Component | some com.parts
all mat: Material | none mat.parts
-- div,1
all c : Component | all m : Material | c.parts != none and m.parts is none
-- div,1
all c: Component, m: Material | some p: Product | p in c.parts and no p in m.parts
-- div,1
all c : Component, m : Material, p : Product | some p in c.parts and no p in m.parts
-- div,1
all c : Component, m : Material, p : Product | some p in c.parts and p not in m.parts
-- div,1
all c : Component | c in Component.~parts

all m : Material | no m in Component.~parts
-- div,1
all c : Component, m : Material, p : Product | (some p in c.parts) and (no p in m.parts)
-- div,1
all c : Component, m : Material, p : Product | (some p in c.parts) and (p not in m.parts)
-- div,1
all c:Component | some p:Product | c->p in parts
all m:Material, p:Product | no m->p in parts
-- div,1
all p:Product | p in Component implies some(p.parts)
all p:Product | p in Material implies none(p.parts)
-- div,2
all a:Component | some b:Product | a->b in parts
all a:Product,b:Workstation | a->b in workstation implies a in parts
-- div,1
all a:Component | some b:Workstation | a->b in parts
all a:Product,b:Workstation | a->b in workstation implies a in parts
-- div,1
all c : Component | some p : Product | p in c.Product.parts
all m : Material | all p: Produtct | p not in m.Product.parts
-- div,1
