parts = Component + (Product-Material)
-- div,1
Component in parts
Material not in parts
-- div,1
all c : Component | c in parts
parts - Material = parts
-- div,1
all p : Product | some p.parts in Component or p in Material
-- div,1
all c : Component, m : Material | c in parts & m not in parts
-- div,1
all c : Component | c in Product.parts
parts - Material = parts
-- div,1
no m : Material | m.parts
and
all c : Componente | some m.parts
-- div,1
all c : Component | some c.parts
all m : Material | none m.parts
-- div,1
all c : Component | some c.parts
all m : Material | none c.parts
-- div,1
all c : Component | no m : Material | m.(^parts) and some c.parts
-- div,1
(no m : Material | m.parts)
and
(all c : Componente | some m.parts)
-- div,1
all x : Component | some x.parts and all y : Material | none y.parts
-- div,1
all c: Component | c in Product.parts
all m: Material |no m in Product.parts
-- div,1
(Component <: parts) in Component set -> some Product
parts - Material = parts
-- div,1
all c : Component | c in ((Product-Material).parts - iden)

no (Material <: parts)
-- div,1
all x : Product | x in (Component-Material).parts and no x in (Material-Component).parts
-- div,1
all p:Product | p in Component implies p.parts
all p:Product | p in Material implies no p.parts
-- div,1
(all c : Component | some p: Product | p in c.parts) and (all m : Material | no Product in m.parts)
-- div,1
all c:Component | some p:Product | p in c.parts and (all m:Material | all p:Product | no p in m.parts)
-- div,1
all x: Product |  x in Component implies some x.parts
all x: Product |  x in Material implies none x.parts
-- div,1
all p : Product | p in Component implies some p.parts
all p : Product | p in Material implies none p.parts
-- div,2
all x:Product | x is in Component implies #(x.parts)>0
all x:Product | x is in Material implies #(x.parts)=0
-- div,2
