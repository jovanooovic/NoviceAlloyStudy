no Material.parts
-- div,1
parts.Product in Component
-- div,1
parts in Component -> Product
-- div,5
all c:Component | some c.parts
-- div,2
all p:Product | no p.parts => p in Material
-- div,2
all c:Component, m:Material | some c.parts
-- div,1
all p:Product | some p.parts => p in Component
-- div,1
all p,z: Product | p->z in parts implies p in Component
-- div,2
all p1, p2 : Product | p1 -> p2 in parts => p1 in Component
-- div,2
all c : Component | some p : Product | p in c.parts
-- div,1
all c : Component | some p:Product | c->p in parts
-- div,3
all a:Component | some b:Product | a->b in parts
-- div,1
all c:Component, m:Material | some c.parts and no m.parts
-- div,11
all c:Component, m:Material | some c.parts and #m.parts=0
-- div,1
all c: Component, m: Material | c.parts != none and m.parts = none
-- div,2
all c:Component, m:Material | (c.parts not in none) and (m.parts in none)
-- div,1
all c : Component | some c.parts and all m : Material | no m.parts
-- div,3
all c : Component | some c.parts
all m : Material | no (m.parts)-m
-- div,1
all c : Component | all m : Material | c.parts != none and m.parts = none
-- div,1
all c:Component | (c.parts != none) and (all m: Material | m.parts = none)
-- div,1
all p: Product | p in Component implies some p.parts and p in Material implies no p.parts
-- div,1
all c: Component, m: Material | some p: Product | p in c.parts and p not in m.parts
-- div,1
all c:Component, m:Material | some p:Product | c->p in parts and m->p not in parts
-- div,1
all product: Product | (product != Material implies some product.parts) or  (product = Material implies no product.parts)
-- div,1
all product: Product | (product = Component implies not no product.parts) and  (product = Material implies no product.parts)
-- div,1
all c:Component | some p:Product | (p in c.parts) and (all m: Material, p: Product | p not in m.parts)
-- div,1
all c:Component | some p:Product | (p in c.parts) and (all m: Material | no p: Product | p in m.parts)
-- div,1
all c : Component | some p : Product | c->p in parts
all m : Material| some p : Product | m->p not in parts
-- div,1
all a:Component | some b:Product | a->b in parts
all a:Product,b:Workstation | a->b in parts implies a in Component
-- div,1
