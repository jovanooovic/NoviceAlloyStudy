all c : Component | some (c & Dangerous) implies c in Dangerous
-- div,1
all c:Component | c.*parts in Dangerous => c in Dangerous
-- div,1
all c1, c2 : Component | c2 in Dangerous and c2 in c1.^parts implies c2 in Dangerous
-- div,1
all c1, c2 : Component| c2 in c1.^parts and c2 in Dangerous implies c2 in Dangerous
-- div,1
all c1, c2 : Component| c1 != c2 and c2 in c1.^parts and c2 in Dangerous implies c2 in Dangerous
-- div,1
all c: Component | some p: Product | p = Dangerous and c->p in parts implies c = Dangerous
-- div,1
all c: Component | some p: Product | p in Dangerous and c->p in parts implies c in Dangerous
-- div,1
all c: Component | some p: Product | p in Dangerous and p in c.^parts implies c in Dangerous
-- div,1
all c1 : Component | all c2 : Product | c2 in Dangerous and c2 in c1.^parts implies c2 in Dangerous
-- div,1
all c1 : Component | some c2 : Product | c2 in Dangerous and c2 in c1.^parts implies c2 in Dangerous
-- div,1
all c1 : Component | some c2 : Product | c2 in Dangerous and c2 in c1.^parts implies c1 in Dangerous
-- div,1
all c1 : Component | some c2 : Component | c2 in Dangerous and c2 in c1.^parts implies c2 in Dangerous
-- div,1
