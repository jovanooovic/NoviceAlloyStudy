Component in workstation.Workstation
-- div,2
workstation in Component -> some Workstation
-- div,2
all c:Component | lone(c.workstation)
-- div,1
all c : Component | some c.workstation
-- div,2
iden :> Component in workstation.~workstation
-- div,1
all c : Component | some w : Workstation | c->w in workstation
-- div,2
all c : Component | one wb : Workstation | c.workstation in wb
-- div,1
all c: Component | some ws: Workstation  | ws in c.workstation
-- div,1
all c: Component, w: Workstation | w in c.workstation implies some workstation.w
-- div,1
all x : Component | some y : Workstation | one x.workstation & y - x.workstation & (Workstation-y)
-- div,3
all a:Component | some b:Workstation | a->b in workstation
all a1,a2:Workstation | (some b:Component | a1->b in workstation and a2->b in workstation) implies a1 = a2
-- div,1
