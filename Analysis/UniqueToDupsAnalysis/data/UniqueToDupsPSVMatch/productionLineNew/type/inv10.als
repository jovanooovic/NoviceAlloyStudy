all c: Component | all p: c.parts | p in c.^workstation.^Component
-- div,1
all c : Component | c.parts.workstation not in succ.*(c.workstation)
-- div,1
all c : Component | c.^parts.workstation not in succ.^(c.workstation)
-- div,1
all c : Component | c in parts.Component implies c.workstation in succ
-- div,1
all c : Component | c in parts.Component implies (c.workstation in succ)
-- div,1
all c : Component | c in parts.Component implies {c.workstation} in succ
-- div,1
all c : Component | c in parts.Component implies c.workstation in succ.workstation
-- div,1
all c : Component | c in parts.Component implies (c.workstation in succ.workstation)
-- div,1
all c : Component | c in parts.Component implies c.workstation & succ = c.workstation
-- div,2
all c : Component | c in parts.Component implies c.workstation && succ = c.workstation
-- div,1
all c : Component | all p : Product | p & c.parts => (p.workstation.succ = c.workstation)
-- div,1
all c: Component |
all p: c.parts |
some ws: p.workstation, wss: c.workstation |
(ws.succ[wss])
-- div,2
