all c:Component | some c.parts in Dangerous
-- div,1
all c:Component | some c.^parts in Dangerous
-- div,1
all d: Dangerous, c: Component | c & d.parts
-- div,1
all c: Dangerous | all c1: *c | c1 in Dangerous
-- div,1
all c : Component | some (c & Dangerous) in Dangerous
-- div,2
all d: Dangerous, c: Component | c in d.parts implies d
-- div,1
all c:Component | c.^parts.Dangerous implies c in Dangerous
-- div,1
all c: Component | c.^(parts) in Dangerous -> c in Dangerous
-- div,1
all c : Component | c.^parts.c in Dangerous => c in Dangerous
-- div,1
all c:Component | c.^parts & Dangerous implies c in Dangerous
-- div,2
all c : Component | c.parts & Dangerous implies c in Dangerous
-- div,1
all c : Component | some (c & Dangerous) implies c int Dangerous
-- div,1
all c:Component | some c.^parts.Dangerous implies c in Dangerous
-- div,1
all p : Product | p in Dangerous implies (parts).^p in Dangerous
-- div,1
all c: Component | some c.^(parts) in Dangerous -> c in Dangerous
-- div,1
all c:Component | some c.parts in Dangerous implies c in Dangerous
-- div,2
all c : Component | some c.parts in Dangerous implies c in Dangerous
-- div,2
all c: Component | c not in Dangerous -> Dangerous not in c.^(parts)
-- div,1
all c:Component | (some c.parts in Dangerous) implies c in Dangerous
-- div,2
all c:Component | (some c.parts) in Dangerous implies c in Dangerous
-- div,1
all c: Component | c not in Dangerous -> c.^(parts) not in Dangerous
-- div,1
all c: Component | some c.^parts in Dangerous implies c in Dangerous
-- div,1
all c : Component | some Dangerous in c.^parts implies c in Dangerous
-- div,1
all c : Component | some c.^parts in Dangerous implies c in Dangerous
-- div,2
all c:Component | c.^parts in Dangerous != none implies c in Dangerous
-- div,1
all c : Component | (some c.parts in Dangerous) implies c in Dangerous
-- div,1
all p:Product | lone d:Dangerous | p->d in parts implies p is Dangerous
-- div,1
all c : Component | no(c.parts not in Dangerous) implies c in Dangerous
-- div,1
all c : Component | (some Dangerous) in c.^parts implies c in Dangerous
-- div,1
all c : Component | no(c.parts in Dangerous) implies c  not in Dangerous
-- div,1
all c : Component, d : Dangerous | some c.parts.d implies c in Dangerous
-- div,1
all c : Component | (some c.^(parts) in Dangerous) implies c in Dangerous
-- div,1
all c : Component | no (c.parts in Dangerous) implies c  not in Dangerous
-- div,1
all c:Component | lone d:Dangerous | c->d in parts implies c is Dangerous
-- div,1
some c: Component | (c in Product.^parts) in Dangerous implies c in Dangerous
-- div,1
parts.Dangerous in Dangerous
all c : Component | c.parts & Dangerous => c in Dangerous
-- div,1
parts.Dangerous in Dangerous
all c:Component  | some c.parts & Dangerous -> c in Dangerous
-- div,1
all c: Component | some c2: Component | c2 in c^parts && c2 in Dangerous -> c in Dangerous
-- div,1
parts.Dangerous in Dangerous
all c:Component  | some c.parts in Dangerous -> c in Dangerous
-- div,1
all c: Component | some c2: Component | c2 in c.^(parts) && c2 in Dangerous -> c in Dangerous
-- div,1
