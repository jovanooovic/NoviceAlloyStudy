all: c:Class, g:Group
-- div,2
all c:Class | some t:Teacher |
-- div,1
all c : Class in Teacher.Teaches
-- div,1
some t : Teacher in Class.Teaches
-- div,1
all c : Class in Teacher.(c.Groups)
-- div,1
all c : Class | some Teacher.teaches
-- div,1
some t : Teacher | all  Class.Teaches
-- div,1
all c : Class | all Teacher.(c.Groups)
-- div,1
all c : Class | some t : Teacher & c.Groups
-- div,1
all c : Class | c.Grouops in Teacher.Teaches
-- div,1
all c : Class | some (c.Groups) implies True
-- div,1
some Teacher & Teaches.(Groups.Group).Person)
-- div,1
all c : Class  | c.groups in  Teacher.Teaches
-- div,1
all c:Class,t:Teacher | c.Groups|t.Teaches = c
-- div,1
all c:Class | c.Groups iff | c in Teacher.Teaches
-- div,1
all c:Class | some g:Group iff c in Teacher.Teaches
-- div,1
all c : Class | no (Student.(c.Groups)) & Teaches.c)
-- div,1
Class not in Teacher.Teaches => Class.Groups = empty
-- div,1
some c.Groups iff some t:Teacher| Class in t.Teaches
-- div,1
all c:Class | some c.Groups iff c in Theacher.Teaches
-- div,1
all c:Class | some g:Group iff {c in Teacher.Teaches}
-- div,1
all c : Class | c.Groups in ((Teaches.Teacher).Groups
-- div,1
all c:Class | some c.Groups iff {c in Theacher.Teaches
-- div,1
all c:Class | c in Groups implies Teacher in c.Teaches
-- div,1
all c:Class | some c.Groups implies Teaches.c & Teacher
-- div,1
all c : Class | Teaches.c in Tutor.(Student.(c.Groups))
-- div,1
all c : Class  | some c.Groups | c  in  Teacher.Teaches
-- div,1
all c:Class,t:Teacher | c.Groups in group|t.Teaches = c
-- div,1
all c : Class | (some c.Groups) implies Teacher.teaches
-- div,1
all c : Class | (c.Groups in ((Teaches.Teacher).Groups)
-- div,1
some c.Groups iff some Class:Teacher| Class in t.Teaches
-- div,1
some Person.(Class.Groups) implies one p.Teaches&Teacher
-- div,1
all c:Class , c.Groups iff some t:Teacher| c in t.Teaches
-- div,1
all c:Class | some mc.Groups implies c in Teacher.Teaches
-- div,1
all c:Class , g:Group iff some t:Teacher | c in t.Teaches
-- div,2
all c : Class | no c.~Teaches :> Teachers implies no Groups
-- div,1
all c: Class | no (c.Groups) or some (Teacher & Teaches.c))
-- div,1
some Class.Groups iff some Class:Teacher| Class in t.Teaches
-- div,1
all Person.(Class.Groups) implies one Class.~Teaches&Teacher
-- div,1
all c : Class, some p : Person | no Teaches.c => c->p->Group
-- div,1
all c:Class | all c.Groups iff some t:Teacher| c in t.Teaches
-- div,1
all c : Class | some p : Person | no Teaches.c => c->p->Group
-- div,1
all c : Class | no (c.~Teaches :> Teachers) implies no Groups
-- div,1
all c:Class | some g:Group iff some t:Teacher | c in t.Teaches
-- div,1
all c : Class | some p : Person | no Teaches.c => c->p->Group)
-- div,1
all c:Class, some c.Groups iff some t:Teacher | c in t.Teaches
-- div,1
all c: Class p:Person| some p.(c.Groups) implies some Teaches.c
-- div,1
all c : Class | c not in Teacher.Teaches => class.Groups = none
-- div,1
all c: Class | some t:Teacher implies some Group.(c.(t.Teaches))
-- div,1
all c : Class | some s : Teacher | some c.Groups,  =>  s.Teaches.c
-- div,1
all c: Class | some c.Groups iff (some t: Teacher | c in t.Teaches)
-- div,1
all c: Class | some t:Teacher implies Group in (c.(t.Teaches)).Group
-- div,1
all c : Class | (some (Person - c.Groups.Group) + (some (Teaches.c))
-- div,1
all c : Class | some p : Person | no Teaches.c => c->p->Group in Groups)
-- div,1
all c : Class | some (some (Person - c.Groups.Group) + (some (Teaches.c))
-- div,1
all c : Class | no Teacher <: Teaches.c) => no (c->Student->Group & Groups)
-- div,1
all c:Class | some t:Teacher | if some c.Groups.Group implies t->c in Teaches
-- div,1
some c: Class, t: Teacher | all g: Group | t->c in Teaches and c->s->g in Groups
-- div,1
all c : Class | no (Teacher & (Teacher <: Teaches.c) => no (c->Student->Group & Groups)
-- div,1
all c:Class | some t:Teacher | if(some c.Groups.Group) then t->c in Teaches else no Class
-- div,1
not some c:Class, t:Teacher | s:Student, g:Group | t->c not in Teaches and  c->s->g in Groups
-- div,1
all c:Class | some p:Person | some g:Group c->p->g in Groups implies some t:Teacher | t->c in
-- div,1
all c:Class | some p:Person | some g:Group | some t:Teacher c->p->g in Groups implies t->c in Teaches
-- div,2
all c:Class | some p:Person | some g:Group c->p->g in Groups implies some t:Teacher | t->c in Teaches
-- div,2
