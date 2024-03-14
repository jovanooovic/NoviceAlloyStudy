all c : Component | some
-- div,5
(all c : Componente | card(c.parts)>1
-- div,1
parts = Components + (Product-Material)
-- div,1
Components in parts
Material not in parts
-- div,1
no Material.parts && some Components.parts
-- div,1
parts = set (Component + (Product-Material))
-- div,1
all c:Component| some c.parts
all m:Material| no c.parts
-- div,1
all x:Product | some x.parts
all x:Materials | no x.parts
-- div,1
all c: Components, m: Material| #c.parts <0 and no m.parts
-- div,1
all c: Components | #c.parts>0
all c :Material | no c.parts
-- div,1
all m:Material | no m.parts
all c:Components | some c.parts
-- div,1
(all c : Components | some c.parts) and (no Material.parts)
-- div,2
all c: Compinent | some c.parts
all m: Material | no m.parts
-- div,1
all c : Component | some c.parts
all m : Material | no m.pats
-- div,1
all m : Material | #m.parts=0
all c : Components | #c.parts>0
-- div,1
all c : Component, m : material | c in parts & m not in parts
-- div,1
all x: Components | some x.parts
all y: Material | no y.parts
-- div,1
all c : Component, m : Material | some c.parts and no n.parts
-- div,1
all c : Component | some c.parts
all m : Material | no c.parts
-- div,1
all c : Component | some c.parts
all m : material | no m.parts
-- div,1
all p : Product | some p.parts in Component or p in Material
´
-- div,2
all c : Componets | some c.parts
all m : Materials | no m.parts
-- div,1
all c : Component | some c.parts
all c : Materials | no c.parts
-- div,2
all c : Components | some c.parts
all m : Materials | no m.parts
-- div,1
(all c: Components| some c.parts) && (all m: Material| no m.parts)
-- div,1
all p : Product | some p.parts => p in Component ; p in Material
´
-- div,1
all c: Component | c.parts != none
all m: Materials | m.parts = none
-- div,1
all c: Components | c.parts != none
all m: Materials | m.parts = none
-- div,1
all c: Components | c.parts <> none
all m: Materials | m.parts = none
-- div,1
all c: Component | some p : Parts | p in c.parts
all c: Material | no c.parts
-- div,1
(all c : Component | card(c.parts)>1)
and
(all m : Material | card(m.parts)=0)
-- div,1
(all c : Component | card(c.parts)>1)
and
(all m : Material | card(c.parts)=0)
-- div,1
all p ; Product | p in Component => some p.parts and p in Mterial => no p.parts
-- div,1
all p : Product | p in Component => some p.parts and p in Mterial => no p.parts
-- div,1
(all c : Componente | card(c.parts)>1)
and
(all m : Material | card(c.parts)=0)
-- div,3
all p:Product| (p in Material => no p.parts) or (p in Components =>some p.parts)
-- div,1
all p ; Product | p in Component => some p.parts and p in MAterial => no p.parts
-- div,1
all c: Component, m: Material| iff(c not in Dangerous) #c.parts >0 and no m.parts
-- div,1
all x: Product | x in Component -> some (x.parts) || x in Material -> no (y.parts)
-- div,1
all x: Product | (x in Component && some x.parts) || (x in Material && no y.parts)
-- div,1
all x : Product | (x in Components & some x.parts) || (x in Materials & no x.parts)
-- div,1
all x : Product | (x in Components && some x.parts) || (x in Materials && no x.parts)
-- div,1
all p : Product | (p in Component implies some p.parts) and (p in Parts implies no p.parts)
-- div,1
all p : Product | (t in Component implies some p.parts) and (t in Parts implies no p.parts)
-- div,1
all p : Product | p in Material <=> no p.parts
all p : Product | p in Components <=> some p.parts
-- div,1
all c: Component, m: Material| iff (c not in Dangerous) #c.parts >0 else #c.part =0 and no m.parts
-- div,1
all c: Component, m: Material| iff (c not in Dangerous) #c.parts >0 else #c.part = 0 and no m.parts
-- div,1
(all c : Components | some p: Product | p in c.parts) and (all m : Materials | no Product in m.parts)
-- div,1
(all c:Component | some p:Product | c in p.parts)
and
(all m:Materials | no p:Product | m in p.parts)
-- div,1
all c : Component | some p : Product | c in p.parts
and
all m : Material | no p Product | m in p.parts
-- div,1
(all c : Component | some p:Product | c in p.parts)
and
(all m: Material | no p:Product | c in p.parts)
-- div,2
all c : Components | one p : Product | p in c.parts
and
all m : Material | no p: Product | p in m.parts
-- div,1
(all c:Component | some p:Produt | p in c.parts)
and
(all m:Material | all p:Product | p not in m.parts)
-- div,1
all p : Product | p in Material implies no p.parts
all p : Product | p in Components implies some p.parts
-- div,1
(all c : Component | some p : Product | c in p.parts)
and
(all m : Material | no p Product | m in p.parts)
-- div,1
all p : Product | p in Components implies some p.parts
all p : Product | p in Materials implies no p.parts
-- div,1
all p : Product | p in Component implies some p.parts
all p : Product | p in Materials implies none p.parts
-- div,1
(all c : Component | some p : Product | c in p.parts)
and
(all m : Material | no p Product | m in p.parts )
-- div,1
all x: Product |  x in Component implies some x.parts
all x: Product |  x in Material implies empty x.parts
-- div,1
(all c : Component | some p : Product | p in c.parts)
and
(all m : Material | no p : Product | p in c.parts)
-- div,1
all c:Components | some p:Products | c in p.parts
and
all c:Components | some m:Materials | c not in m.parts
-- div,1
(all c:Component | some p:Products | c in p.parts)
and
(all c:Component | some m:Materials | c not in m.parts)
-- div,1
(all c:Components | some p:Products | c in p.parts)
and
(all c:Components | some m:Materials | c not in m.parts)
-- div,1
all p:Product, p1:Product | (p in Component implies p1 in p1.parts and p!=p1) or (p in Materials implies p1 not in p1.parts and p!=p1)
-- div,1
(all c:Component | some p:Product | p not in c.parts)
and
(all m:Material | no p:Product | p not in m.parts)
-- div,1
