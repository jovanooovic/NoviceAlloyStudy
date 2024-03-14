-- equiv pair start,1
all c: Dangerous | Dangerous in c.^parts
-- div,1
-- equiv pair end
-- equiv pair start,4
all x : Dangerous | x.^parts in Dangerous
-- div,1
all p : Product | p in Dangerous => p.parts in Dangerous
-- div,1
all x:Product | x in Dangerous implies x.parts in Dangerous
-- div,1
all p : Product | p in Dangerous => p.^parts in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | (c.parts in Dangerous)
-- div,1
-- equiv pair end
-- equiv pair start,3
all c: Product | c.^parts in Dangerous => c in Dangerous
-- div,1
all p: Product | p.^parts in Dangerous implies p in Dangerous
-- div,1
all x : Product | x.^parts in Dangerous implies x in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,61
all c:Component | Dangerous in c.^parts => c in Dangerous
-- div,11
all c : Component | Dangerous in c.*parts implies c in Dangerous
-- div,1
all c: Component | Dangerous in c.^parts implies some c & Dangerous
-- div,4
all c : Component | Dangerous in c.^parts implies some Dangerous & c
-- div,1
all c : Component | Dangerous in c.^parts implies some (Dangerous & Component & c)
-- div,1
all c : Component | Dangerous in c.^parts implies some Dangerous & c & Component
-- div,2
all c : Component | Dangerous in c.^parts implies some Component & c & Dangerous
-- div,2
all c:Component | Dangerous in c.^parts => some (c & Dangerous & Component)
-- div,38
all c : Component | Dangerous in c.^parts implies some (Component & c & Dangerous)
all c : Component | Dangerous in c.^parts implies some (c & Dangerous & Component)
-- div,1
-- equiv pair end
-- equiv pair start,9
all c: Component | c.^parts in Dangerous => c in Dangerous
-- div,7
all c : Component | c.^parts in Dangerous implies c + c.^parts in Dangerous
-- div,1
all c: Component | c.^parts in Dangerous implies some (c & Dangerous & Component)
-- div,1
-- equiv pair end
-- equiv pair start,4
all p: Product | p.parts in Dangerous implies p in Dangerous
-- div,3
all x: Product | x.parts in Dangerous implies x in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
some p: Product | p.parts in Dangerous implies p in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,5
all x:Component | x in Dangerous implies x.parts in Dangerous
-- div,4
all p : Product | p in Component and p in Dangerous implies p.parts in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,3
all c: Component | (Dangerous in c.parts) => (Dangerous in c)
-- div,3
-- equiv pair end
-- equiv pair start,1
all c: Component | (Dangerous in c.parts) <=> (Dangerous in c)
-- div,1
-- equiv pair end
-- equiv pair start,10
all x: Component | x.parts in Dangerous implies x in Dangerous
-- div,3
all c : Component | c.parts in Dangerous => c in Dangerous
-- div,6
all c : Component | c.parts in Dangerous implies c + c.parts in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,8
all c: Component | (Dangerous in c.^parts) => (Dangerous in c)
-- div,8
-- equiv pair end
-- equiv pair start,1
all x : Product | Dangerous in x.^parts implies x in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Component | (Dangerous in c.^parts) <=> (Dangerous in c)
-- div,2
-- equiv pair end
-- equiv pair start,1
all c: Component | (Dangerous in c.^parts) <=> (c in Dangerous)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | Dangerous in c.^parts implies c = Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Component | Dangerous in c.parts implies c in Dangerous
-- div,1
all c : Component | some d : Dangerous | d in c.parts implies c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | Dangerous in c.*parts implies Dangerous in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | c in parts.Dangerous => c.parts in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Component | c in Dangerous implies c.^(parts) in Dangerous
-- div,1
all p : Product | p in Component and p in Dangerous implies p.*parts in Dangerous
-- div,1
all p : Product | p in Component and p in Dangerous implies p.^parts in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | Dangerous in c.^parts implies no (c & Dangerous)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c :Component | Dangerous in c.*parts implies Dangerous in c.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | c.parts in Dangerous implies c.^parts in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | all p : parts.c | p in Dangerous => c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | all p : parts.c | p in Dangerous && c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,5
all c : Component | some p : c.parts | p in Dangerous => c in Dangerous
-- div,4
all c: Component| some d: c.parts| d in Dangerous => c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,4
all c:Component| some p: c.^parts| p in Dangerous implies c in Dangerous
-- div,4
-- equiv pair end
-- equiv pair start,2
all c:Component | some p:c.^parts | Dangerous in p implies c in Dangerous
-- div,1
all c:Component | some p:c.^parts | Dangerous in p implies some (c & Dangerous & Component)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component| some d: c.parts| d in Dangerous => c.parts in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | c.parts in Dangerous implies c + c.^parts in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | some p:c.^parts | Dangerous in p implies  Dangerous in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all c, p : Component | p in c.^parts and p in Dangerous implies c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component, d : Dangerous | d in c.parts implies c.^(parts) in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Product | p in Component and Dangerous in p implies Dangerous in p.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Product | p in Component and Dangerous in p implies Dangerous in p.^parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component, d : Dangerous | d in c.^(parts) implies c.^(parts) in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | c in Dangerous && c in c.parts implies c.^(parts) in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component, p:Product | p in Dangerous and c in p.^(parts) implies c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all m: Material| all c: Component| (m in Dangerous && m in c.parts) implies c.parts in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all m: Material| some c: Component| (m in Dangerous && m in c.parts) implies c.parts in Dangerous
-- div,1
-- equiv pair end
