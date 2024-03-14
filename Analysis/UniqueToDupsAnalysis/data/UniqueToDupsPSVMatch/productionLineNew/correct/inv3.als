workstation in Component set -> one Workstation
-- div,2
all x:Component | one x.workstation
-- div,8
all c:Component| one c.workstation
-- div,45
all c:Component | #c.workstation=1
-- div,11
all x:Component | one w:Workstation | w in x.workstation
-- div,1
all w : Component | one s : Workstation | s in w.workstation
-- div,1
all x: Component | one y: Workstation | y in x.workstation
-- div,2
all c:Component | one w:Workstation | w in c.workstation
-- div,7
all c:Component| one s:Workstation| c->s in workstation
-- div,1
all c : Component | one w : Workstation | c->w in workstation
-- div,1
all c: Component |one wo:Workstation| wo in  c.workstation
-- div,1
all c:Component| one ws:Workstation| ws in c.workstation
-- div,19
all c:Component | one wk:Workstation | wk in c.workstation
-- div,1
all c: Component | one ws:Workstation | c -> ws in workstation
-- div,1
all c: Component | one ws: Workstation | c in ws.~workstation
-- div,1
all c : Component | one ws : Workstation | one c.workstation & ws
-- div,1
all x: Component | some y : Workstation | y in x.workstation
all x: Component | all y, z : Workstation | x in workstation.y and x in workstation.z implies y = z
-- div,1
