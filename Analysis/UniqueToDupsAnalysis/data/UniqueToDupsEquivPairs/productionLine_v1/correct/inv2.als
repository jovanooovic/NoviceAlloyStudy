-- equiv pair start,60
no iden & ^parts
-- div,5
no	^parts & iden
-- div,2
no c : Component | c in c.^(parts)
-- div,6
all c:Product | c not in c.^parts
-- div,1
all c:Component | c not in c.^parts
-- div,35
all c1:Component | c1 not in c1.^parts
-- div,2
all c:Component | no c.^parts & c
-- div,1
all c: Component | no c & c.^parts
-- div,5
all c : Component | c not in  c.parts.*parts
-- div,2
all c : Component | c not in (c.parts).^parts
-- div,1
-- equiv pair end
