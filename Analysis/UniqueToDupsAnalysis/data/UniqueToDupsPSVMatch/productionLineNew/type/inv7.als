all c:Dangerous | parts.^c in Dangerous
-- div,1
all c: Component | (some c.parts in Dangerous)
-- div,1
some ^parts & Dangerous implies iden in Dangerous
-- div,1
all d : Dangerous, c : Component | d in c.parts => d.c
-- div,1
all d : Dangerous, c : Component | d in c.parts => c.d
-- div,1
all c : Component | c.Dangerous => c.parts in Dangerous
-- div,1
all c : Component | c.parts & Dangerous => c in Dangerous
-- div,1
all c : Component | (c.parts & Dangerous) => c in Dangerous
-- div,2
all c : Component, d : Dangerous | d in c.^parts implies c + d
-- div,1
all c : Component, d : Dangerous | d in c.^parts implies c & d
-- div,1
all c : Component | c.^parts & Dangerous implies c in Dangerous
-- div,1
all c: Component | some c.^parts in Dangerous => c in Dangerous
-- div,1
all c: Component | Dangerous in c.^parts implies (c & Dangerous)
-- div,1
all c : Component | (c.parts & Dangerous) implies c in Dangerous
-- div,1
all x: Product | some x.parts in Dangerous implies x in Dangerous
-- div,1
all x : Component | x.(*parts) & Dangerous implies x in Dangerous
-- div,1
all c : Component | (c.^parts & Dangerous) implies c in Dangerous
-- div,3
all c : Component, d : Dangerous | d in c.parts implies c.^(parts)
-- div,1
all x: Component | some x.parts in Dangerous implies x in Dangerous
-- div,1
all c : Component | some c.parts in Dangerous implies c in Dangerous
-- div,2
all c : Component | some c.^parts in Dangerous implies c in Dangerous
-- div,1
all c : Component | Dangerous in c.^parts implies some Dangerous in c
-- div,1
all x : Component | (x.(*parts) & Dangerous) implies (x in Dangerous)
-- div,1
all c: Component | (some c.^parts in Dangerous) implies c in Dangerous
-- div,1
all c: Component | some (c.^parts in Dangerous) implies c in Dangerous
-- div,1
all c : Component | #(c.parts in Dangerous) > 0 implies c in Dangerous
-- div,1
all c : Component | #(c.^parts in Dangerous) > 0 implies c in Dangerous
-- div,1
all c : Component | #(Dangerous in c.^parts) > 0 implies c in Dangerous
-- div,1
all c: Component | (some c.parts in Dangerous) implies (c in Dangerous)
-- div,1
all c: Component | (some c.^parts in Dangerous) implies (c in Dangerous)
-- div,1
all c: Component | (some (c.parts in Dangerous)) implies (c in Dangerous)
-- div,1
all c : Component | Dangerous in c.^parts implies Component & c & Dangerous
-- div,1
all c : Component | no (c.parts & ~Dangerous) && c.parts != {} => c in Dangerous
-- div,1
all c : Component, d : Dangerous | d in c.^parts implies Component & c & Dangerous
-- div,1
all x: Product | x in Component and some x.parts in Dangerous implies x in Dangerous
-- div,1
all c:Component | some p:c.^parts | Dangerous in p implies  (c & Dangerous & Component)
-- div,1
