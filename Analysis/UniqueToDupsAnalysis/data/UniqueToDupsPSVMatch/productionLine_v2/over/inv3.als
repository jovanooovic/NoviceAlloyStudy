workstation in Component  -> one Worker
-- div,1
workstation in Component one -> one Workstation
-- div,1
all c : Component | one workstation.c
-- div,1
workstation in Workstation one -> some Component
-- div,1
workstation in Component some -> one Workstation
-- div,2
all c : Component | one c.~workstation
-- div,1
all c: Component | one w: Workstation | c in begin
-- div,1
all c: Component | one ws: Workstation | ws in workstation.c
-- div,1
all x : Component | some y : Workstation | one x.workstation & y & x.workstation & (Workstation-y)
-- div,1
all a:Workstation | some b:Worker | a->b in workstation
all a1,a2:Workstation | (some b:Component | a1->b in workstation and a2->b in workstation) implies a1 = a2
-- div,1
all a:Workstation | some b:Component | a->b in workstation
all a1,a2:Workstation | (some b:Component | a1->b in workstation and a2->b in workstation) implies a1 = a2
-- div,1
