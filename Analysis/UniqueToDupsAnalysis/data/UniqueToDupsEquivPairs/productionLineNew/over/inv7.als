-- equiv pair start,19
parts.Dangerous in Dangerous
-- div,2
^parts.Dangerous in Dangerous
-- div,1
all d: Dangerous |parts.d in Dangerous
-- div,1
all c:Dangerous | ^parts.c in Dangerous
-- div,1
all d : Dangerous, p : parts.d| p in Dangerous
-- div,1
all p1 : Dangerous, p2 : parts.p1 | p2 in Dangerous
-- div,1
all p : Product | p in Dangerous => parts.p in Dangerous
-- div,1
all p : Dangerous | all p2 : parts.p | p2 in Dangerous
-- div,8
all p1,p2 : Product | (p1 in Dangerous and p1 in p2.parts) implies p2 in Dangerous
-- div,1
all x : Product | all y : Dangerous | y in x.^parts implies x in Dangerous
-- div,2
-- equiv pair end
-- equiv pair start,1
all c: Component | some c.^parts implies c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Component, d : Dangerous | d in c.parts implies c in d
-- div,2
all d : Dangerous, c : Component | d in c.parts => d in c
-- div,1
-- equiv pair end
-- equiv pair start,38
all c : Component | some c.^parts & Dangerous implies c in Dangerous
-- div,10
all x:Component | some (Dangerous & x.^parts) implies x in Dangerous
-- div,2
all x: Component | some (x.^parts & Dangerous) implies x in Dangerous
-- div,1
all c : Component | some (Dangerous & c.*parts) implies c in Dangerous
-- div,1
all x : Component | some (x.(*parts) & Dangerous) implies (x in Dangerous)
-- div,1
all c:Component | #c.^parts&Dangerous>0 implies c in Dangerous
-- div,4
all c :Component, d :Dangerous | d in c.^(parts) => c in Dangerous
-- div,5
all c : Component | all d : Dangerous | d in c.^parts => c in Dangerous
-- div,3
all x:Component | all y:Dangerous | y in x.^parts implies x in Dangerous
-- div,1
all c:Component| all p: c.^parts| p in Dangerous implies c in Dangerous
-- div,1
all c : Component | (some d : Dangerous | d in c.^(parts)) implies c in Dangerous
-- div,1
all c:Component, p:Product | p in Dangerous and p in c.^(parts) implies c in Dangerous
-- div,2
all c:Component | all p:Product | p in c.^parts and p in Dangerous implies c in Dangerous
-- div,3
all c:Component | all p:Product | p in Dangerous and p in c.^(parts) implies c in Dangerous
-- div,3
-- equiv pair end
-- equiv pair start,4
all p : Product | (no p.*parts & Dangerous) or (p.*parts in Dangerous)
-- div,3
all c : Product | no ((c + c.*parts) & Dangerous) or ((c + c.*parts) in Dangerous)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | all p : c.parts + parts.c | p in Dangerous => c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | no ((c + c.*parts) & Dangerous) or ((c + c.*parts) in Dangerous)
-- div,1
-- equiv pair end
