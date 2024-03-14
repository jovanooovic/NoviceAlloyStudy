parts^.Dangerous in Dangerous
-- div,2
all c:Dangerous | parts^.c in Dangerous
-- div,2
all c: Component | c.^parts: Dangerous => c in Dangerous
-- div,1
all p : Dangerous | all p2 : parts.p | p2 in Dangerous
}
-- div,1
all d : Dangerous, c : Componets | d in c.parts => d in c
-- div,1
all c: Components | c.^parts in Dangerous => c in Dangerous
-- div,1
all c: Component | some c.^parts: Dangerous | c in Dangerous
-- div,1
all c: Component | c.^parts: Dangerous implies c in Dangerous
-- div,1
all c :Component | dangerous in c.parts implies Dangerous in c
-- div,1
all c : Components | Dangerous in c.^parts implies c = Dangerous
-- div,1
all x : Componet | x.(*parts) & Dangerous implies x in Dangerous
-- div,1
all c : Components | Dangerous in c.^parts implies c in Dangerous
-- div,1
all c : Components | c.^parts in Dangerous implies c in Dangerous
-- div,1
all c:Component | p:c.parts| p in Dangerous implies c in Dangerous
-- div,1
all x: Components | some x.parts in Dangerous implies x in Dangerous
-- div,1
all c : Component | (c.^parts & Dangerous) implies all c in Dangerous
-- div,1
all x : Product| x.^parts in Dangerous implies x in Dangerous
-- div,2
all c:Component| some part: c.^parts| part in Dangerous implies c in Dangerous
-- div,1
all c : Components | (some d: Dangerous | d in c.parts) implies c in Dangerous
-- div,1
all c : Components | (some d : Dangerous | d in c.parts) implies c in Dangerous
-- div,1
parts^.Dangerous in Dangerous
some ^parts & Dangerous implies iden in Dangerous
-- div,1
all c: Component | Dangerous in c.parts^ implies some (c & Dangerous & Component)
-- div,1
all c:Component |  | Dangerous in c.^parts implies some  (c & Dangerous & Component)
-- div,1
all c:Comonent, p:Product | p in Dangerous and c in p.^(parts) implies c in Dangerous
-- div,1
all c : Component | Dangerous in c.^parts implies some in ( c & Dangerous & Component )
-- div,1
all c:Component | all p:Product | p in Dangerous and i in c.^(parts) implies c in Dangerous
-- div,1
