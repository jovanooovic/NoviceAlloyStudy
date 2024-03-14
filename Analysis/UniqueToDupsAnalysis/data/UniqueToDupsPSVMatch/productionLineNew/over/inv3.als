workstation in Component one -> one Workstation
-- div,1
all c:Component| one workstation.c
-- div,10
all x: Component | x in #(Workstation)
-- div,1
all c : Component | one (c.~workstation)
-- div,2
all x: Component | one v: Workstation | x in v
-- div,1
all c:Component | one w:Workstation | c in w.workstation
-- div,1
all w : Component | one s : Workstation | w in s.workstation
-- div,2
all c: Component| some x: Workstation| c in x.workstation
-- div,1
all c:Component | one ws:Workstation | c in ws.workstation
-- div,1
(all c: Component| some w: Workstation| w in c.workstation) && (all c: Component| one workstation.c)
-- div,1
(all c: Component| some x: Workstation| c in x.workstation) && (all c: Component| one workstation.c)
-- div,1
