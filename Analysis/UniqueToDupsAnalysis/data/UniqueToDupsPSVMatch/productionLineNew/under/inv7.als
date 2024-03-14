all c : Component | (c.parts & Dangerous) in Dangerous
-- div,1
all c : Component | (c.^parts & Dangerous) in Dangerous
-- div,1
all c: Component | c.*parts in Dangerous implies some (c & Dangerous)
-- div,1
all c :Component | Dangerous in c.*parts implies Dangerous in c.*parts
-- div,1
all c : Component | c.^parts in Dangerous <=> c.^parts in Dangerous
-- div,1
all c, p : Component | p in c.parts and p in Dangerous implies c in Dangerous
-- div,1
all c : Component | c.*parts in Dangerous implies c + c.*parts in Dangerous
-- div,1
all c : Component | c.*parts in Dangerous implies c + c.^parts in Dangerous
-- div,1
all c: Component | c.*parts in Dangerous implies some (c & Dangerous & Component)
-- div,1
all c:Component| some p: c.*parts| p in Dangerous implies c in Dangerous
-- div,1
all c:Component | some p:Product | (p in Dangerous && p in c.parts) => c in Component
-- div,1
all c:Component | all p:Component | (p in Dangerous &&  p in c.parts) implies c in Dangerous
-- div,2
all c:Component | some p:Component | (p in Dangerous and p in c.parts) implies c in Dangerous
-- div,1
all c : Component | some p : Component | p in c.parts and p in Dangerous implies c in Dangerous
-- div,2
