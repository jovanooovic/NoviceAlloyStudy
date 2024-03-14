-- equiv pair start,156
workstation in Component -> one Workstation
-- div,18
all c:Component | one c.workstation
-- div,67
all co: Component | one co.workstation
-- div,2
all com: Component | one com.workstation
-- div,1
all c : Component | one (c.workstation & Workstation)
-- div,1
all c : Component | one w : Workstation | c.workstation = w
-- div,1
all c : Component | one w : Workstation | c in workstation.w
-- div,2
all c:Component | one w:Workstation | w in c.workstation
-- div,7
all c:Component | one w:Workstation | c->w in workstation
-- div,8
all c: Component | one s: Workstation | c->s in workstation
-- div,1
all c:Component | one ws:Workstation | ws in c.workstation
-- div,18
all c:Component | one wt:Workstation | wt in c.workstation
-- div,2
all c:Component | one ws:Workstation | c->ws in workstation
-- div,16
all c : Component | one wb : Workstation | c->wb in workstation
-- div,1
all c : Component | one wks: Workstation | c->wks in workstation
-- div,1
all comp: Component | one w: Workstation | w in comp.workstation
-- div,1
all com: Component | one ws: Workstation | ws in com.workstation
-- div,1
all c : Component | one wb : Workstation | one (c.workstation & wb)
-- div,1
(iden :> Component in workstation.~workstation) and  (~workstation.workstation in iden)
-- div,1
all x : Component | some y : Workstation | one x.workstation & y + x.workstation & (Workstation-y)
-- div,2
all x : Component | some y : Workstation | one x.workstation & y and no x.workstation & (Workstation-y)
-- div,2
all c : Component | some w1 : Workstation | c->w1 in workstation and all w2 : Workstation | c->w2 in workstation implies w1 = w2
-- div,1
all a:Component | some b:Workstation | a->b in workstation
all a1,a2:Workstation | (some b:Component | b->a1 in workstation and b->a2 in workstation) implies a1 = a2
-- div,1
-- equiv pair end
