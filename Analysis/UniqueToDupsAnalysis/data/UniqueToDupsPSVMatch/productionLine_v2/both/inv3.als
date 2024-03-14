one Component.workstation
-- div,1
workstation in Component one -> Worker
-- div,1
workstation in Component one -> Workstation
-- div,2
workstation in Component some -> some Workstation
-- div,1
iden :> Component = workstation.~workstation
-- div,1
all w: Workstation | one workstation.w
-- div,1
one ws: Workstation | ws in Component.workstation
-- div,1
all c: Component | one w: Workstation | c.workstation in begin
-- div,1
all c: Component, w: Workstation | w in c.workstation implies one workstation.c
-- div,1
all c: Component, w: Workstation | w in c.workstation implies one workstation.w
-- div,2
all c: Component, w: Workstation | w in c.workstation implies lone workstation.w
-- div,1
