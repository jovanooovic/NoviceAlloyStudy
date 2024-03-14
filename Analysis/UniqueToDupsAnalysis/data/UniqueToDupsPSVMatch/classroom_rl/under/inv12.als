all t : Teacher | some (t->Class)
-- div,1
all t : Teacher | some (t->Group)
-- div,1
all t : Teacher | some (t.Teaches)
-- div,1
all t : Teacher | some Class.Groups->t
-- div,2
all t : Teacher | some t->Class.Groups
-- div,1
Teaches.Groups.Group.Person in Teaches.Class
-- div,1
Teaches.Groups.Group.Person & Teacher in Teacher
-- div,1
all t : Teacher | some Teacher.Teaches.Groups
-- div,1
all t : Teacher, c : t.Teaches | some Groups
-- div,1
all t : Teacher | some (Teacher<:Teaches).Groups
-- div,1
all t : Teacher | some Teacher<:(Teaches.Groups)
-- div,1
all t : Teacher | some c : Class | t->c in Teaches
-- div,1
all t : Teacher, c : t.Teaches | some c->Person->Groups
-- div,1
all t: Teacher | some t.Teaches and some c:Class| some c.Groups
-- div,1
all t:Teacher | some c:Class | some c.Groups iff c in t.Teaches
-- div,1
all t : Teacher | some c : Class | t->c in Teaches and some c->Person->Group
-- div,1
all t:Teacher | some c:Class | c in t.Teaches implies (some Person <: c.Groups)
-- div,1
all t:Teacher | some p:Person, c:Class, g:Group |  c->p->g in Groups implies t->c in Teaches
-- div,1
