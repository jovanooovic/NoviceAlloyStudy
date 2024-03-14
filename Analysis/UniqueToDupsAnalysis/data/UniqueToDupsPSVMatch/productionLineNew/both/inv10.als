all c : Component | c.parts not in succ.(c.workstation)
-- div,2
all c : Component | c.parts not in succ.c.workstation
-- div,1
no (parts :> Component & workstation.*succ.~workstation)
-- div,2
all comp : Component | comp.parts not in comp.workstation.^succ
-- div,1
all p : Product | p.parts.workstation not in succ.(p.workstation)
-- div,1
all c : Component | c.parts.workstation not in succ.(c.workstation)
-- div,4
all c1,c2 : Component | c2 in c1.^(parts) implies c1 not in c2.^(parts)
-- div,2
all c:Component| c.workstation in c.^parts.workstation.succ
-- div,1
all c:Component| c.workstation in c.^(parts.workstation.succ)
-- div,1
all c : Component | c.*parts.workstation not in succ.(c.workstation)
-- div,1
all c : Component | c.^parts.workstation not in succ.(c.workstation)
-- div,1
all p : Component | all c : p.parts | no c.workstation.succ
-- div,1
all p : Component | all c : p.parts | no p.workstation.succ
-- div,1
all c : Component | c.^parts.workstation not in ^succ.(c.workstation)
-- div,1
all c : Component | no (c.workstation.^succ) & (c.parts.workstation)
-- div,2
all c : Component | no ((c.workstation.*succ) & (c.parts.workstation))
-- div,1
all comp : Component | (comp.parts).workstation not in comp.workstation.^succ
-- div,1
all c:Component, p:c.parts | c.workstation in p.workstation.^succ
-- div,2
all c : Component | (c.parts - Material).workstation not in succ.(c.workstation)
-- div,1
all c : Component, ws : c.parts.workstation | c.workstation in ws.^succ
-- div,1
all c: Component | all p: c.parts | p.workstation in c.^workstation
-- div,1
all c : Component, ws : c.parts.workstation | ws not in c.workstation.^succ
-- div,1
all c : Component | all p : Product | p in c.parts => c.workstation = begin
-- div,1
all c: Component | all p: c.parts | c.workstation in (p.workstation).^succ
-- div,3
all c: Component | all p: c.parts | p.workstation in (c.workstation).^succ
-- div,1
all c: Component | all p: c.parts | c.workstation in (p.workstation).*succ
-- div,1
all comp : Component | (Component &comp.parts).workstation not in comp.workstation.^succ
-- div,1
all c:Component| c.parts in Component implies c.workstation in c.^(parts.workstation.succ)
-- div,1
all c:Component| c.parts in Component implies c.workstation in c.parts.workstation.^succ
-- div,3
all c:Component| c.parts in Component implies c.parts.workstation in c.^(workstation.succ)
-- div,1
all c:Component| c.parts in Component implies c.parts.workstation in c.workstation.^succ
-- div,2
all c:Component| c.parts in Component implies c.parts.workstation in c.^workstation.succ
-- div,1
all c : Component, p : Product | p in c.^parts implies p.workstation in (c.workstation).^succ
-- div,2
all c : Component, p : Product | p in c.^parts implies c.workstation in (p.workstation).^succ
-- div,4
all c: Component | all p: c.parts & Component | c.workstation in (p.workstation).^succ
-- div,2
all c: Component | all p: c.parts & Component | c.workstation in (p.workstation).*succ
-- div,1
all c : Component | all p : Product | p in c.parts => (p.workstation.succ = c.workstation)
-- div,3
all c : Component | all p : Product | p in c.parts => (p.workstation.*succ = c.workstation)
-- div,1
all c : Component | no c.^parts.workstation or (c.^parts.workstation not in ^succ.(c.workstation))
-- div,1
all m : Material | one parts.m
all p : Product | p.parts.workstation not in succ.(p.workstation)
-- div,1
all m : Material | some parts.m
all p : Product | p.parts.workstation not in succ.(p.workstation)
-- div,1
all m : Material | some parts.m
all c : Component | c.parts.workstation not in succ.(c.workstation)
-- div,1
all p : Product | one p.workstation
all p : Product | p.parts.workstation not in succ.(p.workstation)
-- div,2
all c : Component | no c.^parts.workstation or ((c.^parts - Material).workstation not in ^succ.(c.workstation))
-- div,2
all c : Component | no c.^parts.workstation or ((c.^parts & Component).workstation not in *succ.(c.workstation))
-- div,3
all c : Component | no c.^parts.workstation or ((c.^parts & Component).workstation not in ^succ.(c.workstation))
-- div,2
all x:Component | x.parts.workstation.succ in  x.workstation or x.parts.workstation.succ in x.parts.workstation
-- div,1
all c1, c2 : Component | all ws1, ws2 : Workstation | ws1 in c1.workstation and ws2 in c2.workstation and c2 in c1.parts implies ws1 in ws1.succ
-- div,1
all c1,c2:Component | all w1,w2:Workstation | w1 in c1.workstation and w2 in c2.workstation and c2 in c1.^(parts) implies w1 in w2.^(succ)
-- div,8
all c1, c2 : Component | all ws1, ws2 : Workstation | ws1 in c1.workstation and ws2 in c2.workstation and c2 in c1.parts implies ws1 in ws2.succ
-- div,1
all c1,c2 : Component | all ws1, ws2:Workstation | ws1 in c1.workstation and ws2 in c2.workstation and c2 in c1.^(parts) implies ws1 in ws2.^(succ)
-- div,2
all m : Material | some parts.m
all c : Component | no c.^parts.workstation or ((c.^parts & Component).workstation not in ^succ.(c.workstation))
-- div,1
all x:Component | x.parts.workstation not in  x.workstation and x.parts.workstation.succ in  x.workstation or x.parts.workstation.succ in x.parts.workstation
-- div,1
all x:Component | x.parts.workstation !=  x.workstation
all x:Component | x.parts.workstation.succ in  x.workstation or x.parts.workstation.succ in x.parts.workstation
-- div,1
