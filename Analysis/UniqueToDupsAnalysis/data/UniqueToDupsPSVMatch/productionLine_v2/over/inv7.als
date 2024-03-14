parts.Dangerous = Dangerous
-- div,2
parts.Dangerous in Dangerous
-- div,14
^parts.Dangerous in Dangerous
-- div,13
all d : Dangerous | parts.d in Dangerous
-- div,4
all c : Component | no (c.parts & Dangerous)
-- div,1
all d : Dangerous | d.^(~parts) in Dangerous
-- div,1
all d : Dangerous, c : ^parts.d | c in Dangerous
-- div,1
all p : Product | p in Dangerous implies (parts.p) in Dangerous
-- div,1
all p: Product | p in Dangerous implies ^parts.p in Dangerous
-- div,1
all c:Component | c in *parts.Dangerous => c in Dangerous
-- div,1
all c:Component | c in ^parts.Dangerous => c in Dangerous
-- div,2
all c : Product | c in Dangerous implies c.^~parts in Dangerous
-- div,1
all p : Product | p in Dangerous implies p.^~parts in Dangerous
-- div,5
all p:Product | some Dangerous&p.^parts implies p in Dangerous
-- div,1
all c:Component | some Dangerous & c.^parts => c in Dangerous
-- div,13
all c:Component | some c.^parts & Dangerous => c in Dangerous
-- div,10
all c : Component, p : Product | p in Dangerous implies c in Dangerous
-- div,1
all c:Component,p:Product | p in c.parts implies c in Dangerous
-- div,1
all c : Component | some (c.*parts & Dangerous) implies c in Dangerous
-- div,2
all c:Component | some c.^parts & Dangerous iff c in Dangerous
-- div,2
all c : Component, d:Dangerous | d in c.^parts => c in Dangerous
-- div,2
all c : Component , p : c.^(parts) | p in Dangerous implies c in Dangerous
-- div,2
all c : Component | all p : Product | p in Dangerous implies c in Dangerous
-- div,1
all p:Product | (some d:Dangerous | d in p.^parts) implies p in Dangerous
-- div,1
all c: Component | c in Dangerous <=> some p: c.parts | p in Dangerous
-- div,6
all c : Component | all d : Dangerous | d in c.^parts implies c in Dangerous
-- div,7
all c: Component | all p: c.^parts | p in Dangerous implies c in Dangerous
-- div,1
all c : Component | all cc : c.^parts | cc in Dangerous => c in Dangerous
-- div,1
all c: Component, p: Product | p in c.^parts and p in Dangerous => c in Dangerous
-- div,7
all c: Component, p: Product | p in Dangerous && p in c.^(parts) => c in Dangerous
-- div,4
parts.Dangerous in Dangerous
all c:Component | c.parts in Dangerous implies c in Dangerous
-- div,1
parts.Dangerous in Dangerous
all c : Component | parts.c in Dangerous => c in Dangerous
-- div,1
all c : Component | all p : Product | p in c.^parts and p in Dangerous implies c in Dangerous
-- div,1
all p : Product |all c : Component | p in Dangerous and p in c.^parts implies c in Dangerous
-- div,2
parts.Dangerous in Dangerous
all c : Component | some c.parts & Dangerous => c in Dangerous
-- div,5
all c: Component | all p: Product| p in Dangerous and p in c.^(parts) implies c in Dangerous
-- div,11
parts.Dangerous in Dangerous
all c : Component | some c.parts & Dangerous <=> c in Dangerous
-- div,1
all com : Component | all p : Product | p in Dangerous and p in com.^(parts) implies com in Dangerous
-- div,1
all c1 : Component | all c2 : Product | c2 in Dangerous and c2 in c1.^parts implies c1 in Dangerous
-- div,3
