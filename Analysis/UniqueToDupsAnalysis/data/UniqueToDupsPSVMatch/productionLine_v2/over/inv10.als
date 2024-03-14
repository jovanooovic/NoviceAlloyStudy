no Component . parts . workstation
-- div,1
all p:Product | no p.parts
-- div,1
all c: Component | c.^parts in end
-- div,1
^parts.workstation in workstation.~^succ
-- div,1
all p:Product | no p.parts & Component
-- div,1
all p:Product | no (p.parts & Component).workstation
-- div,1
all p:Product | p.^parts in p.workstation.~^succ
-- div,1
all p:Component | p.^parts in p.workstation.~^succ
-- div,1
all c : Component | c in Component.parts implies no c.workstation
-- div,1
all c:Component | c.parts.workstation in succ.(c.workstation)
-- div,2
all c : Component, p : c.parts | p in c.workstation.^succ
-- div,1
all c : Component, p : c.parts | c in c.workstation.^succ
-- div,1
all c : Component | (Component & c.parts).workstation in c.(^succ)
-- div,3
all c:Component | c.^parts.workstation in succ.(c.workstation)
-- div,1
all c:Component | c.^parts.workstation in ^succ.(c.workstation)
-- div,1
all c : Component | c.parts in begin.*succ - c.workstation.^succ
-- div,1
all c : Component | c.parts in begin.*succ - c.workstation.*succ
-- div,1
all p:Component | p.^parts.workstation in p.workstation.~^succ
-- div,1
all c : Component, p : c.parts & Component | c in p.workstation.^succ
-- div,1
all p:Product | (p.parts & Component).workstation in ~succ.p.workstation
-- div,1
no (parts :> Component & ^(workstation.succ.~workstation) + workstation.~workstation)
-- div,1
all c : Component, p : c.parts | p.workstation in c.workstation.~succ.^~succ
-- div,4
all w: Workstation, c1, c2: Component | c2 in c1.^(parts) => w in c2 && w.^(succ) in c1
-- div,1
all c : Component | c.parts in Workstation.^(workstation.succ) - c.workstation.^(workstation.succ)
-- div,1
all w: Workstation, c: Component, p: Product | p in c.^(parts) => p in w && c in w.^(succ)
-- div,1
all p:Component,w:Workstation | p->w in ^parts.workstation implies p->w in workstation.~^succ
-- div,1
all c:Component | all p:Product | c in p.parts implies all w:Workstation | c not in workstation.w
-- div,2
all c : Component, p : c.parts | some p.workstation && p.workstation in c.workstation.~succ.^~succ
-- div,1
all c : Component | c.parts.workstation in Workstation.^(workstation.succ) - c.workstation.^(workstation.succ)
-- div,1
all w1, w2: Workstation, c1, c2: Product | c2 in c1.^(parts) => w2 in c2.workstation && w1 in c1.workstation && w2 in w1.^(succ)
-- div,1
all w1, w2: Workstation, c1, c2: Product | c2 in c1.^(parts) => w2 in c2.workstation && w1 in c1.workstation && w1 in w2.^(succ)
-- div,1
all w1, w2: Workstation, c1, c2: Component | c2 in c1.^(parts) => w2 in c2.workstation && w1 in c1.workstation && w1 in w2.^(succ)
-- div,1
all w1, w2: Workstation, c1, c2: Component | c2 in c1.^(parts) => w2 in c2.workstation && w1 in c1.workstation && w2 in w1.^(succ)
-- div,1
all w: Workstation, c1, c2: Component | c2 in c1.^(parts) => w in c2.workstation && w.^(succ) in c1.workstation && w.^(succ) not in c2.workstation
-- div,1
all w: Workstation, c1, c2: Component | c1 in c2.^(parts) => w in c2.workstation-c1.workstation && w.^(succ) in c1.workstation-c2.workstation
-- div,1
