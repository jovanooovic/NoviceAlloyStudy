-- equiv pair start,11
iden in parts.~parts
-- div,6
iden in ~parts.parts
-- div,1
let R = Component <: parts | iden in R.~R
-- div,1
iden in ~parts.parts and Component in parts.Product
-- div,1
iden in parts.~parts and Component in parts.Product
-- div,1
iden in parts.~parts and (Component + Resource) in parts.Product
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Product | some p.parts
-- div,1
iden & Product->Product in parts.~parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | c not in c.*parts
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Component | some p:Product | c.parts = p
-- div,3
-- equiv pair end
