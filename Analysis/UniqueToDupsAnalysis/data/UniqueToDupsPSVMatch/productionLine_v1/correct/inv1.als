Component in parts.Product
-- div,4
parts in Component -> some Product
-- div,5
all c:Component| some c.parts
-- div,57
all c:Component | #c.parts >=1
-- div,1
iden & Component->Product in parts.~parts
-- div,5
iden & Component->Component in parts.~parts
-- div,3
all c:Component | some p:Product | p in c.parts
-- div,1
