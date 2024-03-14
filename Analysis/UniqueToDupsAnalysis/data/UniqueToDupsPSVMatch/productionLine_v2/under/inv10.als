all c:Component | some c.workstation => some c.*parts
-- div,1
all c:Component | workstation.c in c.parts.workstation.*succ
-- div,1
all c: Component | all p: c.parts | p in c.*(parts-prev)
-- div,2
all x : Component | no x.parts & (Component.workstation & x.workstation.*succ)
-- div,1
all c : Component | c.parts.workstation in Workstation - c.workstation.^(workstation.succ)
-- div,1
all c:Component | all p:Product | c in p.parts implies all w:Workstation | c not in w.workstation
-- div,1
