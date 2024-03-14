all c: Component| one c.worktation
-- div,1
all c: Component| one c.worktations
-- div,1
all c : Componet | #c.workstation=1
-- div,1
all x in Component | one x.workstation
-- div,1
all c : Components | #c.workstation = 1
-- div,1
wokrstation in Component one -> set Workstation
-- div,1
all c: Component| some w: Workstation| w in c.component
-- div,1
all c:Component, one s:Workstation| c->s in workstation
-- div,1
all c:Component | one ws:Workstation | w in c.workstation
-- div,1
all c : Component | one w : WorkStation | c.workstation.w
-- div,1
all c:Component | one ws:Worktation | ws in c.workstation
-- div,1
all c:Component | one ws:Worstation | ws in c.workstation
-- div,3
all x : Component | one y : Workstation | y in x.worktation
-- div,1
all c : Component | one ws : Workstation | ws in c.worstation
-- div,1
all c: Component | one w:Workstation | c -> ws in workstation
-- div,1
all c : Component | one ws : Worstation | ws in c.workstation
-- div,5
all c : Component | one w : Workstation | ws in c.workstation
-- div,1
