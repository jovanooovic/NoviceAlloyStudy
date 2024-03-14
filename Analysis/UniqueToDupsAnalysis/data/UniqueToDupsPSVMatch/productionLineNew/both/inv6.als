Component not in Component.parts
-- div,2
all p: Product | p not in p.parts
-- div,2
all c: Component | c in c.^parts
-- div,1
all c: Component | c.parts in Material
-- div,1
all c,e : Component | e in c.parts iff e!=c
-- div,1
all c1, c2 : Component | c2 in c1.parts <=> c2!=c1
-- div,1
all c : Component + Dangerous| Dangerous not in c.parts
-- div,1
all c : Component| Dangerous not in c.parts and Component not in c.parts
-- div,1
all c:Component, p:Product | c in p.parts implies p not in Component
-- div,1
all c : Component, d: Dangerous | c not in c.parts and d not in c.parts
-- div,1
all c : Component, d: Dangerous | c not in c.parts and d not in d.parts
-- div,1
all c:Component | all p:Product | p in c.parts implies p not in Component
-- div,1
all c:Component | all p:Product | c in p.parts implies p not in Component
-- div,2
all c : Component + Dangerous| Dangerous not in c.parts and Component not in c.parts
-- div,1
all c : Component | c not in c.parts
all c : Component | c.parts in Material
-- div,1
all c : Component | c not in c.parts
all c : Component| Dangerous not in c.parts
-- div,1
all c : Component | Dangerous not in c.parts
all c : Component | Component not in c.parts
-- div,1
all c : Component | c not in c.parts
all c : Component, d: Dangerous | d not in c.parts
-- div,2
all c : Component | c not in c.parts
all c : Component| Dangerous not in c.parts and Component not in c.parts
-- div,1
all c : Component + Dangerous| Dangerous not in c.parts
all c : Component + Dangerous| Component not in c.parts
-- div,1
all c : Component | c not in c.parts
all c : Component, d: Dangerous | d not in c.parts
all c: Component | c.parts in Material
-- div,1
all c : Component | c not in c.parts
all c : Component| Dangerous not in c.parts
all c: Component | c.parts in Material
all d: Dangerous | d.parts in Material
-- div,1
all c : Component | c not in c.parts
all c : Component, d: Dangerous | d not in c.parts
all c: Component | c.parts in Material
all d: Dangerous | d.parts in Material
-- div,1
