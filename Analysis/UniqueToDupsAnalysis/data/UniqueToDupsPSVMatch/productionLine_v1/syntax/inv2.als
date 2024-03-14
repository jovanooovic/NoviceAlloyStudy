no Componet.^parts
-- div,1
^parts in iden == False
-- div,1
no c : compontent | c in c.parts
-- div,2
Component not in Component.(parts^)
-- div,1
all c : Component | c not in c^.parts
-- div,1
Component.parts not in ^Component.parts ?
-- div,1
all c : Component | c not in (c.parts=.^parts
-- div,1
all c1,c2:Component | c1 not in c1.parts | c1 in c2.parts => c2 not in c1.parts
-- div,1
all c1,c2:Component | c1 not in c1.parts | c1 in c2.parts => c2 in (univ -c1.parts)
-- div,1
