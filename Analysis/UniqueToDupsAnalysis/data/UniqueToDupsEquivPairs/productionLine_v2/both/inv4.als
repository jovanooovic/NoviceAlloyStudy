-- equiv pair start,1
Component in Product.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
Component in Component.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | lone c.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c,m: Component | m->c in parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Product | p in Component.parts
-- div,1
-- equiv pair end
-- equiv pair start,9
some Component.parts
no Material.parts
-- div,7
some (Component <: parts)
no (Material <: parts)
-- div,1
some Component.parts
iden not in parts
no Material.parts
-- div,1
-- equiv pair end
-- equiv pair start,2
no parts.Material and some parts.Component
-- div,1
no Material.~parts and some parts.Component
-- div,1
-- equiv pair end
-- equiv pair start,1
no Material.parts and some parts.Component
-- div,1
-- equiv pair end
-- equiv pair start,1
all m: Material, c: Component | m->c in parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Product | no p.parts => p not in Material
-- div,1
-- equiv pair end
-- equiv pair start,7
Component in Product.parts and Material.parts = none
-- div,1
Component in Component.parts and Material.parts = none
-- div,1
all m : Material | no m.parts
Component in Product.parts
-- div,1
all m : Material | no m.parts
Component in Component.parts
-- div,1
all c : Component | some p : Product | c in p.parts
all m : Material | no m.parts
-- div,1
(all c : Component | some p : Product | c in p.parts) and (all m : Material | no p : Product | p in m.parts)
-- div,1
(all c: Component | some p: Product | c in p.parts)
and
(all m: Material | no p: Product | m->p in parts)
-- div,1
-- equiv pair end
-- equiv pair start,1
(no Material.parts) and (Component = Component.parts)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p,z: Product | p->z in parts implies z in Component
-- div,2
-- equiv pair end
-- equiv pair start,2
all c: Component | some parts
all m: Material | no parts
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Product | p.parts in Product implies p = Component
-- div,1
-- equiv pair end
-- equiv pair start,2
all a:Component | some b:Workstation | a->b in workstation
-- div,1
all a:Component | some b:Workstation | a->b in workstation
all a:Product,b:Workstation | a->b in workstation implies a in Component
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Component | lone c.parts
all m:Material | no m.parts
-- div,1
all c : Component | lone p : Product | c->p in parts
all m : Material , p : Product | m->p not in parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component, m:Material | some c.parts and one m.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | no c.parts
all m: Material | no m.parts
-- div,1
-- equiv pair end
-- equiv pair start,8
all c : Component | some parts.c
all m : Material | no parts.m
-- div,1
Component in Product.parts and all m: Material, p: Product | m not in p.parts
-- div,1
all c : Component | some p : Product | c in p.parts
all m : Material, p : Product | m not in p.parts
-- div,1
all c : Component | some p : Product | c in p.parts
all m : Material | no p : Product | m in p.parts
-- div,2
all c : Component | some p : Product | c in p.parts
all m : Material | all p : Product | m not in p.parts
-- div,1
all c:Component | some p:Product | p->c in parts
all m:Material | all p:Product | p->m not in parts
-- div,1
all c : Component | some p : Product | p->c in parts
all m,p : univ | m in Material and p in Product implies not p->m in parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | c->c in parts
all m:Material | m->m not in parts
-- div,1
-- equiv pair end
-- equiv pair start,4
all c: Component, m: Material | c->c in parts and  m->m not in parts
-- div,1
all c : Component, m : Material | (c in Product and c->c in parts) and ( m in Product and m->m not in parts )
-- div,3
-- equiv pair end
-- equiv pair start,1
all c:Component, m:Material, p:Product | c->p in parts and m->p not in parts
-- div,1
-- equiv pair end
-- equiv pair start,2
all c1,c2:Component | c1->c2 in parts
all m1,m2:Material | m1->m2 not in parts
-- div,2
-- equiv pair end
-- equiv pair start,1
some c1,c2:Component | c1->c2 in parts
all m1,m2:Material | m1->m2 not in parts
-- div,1
-- equiv pair end
-- equiv pair start,1
some c1,c2:Component | c1->c2 in parts
some m1,m2:Material | m1->m2 not in parts
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Component | c in Component.~parts

all m : Material | m not in Component.~parts
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Component | all m : Material | all p : Product | c in p.parts and m not in p.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component, p : Product | c in p.parts
all m : Material, p : Product | m in p.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component, p: Product | c in p.parts and all m: Material, p: Product | m not in p.parts
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Component, p : Product | c in p.parts
all m : Material, p : Product | m not in p.parts
-- div,2
all c : Component | all p : Product | c in p.parts
all m : Material | all p : Product | m not in p.parts
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Component | some p: Product | c in p.parts and all m: Material, p: Product | m not in p.parts
-- div,1
all c: Component | some p: Product | c in p.parts and all m: Material | no p: Product | m in p.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | some p : Product | c in p.parts
all m : Material | some p : Product | m in p.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | some p : Product | c in p.parts
all m : Material | no p : Product | m not in p.parts
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Component | some p : Product | c in p.parts and (all m : Material | no p : Product | p in m.parts)
-- div,1
all c: Component | some p: Product | c in p.parts and all m: Material | no p: Product | m->p in parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | some p : Product | c in p.parts
all m : Material | some p : Product | m not in p.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c1,c2:Component | c1->c2 in parts implies c1 != c2
all m1,m2:Material | m1->m2 not in parts implies m1 != m2
-- div,1
-- equiv pair end
-- equiv pair start,2
all product: Product | (product != Material implies some product.parts) and  (product = Material implies no product.parts)
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Component | some p : Product | c->p in parts
all m,p : univ | m in Material and p in Product implies not parts in m->p
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | some p : Product | c->p in parts
all m,p : univ | m in Material and p in Product implies not p->m in parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | some p : Product | c->p in parts
all m,p : univ | m in Material and p in Product implies not parts in p->m
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | some p : Product | p->c in parts
all m,p : univ | m in Material and p in Product implies not parts in m->p
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component, c1 : Component, m : Material | (c in Product and c->c1 in parts) and ( m in Product and m->m not in parts )
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Component, m : Material, p : Product, p1 : Product | (c in Product and p->p1 in parts) and (m in Product and p->p1 not in parts)
-- div,1
all c : Component, m : Material, p : Product, p1 : Product, p2 : Product, p3 : Product | (c in Product and p->p1 in parts) and (m in Product and p2->p3 not in parts)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component, c1 : Component, m : Material, m1 : Material | (c in Product and c->c1 in parts) and ( m in Product and m->m1 not in parts )
-- div,1
-- equiv pair end
