all x : Components |
-- div,5
c.parts != none
no m.parts
-- div,1
Components in parts.Product
-- div,1
all p:Product | p in c.parts
-- div,1
all c : Component | c in parts|
-- div,1
all c:Components | some c.parts
-- div,1
all c:Component | c->p in parts
-- div,1
all c:Component | some p:Product
-- div,2
parts in Component -> some Produt
-- div,1
some Component.parts
no Material.parrs
-- div,1
some Components.parts
no Materials.parrs
-- div,1
no parts.Material and some parts.Components
-- div,1
no Material.parts. and some parts.Component
-- div,1
all c : Component, m : Material, p : Product |
-- div,1
all m: Material, c: Components | m->c in parts
-- div,1
Component in parts.Product and Material.part = none
-- div,1
all c : Components | some p:Product | c->p in parts
-- div,2
all c : Component | some p in Product| c->p in parts
-- div,1
all c : Component | some p in Product| c->p in parts|
-- div,1
all p,z: Products | p->z in parts implies p in Component
-- div,1
all c:Component | some c.parts
all m:Materia | no m.parts
-- div,1
all m : Material | no m.parts
Components in Product.parts
-- div,1
all c:Component | lone c.parts
all m:Material | no c.parts
-- div,1
all c:Components | some p:
not some m : Material | m.parts
-- div,2
some Components(Component:>parts - iden)
no Material.parts
-- div,1
all p: Product | p.parts in Product implies p = Components
-- div,1
Components in Parts.parts and no (Material in Parts.parts)
-- div,1
all c: Componet | some c.parts
all m: Material | no p.parts
-- div,1
all c:Components| some c.parts
all m:Material| none m.parts
-- div,1
all c:Components | some c.parts
all m:Materials | no m.parts
-- div,1
all c: Component | some c.parts
all m: material | no m.parts
-- div,1
all c: Component | some c.parts
all m: Material | no p.parts
-- div,1
all p1, p2 : Product | p1 -> p2 in parts => p1 in Components
-- div,1
all c:Components | some c.parts
all m : Material | no m.parts
-- div,1
all c: Component | 	some c.parts
all m: material | no m.parts
-- div,1
all c : Component | some c.parts
all m : Material | no c.parts
-- div,2
all c : Component | some c.parts
all m : Material | no p.parts
-- div,1
all m : Material | no m.parts
all c : Component | some m.parts
-- div,1
all c : Component | some c.parts
all m : Materials | no m.parts
-- div,1
all c: Components | none c.parts
all m: Material | none m.parts
-- div,1
all x : Components | some x.parts
all x : Material | no x.parts
-- div,1
all c: Components | some c.parts
all m:Material | m.parts = none
-- div,1
all c : Component | some c.partd and all m : Material | no m.parts
-- div,1
parts in Component -> some Product
parts in Material -> no Product
-- div,4
all c : Componente | some c.parts
and
all m : Material | no m.parts
-- div,1
all c : Component | no lone c.parts
all m : Material | no (m.parts)-m
-- div,1
parts in Component -> some Product
parts in Material set -> no Product
-- div,1
(iden :> Components in parts.~parts) and (no Material in parts.~parts)
-- div,1
all c : Component | c in Component.~parts
no Material & Products.~parts
-- div,1
all c : Components | c in Components.~parts
no Material & Products.~parts
-- div,1
all c : Component | all m : Materials | c.parts != none and m.parts = none
-- div,1
all c : Component | all m : material | c.parts != none and m.parts is none
-- div,1
all c : Component | all m : Material | (c.parts != none) and (m.parts is none)
-- div,2
all c : Component | all m : Material | (c.parts != none) and (m.parts is none))
-- div,1
all p: Product | p in Component implies some p.parts and p in Materials implies no p.parts
-- div,1
all c : Components | all m : Material | all p : Product | c in p.parts and m not in p.parts
-- div,1
all p: Component| some x: Produt| p->x in parts
all m: Material| no p: Produt| m->p in parts
-- div,1
all c:Component | some p:Product | c->p in parts
all m:Material, p:Products | no m->p in parts
-- div,1
all c : Component | some p : Product | p in c.parts
all m : Material | m.Product.parts == none
-- div,1
all c : Component, p : Product | p in c.parts
all m : Materials, p : Product | p not in m.parts
-- div,1
all c : Components, p : Product | c->p in parts
all m : Material , p : Product | m->p not in parts
-- div,1
(all c: Component | p: Product | c in p.parts) and (all m: Material, p: Product | m not in p.parts)
-- div,1
(all c: Component | p: Product | c in p.parts) and
(all m: Material, p: Product | m not in p.parts)
-- div,1
(all c: Component | p: Product | c in p.parts ) and
(all m: Material, p: Product | m not in p.parts )
-- div,1
all c:Component | some p:Product | (p in c.parts) and (all m: Material, no p: Product | p in m.parts)
-- div,1
all c:Component, some p:Product | (p in c.parts) and (all m: Material, p: Product | p not in m.parts)
-- div,1
all c : Component | some p : Product | p in c.Product.parts
all m : Material | m.Product.parts == none
-- div,1
all c : Component | some p : Product| c->p in parts
all m : Material | no p :  Product | c->p in parts
-- div,1
all p: Product | no p.parts implies p in Material
all p: Product | some p.parts implies p in Components
-- div,1
all c : Component | some p : Product | p in c.parts
all m : Material | all p : Prodcut | p not in m.parts
-- div,1
all c : Component | some p : Product | c in p.parts) and (all m : Material | no p : Product | p in m.parts
-- div,1
all c : Components | some p : Product | c->p in parts
all m : Material | all p: Product | m->p not in parts
-- div,1
(all c: Component | some p: Product | p in c.parts) and
(all m: Material | no prod: Product | p in m.parts)
-- div,1
all c : Component, m : Material | (c in Product and c->c1 in parts) and ( m in Product and m->m not in parts )
-- div,1
all product: Product | (product == Component implies not no product.parts) and  (product == Material implies no product.parts)
-- div,1
all c : Component | some p : Product | p->c in parts
all m,p : univ | m in Material and p in Products implies not parts in m->p
-- div,1
all c:Component | some p:Product | c->p in parts
all m:Material | all p:Product | m->p not in parts
-- div,2
