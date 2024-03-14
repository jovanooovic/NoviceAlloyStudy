all c: Component |
-- div,1
no (c.workstation.^succ) & (c.parts.workstation)
-- div,1
all c:Component| c.ws in c.^parts.workstation.succ
-- div,1
all c:Components, p:c.parts | c.workstation in p.workstation.^succ
-- div,1
all c: Component | all p: c.parts | p in c.^workstation.^components
-- div,1
all c : Component | (c.parts - Materials).workstation not in succ.(c.workstation)
-- div,1
all c1,c2 : Component | all ws1, ws2:Workstation | ws1 in c1.workstation and ws2 in c2.workstation and c2 in c1.^(parts) implies w1 in w2.^(succ)
-- div,1
all x:component | x.parts.workstation !=  x.workstation
all x:Component | x.parts.workstation.succ in  x.workstation or x.parts.workstation.succ in x.parts.workstation
-- div,1
