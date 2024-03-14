parts.Product in Component
-- div,1
all m: Material| no m.parts
-- div,1
all x: Component | some x.parts
-- div,1
all c:Component | some c.parts
-- div,2
all c:Component,m:Material| no m.parts
-- div,3
all p : Product | p in Material implies no p.parts
-- div,1
all c:Component,m:Material| some c.parts
-- div,1
all x: Product | x in Component implies some x.parts
-- div,2
all c:Component,m:Material| some c.parts and no m.parts
-- div,5
all c:Component,m:Material| no m.parts and some c.parts
-- div,4
all p : Product | (some p.parts and p in Product) or p in Material
-- div,1
all p : Product | some p.parts => p in Product or p in Material
-- div,1
all c: Component, m: Material| #c.parts >0 and no m.parts
-- div,3
all p : Product | (some p.parts and p in Component) or p in Material
-- div,1
all c: Component, m: Material| #c.parts >=1 and no m.parts
-- div,1
all p : Product | (some p.parts => p in Component) or p in Material
-- div,1
all c : Component, m : Material | some c.^parts and no m.^parts
-- div,1
all c : Component | all m : Material | some c.parts and no m.parts
-- div,1
all c: Component | some c.parts && (all m: Material | no m.parts)
-- div,1
all x : Component | some x.parts and all y : Material | no y.parts
-- div,2
all c : Component | all m : Material | no m.parts and some c.parts
-- div,3
all x: Component | some (x.parts) || all y: Material | no (y.parts)
-- div,1
all c: Component |all m: Material | #c.parts>0 &&  no m.parts
-- div,1
all c: Component | #c.parts>0 &&  all m: Material | no m.parts
-- div,4
all c : Component | all m : Material | no m.^parts and some c.parts
-- div,2
all c : Component | all m : Material | no m.(^parts) or some c.parts
-- div,1
all c : Component | no m : Material | some m.(^parts) and some c.parts
-- div,1
all p : Product | (some p.parts and p in Product) or (no p.parts and p in Material)
-- div,1
all p:Product| (p in Material => no p.parts) or (p in Component => one p.parts)
-- div,1
all p:Product| (p in Material => no p.parts) or (p in Component => lone p.parts)
-- div,1
all p:Product| (p in Material => no p.parts) or (p in Component =>some p.parts)
-- div,2
all p : Product | (p in Component implies some p.parts) or (p in Material implies no p.parts)
-- div,1
all p : Product | p in Component => some p.parts and p in Material => no p.parts
-- div,1
all c : Component | all m : Material | some p : Product | c->p in parts and m->p not in parts
-- div,1
all c : Component | some p : Product | p in c.parts
and
all m : Material | no p: Product | p in m.parts
-- div,1
all c:Component | some p:Product | c -> p in parts
and
all m:Material | no p:Product | m -> p in parts
-- div,1
all c:Component | some p:Product | p in c.parts and (all m:Material | all p:Product | p not in m.parts)
-- div,1
all c:Component | some p:Product | p in c.parts and (all m:Material | all p1:Product | p1 not in m.parts)
-- div,1
all c: Component | all m : Material | (some p : Product| p in c.parts) and not(some p : Product| p in m.parts)
-- div,1
all p:Product, p1:Product | (p in Component implies p in p1.parts and p!=p1) or (p in Material implies p not in p1.parts and p!=p1)
-- div,1
all p:Product, p1:Product | (p in Component implies p in p1.parts and p!=p1) or (p in Material implies p1 not in p1.parts and p!=p1)
-- div,1
all p:Product, p1:Product | (p in Component implies p1 in p1.parts and p!=p1) or (p in Material implies p1 not in p1.parts and p!=p1)
-- div,1
