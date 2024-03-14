one Component.workstation
-- div,2
some Component.workstation
-- div,1
workstation in Component one -> set Workstation
-- div,2
workstation in Component lone -> set Workstation
-- div,1
all p : Product | some p.parts and p in Component or p in Material
-- div,2
all c : Component | some c.parts
all m : Material | no m.parts
-- div,1
all c1, c2 : Component | all w : Workstation | (w in c1.workstation) implies (w not in c2.workstation)
-- div,3
