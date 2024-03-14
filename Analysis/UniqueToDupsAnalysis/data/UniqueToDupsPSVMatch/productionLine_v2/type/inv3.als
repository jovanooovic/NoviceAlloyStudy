all c:Component | one c.Workstation
-- div,3
all c: Component | one c.Workstation
-- div,3
all c: Component | one w: Workstation | c.w in begin
-- div,1
all c: Component | one w: Workstation | c in w.begin
-- div,1
all c: Component | one w: Workstation | w in c.begin
-- div,1
all c : Component, ws : workstation | ws in c.workstation
-- div,1
all c: Component | one ws: workstation | ws in c.workstation
-- div,1
all c: Component | one ws: workstation | c in ws.workstation
-- div,1
all c : Component | one w : workstation | w in c.workstation
-- div,1
all c : Component | one ws : Workstation | ws in c.Workstation
-- div,1
all c : Component | one ws : workstation | ws in c.workstation
-- div,3
all c : Component | one  ws : workstation | ws in c.workstation
-- div,1
