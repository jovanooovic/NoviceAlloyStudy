no Components.^parts in end
-- div,1
all c : Component | all p : c.parts |
-- div,2
no (parts :> Component & ^(workstation.succ.~workstation)
-- div,1
all c:Component| all c implies (historically some c.parts)
-- div,1
all x : Component | x.parts.workstation not in x.*workstations
-- div,1
all x : Component | x.parts.workstations not in x.*workstations
-- div,1
all c : Components | c.p.workstation in (^succ).(c.workstation)
-- div,1
all c : Component | c.parts & Component in Workstation.~component
-- div,1
all c : Components | c.parts & Component in Workstation.~component
-- div,1
all c : Components | c.parts.workstation in (^succ).(c.workstation)
-- div,1
all c : Component, p : c.parts | c.workstation in p.workstation.^succs
-- div,1
all c: Component | all p: c.parts | c.workstation in p.wokstation.^succ
-- div,1
all c: Components | (c.^(~parts)).workstation in (c.workstation).^(succ)
-- div,1
all c:Component | part is Material or c.workstation in part.workstation.succ
-- div,1
no (parts :> Component & (workstation.~workstation + ^(workstation.succ.~workstation))
-- div,1
no (parts :> Component & (workstation.~workstation + ^(workstation.succ).~workstation)))
-- div,1
all c1: Component, c2: c1.^parts, w1: c1.workstation, w2: c2.worstation | w2 in w1.^succs
-- div,1
all c1: Component, c2: c1.^parts, w1: c1.workstation, w2: c2.workstation | w2 in w1.^succs
-- div,1
all c:Component | all part:c.parts | part is Material or c.workstation in part.workstation.succ
-- div,2
all c:Component | all part:(c.parts) | part is Material or c.workstation in part.workstation.succ
-- div,1
all c1, c2 : Compoment | c1!=c2 and c2 in c1.^parts implies c2.workstation in c1.workstation.^succ
-- div,1
no (parts :> Component & (Component->Component <: (workstation.~workstation)) + ^(workstation.succ.~workstation)))
-- div,1
no (parts :> Component & (^(workstation.succ.~workstation) + (Component <:workstation ).(~workstation :> Component))
-- div,1
all a1, a2: Component | all ws: WorkStation | a2 in a1.parts implies a2.workstation in begin and a1.workstation in end
-- div,1
all w1, w2: Workstation, c1, c2: Components | c2 in c1.^(parts) && w2 in c2.workstation && w1 in c1.workstation => w1 in w2.^(succ)
-- div,1
all c1, c2: Component | all w1, w2: Workstation |
c2 in c1.parts and c1.workstation in w1 and c2.workstation in w2
implies w1 in w2.succs
-- div,1
all c1, c2: Component | all w1, w2: Workstation | w1 in c1.workstation and w2 in c2.worksation and c2 in c1.^(parts) implies w1 in w2.^(succ)
-- div,1
all c : Component | all p : Component | all w, wa : Workstation | w in c.worksation and p in c.^parts and wa in p.workstation implies w in wa.^succ
-- div,1
