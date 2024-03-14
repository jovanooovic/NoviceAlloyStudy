all p:Product | p.parts
-- div,3
no Component.^parts in end
-- div,1
Component . parts . workstation
-- div,1
all p:Product | p.parts.Component
-- div,1
all p:Product | p.parts & Component
-- div,1
all p:Product | no p.parts.Component
-- div,1
all c: Component | no c.^parts in end
-- div,1
all c: Component | (c not in ~c.^parts)
-- div,1
Component implies historically (Component.parts)
-- div,1
all p:Product | (p.parts & Component).workstation
-- div,1
all x : Component | x.parts & x.workstation.*succ
-- div,2
all c: Component | c.^parts.Workstation not in end
-- div,1
all c:Component| c implies (historically some c.parts)
-- div,1
all c:Component| c implies historically (Component.parts)
-- div,1
all c:Component | c.workstation in parts.workstation.^succ
-- div,1
all c : Component | some ws : Workstation | lone c.parts.ws
-- div,1
all c : Component | some ws : Workstation | lone c.^parts.ws
-- div,1
all c:Component| some c implies historically (Component.parts)
-- div,1
all x : Component | x.parts not in x.*({ x: Workstation | one x.succ})
-- div,1
all p:Product | (p.parts & Component).workstation in ~succ.^(p.workstation)
-- div,1
all c:Component| c in Product implies (historically some c.parts in Product)
-- div,1
all x : Component | (x.parts & Component).workstation & (x.workstation).*succ
-- div,1
all c : Component, p : c.parts | some p.workstation in c.workstation.succ.^succ
-- div,1
all c: Component | c.^(parts.workstation not in end) implies c.workstation not in end
-- div,1
all c:Component | all p:c.parts | p is Material or c.workstation in p.workstation.succ
-- div,1
all c:Component, p:Product | (c->p in parts) => (Workstation.c) in (p.workstation.^succ)
-- div,1
all c:Component, p:Product | (c->p in parts) => (c.Workstation) in (p.workstation.^succ)
-- div,2
all c : Component | (c.parts) in workstation.((^succ).Workstation - ^(c.workstation.succ))
-- div,1
all c : Component | ^(c.parts) in workstation.((^succ).Workstation - ^(c.workstation.succ))
-- div,1
all c:Component | c.workstation in (c.^parts & Component).workstation.^succ || no Component in (c.^parts & Component).workstation.^succ
-- div,1
