all c:Component | lone workstation.c
-- div,1
all m:Material | m in Component  => one workstation.m
-- div,1
all x: Component | some y : Workstation | y in x.workstation
-- div,1
all c: Component| some w: Workstation| w in c.workstation
-- div,2
all c : Component | (some ws : Workstation | ws in c.workstation)
-- div,2
all p : Product | some p.parts => p in Component or p in Material
-- div,2
