no parts.Material and (Component = parts.Component)
-- div,1
Component in parts.Component and Material.parts = none
-- div,3
some Component.parts and no iden
no Material.parts
-- div,1
parts in Component ->  some Product
parts not in Material -> Product
-- div,1
parts in Component -> some Product
parts in Material -> one Product
-- div,1
parts in Component -> some Product
parts in Material -> lone Product
-- div,1
(Component <: parts) in Component one -> some Product
no (Material <: parts)
-- div,1
all c : Component | c in Component.~parts
no Material & Product.~parts
-- div,1
all c : Component | c in Component.~parts

all m : Material | m not in Product.~parts
-- div,1
all c:Component | some p:Product | c->p in parts
all m:Material | no parts
-- div,1
all c : Component, p : Product | p in c.parts
all m : Material, p : Product | p not in m.parts
-- div,1
all c : Component, p : Product | c->p in parts
all m : Material , p : Product | m->p not in parts
-- div,1
all product: Product | product != Material implies some product.parts
all mat: Material | no mat.parts
-- div,2
all product: Product | product != Material implies not no product.parts
all mat: Material | no mat.parts
-- div,1
all com: Component | one p: Product | p in com.parts
all m: Material | no p: Product | p in m.parts
-- div,1
all product: Component | not no product.parts
all product: Product | product != Material implies some product.parts
all mat: Material | no mat.parts
-- div,1
all c : Component, p : Product | p in c.parts
all d : Dangerous, p : Product | p in d.parts
all m : Material, p : Product | p not in m.parts
-- div,1
