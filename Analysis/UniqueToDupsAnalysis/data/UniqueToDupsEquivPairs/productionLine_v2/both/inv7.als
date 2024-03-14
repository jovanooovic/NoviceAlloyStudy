-- equiv pair start,1
no iden & ^parts
-- div,1
-- equiv pair end
-- equiv pair start,2
Dangerous.parts = Dangerous
-- div,2
-- equiv pair end
-- equiv pair start,1
all d:Dangerous | some d.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | c not in c.^parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | c not in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all d:Dangerous | Dangerous = d.^parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all d1, d2:Dangerous | d1->d2 in parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all d:Dangerous | Dangerous in d.^parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | c in ^parts.Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all d: Dangerous, c: Component | c in d.parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all d:Dangerous | some d1: Dangerous | d->d1 in parts
-- div,1
-- equiv pair end
-- equiv pair start,1
all d2:Dangerous | some d1:Dangerous | d1->d2 in parts
-- div,1
-- equiv pair end
-- equiv pair start,9
all c:Component | Dangerous in c.parts => c in Dangerous
-- div,4
all c : Component | some d : Dangerous | d in c.parts implies c in Dangerous
-- div,1
all c:Component | some d:Dangerous | c->d in parts implies c in Dangerous
-- div,4
-- equiv pair end
-- equiv pair start,5
all c:Component | Dangerous in c.^parts => c in Dangerous
-- div,2
all c : Component | some d:Dangerous | d in c.^parts => c in Dangerous
-- div,3
-- equiv pair end
-- equiv pair start,19
all c:Component | c.^parts in Dangerous => c in Dangerous
-- div,18
all component: Component | component.^parts in Dangerous implies component in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | Dangerous in c.^parts iff c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | c.^parts in Dangerous iff c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Product | c.parts in Dangerous implies c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Component | c.parts in Dangerous implies c = Dangerous
-- div,2
-- equiv pair end
-- equiv pair start,20
all c:Component | c.parts in Dangerous implies c in Dangerous
-- div,20
-- equiv pair end
-- equiv pair start,3
all c : Product | c in Dangerous implies c.parts in Dangerous
-- div,1
all p: Product | p in Dangerous implies p.^parts in Dangerous
-- div,1
all d:Dangerous | all p:Product | p in d.^parts => p in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Component | c in Dangerous implies c.parts in Dangerous
-- div,3
-- equiv pair end
-- equiv pair start,1
all c : Product | c.^parts in Dangerous implies c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Component | c in Dangerous implies c.^parts in Dangerous
-- div,1
all c : Component, p : Product | p in c.^parts and c in Dangerous implies p in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Component | c in Dangerous implies c.^~parts in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
some c: Component | some Dangerous & c.^parts implies c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Component | no (c.parts & Dangerous) implies c not in Dangerous
-- div,2
-- equiv pair end
-- equiv pair start,2
all p:Product | some d:Dangerous | d in p.^parts implies p in Dangerous
-- div,2
-- equiv pair end
-- equiv pair start,1
all c:Component | one d:Dangerous | c->d in parts implies c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Component | lone d:Dangerous | c->d in parts implies c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | some p : c.parts | p in Dangerous implies c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Component | some p: c.^parts | p in Dangerous implies c in Dangerous
-- div,1
all c : Component | some cc : c.^parts | cc in Dangerous => c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Component | some d : Dangerous | d->c in parts implies c in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,2
all c1, c2 : Component | c2 in c1.^parts and c2 in Dangerous implies c1 in Dangerous
-- div,1
all c1 : Component | all c2 : Component | c2 in Dangerous and c2 in c1.^parts implies c1 in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Component | all p : Product | p = Dangerous and p in c.^(parts) implies c = Dangerous
-- div,2
-- equiv pair end
-- equiv pair start,1
all c1, c2 : Component| c1 != c2 and c2 in c1.^parts and c1 in Dangerous implies c2 in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all com : Component | one p : Product | p in Dangerous and p in com.parts implies com in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,1
all com : Component | one p : Product | p in Dangerous and p in com.^(parts) implies com in Dangerous
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Component | some p:Product | some d:Dangerous | c->p in parts and d->p in parts implies c in Dangerous
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Product | c.^parts not in Dangerous implies c not in Dangerous
all c : Product | c.^parts in Dangerous implies c in Dangerous
-- div,1
-- equiv pair end
