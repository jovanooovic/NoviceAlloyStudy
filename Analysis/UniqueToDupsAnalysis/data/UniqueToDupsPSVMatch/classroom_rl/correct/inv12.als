Teacher in Teaches.(Groups.Group.Person)
-- div,3
Teacher in Teaches.Groups.Group.Person
-- div,1
all t:Teacher | some t.Teaches.Groups
-- div,49
Teaches.Groups.Group.Person & Teacher = Teacher
-- div,1
all t : Teacher | some t<:(Teaches.Groups)
-- div,2
all t : Teacher | some (t<:Teaches).Groups
-- div,1
Teaches.(Groups.Group.Person) & Teacher = Teacher
-- div,1
all t : Teacher | some t . Teaches <: (Groups)
-- div,1
all t : Teacher | some c : t.Teaches | some c.Groups
-- div,4
all t: Teacher | some c:Class | t->c in Teaches and some c.Groups
-- div,2
all t : Teacher | some p : Person, g : Group | some (t.Teaches).Groups
-- div,1
all t:Teacher | some p:Person, c:Class, g:Group |  t->c in Teaches and c->p->g in Groups
-- div,1
all t:Teacher | some p:Person, c:Class, g:Group |  c->p->g in Groups and t->c in Teaches
-- div,1
all t: Teacher | some c:Class | t->c in Teaches and some g:Group, p:Person | c->p->g in Groups
-- div,1
