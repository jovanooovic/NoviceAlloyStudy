no (~Teaches :> Teacher) implies no Groups
-- div,1
Groups.Person.Group in Teacher.Teaches
-- div,1
all c : Class | no Teaches.(c.Groups)
-- div,1
all c : Class | lone (c.Groups).(Teacher.Teaches)
-- div,1
all c : Class | no Teaches.c => no c.Groups
-- div,6
all c : Class | no (Teacher<:Teaches).(c.Groups)
-- div,1
all c : Class | some Groups  implies some (Teacher->c)
-- div,1
some Class.Groups implies some Class.~Teaches&Teacher
-- div,2
all c: Class | no c.Groups or some Teaches.c
-- div,1
all c:Class | some Groups.c implies some Teaches.c
-- div,2
all c : Class | no Student.(c.Groups) & Teaches.c
-- div,1
all c: Class | some c.Groups => some Teaches.c
-- div,8
all c : Class | some c.Groups => some Teacher->c
-- div,2
all c : Class | some (c.Groups) implies Teacher = Teacher
-- div,1
all c : Class | (c.Groups in Teacher.Teaches.Groups)
-- div,1
all c: Class | some c.Groups implies some c.~Teaches
-- div,2
all c: Class | some c.Groups implies some Teacher.Teaches
-- div,1
some Person.(Class.Groups) implies some Class.~Teaches&Teacher
-- div,1
all c : Class | no (~Teaches :> Teacher) implies no c.Groups
-- div,2
all c: Class | some Person.(c.Groups) implies some Teaches.c
-- div,3
all c : Class | some Student.(c.Groups) implies some Teaches.c
-- div,2
all c :Class | (some c.Groups) implies some (c.~Teaches + Teacher)
-- div,2
all c : Class | (#c.Groups > 0) => #(Teaches.c & Teacher) > 0
-- div,9
all c : Class | no Teaches.c => no (c->Person->Group & Groups)
-- div,1
all c : Class | no Teaches.c => no (c->Student->Group & Groups)
-- div,1
all c: Class, p:Person| some p.(c.Groups) implies some Teaches.c
-- div,2
all c: Class | no c.Groups or (some Teaches.c and some c.Groups)
-- div,1
all c : Class | (some Teaches.c & Teacher) implies c.Groups in Person -> Group
-- div,2
all c : Class | c.Groups in Class.Groups implies (Teaches.c in Teaches.Class)
-- div,1
all c : Class | no Teacher & Teaches.c => no (c->Student->Group & Groups)
-- div,2
all c : Class | no Teacher <: Teaches.c => no (c->Student->Group & Groups)
-- div,3
all c : Class | no (Teacher <: Teaches).c => no (c->Student->Group & Groups)
-- div,2
all c : Class | c.Groups in Class.Groups implies ((Teaches.c & Teacher) in Teaches.Class)
-- div,1
all c : Class | no (Teacher & (Teacher <: Teaches.c)) => no (c->Student->Group & Groups)
-- div,1
all c : Class | c.Groups in Class.Groups implies ((Teaches.c & Teacher) in (Teaches.Class & Teacher))
-- div,1
all c : Class | #c.Groups.Teacher > 0 => (some p : Person, g : Group | c->p->g in Groups)
-- div,2
all c:Class, s:Student, g:Group | c->s->g in Groups implies (some t:Teacher | t->c in Teaches)
-- div,1
