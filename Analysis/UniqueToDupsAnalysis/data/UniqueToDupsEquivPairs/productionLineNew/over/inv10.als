-- equiv pair start,2
all c:Component | c.^parts.workstation in ^succ.(c.workstation)
-- div,2
-- equiv pair end
-- equiv pair start,1
all c1,c2 : Component | c2 in c1.*(parts) implies c1 not in c2.*(parts)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Component, y: Product | x in y.parts implies y in x.workstation.succ
-- div,1
-- equiv pair end
-- equiv pair start,3
all comp : Component | (Component &comp.parts).workstation in (^succ).comp.workstation
-- div,1
all c: Component | all p: c.parts | p.workstation in c.workstation.^workstation
-- div,2
-- equiv pair end
-- equiv pair start,2
all c : Component | all p : Product | p in c.parts => (p.workstation.succ = c.*workstation)
-- div,1
all c : Component | all p : Product | p in c.parts => (p.workstation.*succ = c.*workstation)
-- div,1
-- equiv pair end
