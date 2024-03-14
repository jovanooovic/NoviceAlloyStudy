*parts not in iden
-- div,1
^parts not in iden
-- div,3
(^parts).~(^parts) in iden
-- div,1
(^parts).~(^parts) not in iden
-- div,1
Component not in Component.(^parts)
-- div,1
all c : Component | c->c in parts
-- div,1
all c : Component | c<:parts in iden
-- div,1
all disj c,c1:Component | no (c.parts & c1.parts)
-- div,1
all c,c1 : Component, p : Position | c->p + c1->p in position => c = c1
-- div,1
all c,c1 : Component, p : Position | (c not in c.parts) and (c1 not in c1.parts) and c->p + c1->p in position => c = c1
-- div,1
all c,c1 : Component, p : Position | (c not in c.parts) and (c1 not in c1.parts) and (c->p + c1->p in position => c = c1 )
-- div,1
all c:Component | c.parts in (univ-c)
    all c1,c2:Component | c2 in c1.parts => c2.parts in (univ - c1.parts)
-- div,2
