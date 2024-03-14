all c:Component
-- div,2
all c.Component | one c.Workstation
-- div,1
all c.Component | one c.workstation
-- div,1
all c: Component : one workstation.c
-- div,1
all c : Component | onw c.~workstation
-- div,1
all c:Component | one c->ws.workstation
-- div,1
workstation in Workstation one -> all Component
-- div,1
workstation in Component all -> one Workstation
-- div,1
workstation in Workstation one -> some component
-- div,1
all c: Component, one w: Workstation | c in w.begin
-- div,1
all c: Component | one ws: Worstation  | ws in c.workstation
-- div,1
all c : Component | one ws : Workstation | ws in c.worksation
-- div,1
all c : Compontent | one w : Workstation | w in c.workstation
-- div,1
all c : Component | one ww : Workstation | c in ww.components
-- div,2
all c : Component | one ws : Workstation | c->w in workstation
-- div,1
all c : Component | one ws : WorkStation | ws in c.workstation
-- div,1
all com: Component | one ws: WorkStation | ws in com.workstation
-- div,1
all c: Component, w: Workstation | w in c.workstation one workstation.w
-- div,1
