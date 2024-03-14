-- equiv pair start,2
all x:Product | some x.parts
all x:Material | no x.parts
-- div,1
all c: Component | #c.parts>0
all m: Material | #m.parts = none
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | c in c.parts
all m: Material | no m.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
(parts :> Component) in Component set -> some Product
no (parts :> Material)
-- div,1
-- equiv pair end
