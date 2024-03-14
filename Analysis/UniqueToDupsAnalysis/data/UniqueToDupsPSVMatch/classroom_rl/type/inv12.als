Teacher in Groups
-- div,1
Teacher in Groups.Group
-- div,1
Teacher in Teacher.Group
-- div,1
some Teacher.Class.Groups
-- div,1
Teacher in Teacher<:Groups
-- div,2
some ~Teaches&Teacher.Class
-- div,1
Teacher in (Teaches.Groups)
-- div,1
Teacher<:(Teaches.Groups)
-- div,1
Teacher in ~(Teacher<:Groups)
-- div,1
all t:Teacher | some t.Person
-- div,1
all t:Teacher | some Person.t
-- div,1
some (Teacher & Teaches.Groups)
-- div,1
#(Teacher & Teaches.Groups) > 1
-- div,2
some Class.Group & Teaches.Class
-- div,1
all t:Teacher | t.Teaches.Groups
-- div,1
Teaches.Groups in Teacher.Groups
-- div,1
some Group.Class & Class.Teaches
-- div,2
all t: Teacher | t.Teaches.Groups
-- div,3
some Class.Groups & Teaches.Class
-- div,1
all t : Teacher | t.Teaches.Groups
-- div,1
all t: Teacher | t->Group in Groups
-- div,1
all t:Teacher | some Person.Teacher
-- div,1
all t:Teacher | some t.Teaches.Group
-- div,1
Teacher in Teacher<:(Teaches.Groups)
-- div,1
Teacher in (Teacher<:Teaches).Groups
-- div,1
all t : Teacher | some t.Class.Groups
-- div,2
Teacher in ~(Teacher<:Groups).Teacher
-- div,1
Teaches.Groups.Group.Person in Teaches
-- div,1
all t : Teacher | some t.Teaches.Group
-- div,1
all t: Teacher | t.Teaches some Groups
-- div,1
all t:Teacher | some t.Teaches in Class
-- div,1
all c:Class | some (c.Groups & Teacher)
-- div,1
all g:Groups | some (g.Person & Teacher)
-- div,1
some Group.Class & Class.Teaches.Teacher
-- div,1
all t : Teacher | some Group in t.Teaches
-- div,1
all t:Teacher | some(Class.Groups.Group.t)
-- div,1
all t : Teacher | some Groups in t.Teaches
-- div,1
all t:Teacher | some t.(Class.Groups.Group)
-- div,1
all t : Teacher, c : Class | some t.c.Groups
-- div,1
all t:Teacher | some g:Group | t->g in Groups
-- div,1
all c:Class, g:Group | some ~Teaches&Teacher.c
-- div,1
all c:Class, g:Group | some ~Teaches&Teacher.g
-- div,1
all t:Teacher | some g:Groups | t->g in Groups
-- div,1
all t: Teacher | some g: Group | t->g in Groups
-- div,1
all t : Teacher | some t.Teaches & Class.Groups
-- div,1
all t : Teacher | some t.Teaches & Groups.Person
-- div,1
all t: Teacher | some g: Group | Class.t.g in Groups
-- div,1
all t : Teacher | some t.Teaches.Groups.Person.Group
-- div,1
all t:Teacher | some c:Class | c.Groups in t.Teaches
-- div,1
all t: Teacher | some g: Group | Class.t->g in Groups
-- div,1
all t : Teacher | some t.(Class.Groups) and t.Teaches
-- div,1
all t : Teacher | (t.Teaches).((Groups.Person).Group)
-- div,1
all t: Class.Teacher | some g: Group | t->g in Groups
-- div,1
all t : Teacher | some t.(Class.Groups) and t. Teaches
-- div,1
all t:Teacher | some g:Group | t.Teaches in g.~(Class.g)
-- div,1
all t:Teacher | some g:Group | some t->g in Class.Groups
-- div,1
all t:Teacher | some c:Class | some c.Groups in t.Teaches
-- div,1
all t : Teacher | t & Teaches.Class & (some Class.Groups)
-- div,1
all t:Teacher | some g:Group, c:Class | some t->g in c.Groups
-- div,1
all t: Teacher, c: Class | some g: Group | t->c->g in Teaches
-- div,3
all t:Teacher | some c:Class | some c.Groups implies t.Teaches
-- div,1
all t: Teacher | some g: Group | some c: Class | c->t in Groups
-- div,1
all t:Teacher | t.Teaches implies (some Person <: Class.Groups)
-- div,1
iden in  ~(Teacher <: Teaches.Groups) . (Teacher <: Teaches.Groups)
-- div,1
all t : Teacher | some p : Person, g : Group | some g.p.(t.Teaches)
-- div,1
all t: Teacher | some g: Group | some c: Class | t.Teaches and c->t
-- div,1
all c:Class,t:Teacher | some t.Teaches=c implies some c.Groups.Group
-- div,1
all t:Teacher | some t.Teaches in Class  and  some  t.Teaches.Groups
-- div,1
iden in  (~Teaches.~Groups :> Teacher) . (Teacher <: Teaches.Groups)
-- div,1
all t : Teacher | some p : Person, g : Group | some g.(p.(t.Teaches))
-- div,1
all t:Teacher | some t.Teaches in Class  and  some  (t.Teaches).Groups
-- div,2
all c:Class,t:Teacher | some t.Teaches in c implies some c.Groups.Group
-- div,1
all t:Teacher | some c:Class | t.Teaches implies (some Person <: c.Groups)
-- div,2
all t:Teacher | some t.Teaches.Class implies (some Person <: Class.Groups)
-- div,1
all t : Teacher | some p : Person, g : Group | some g.(p.(t.Teaches.Groups))
-- div,1
all t:Teacher | some c:Class | t.Teaches.c implies (some Person <: c.Groups)
-- div,2
all t : Teacher | some p : Person, g : Group | some g.(p.(t.Teaches).Groups)
-- div,1
all t: Teacher | some g: Group | all c: Class | c.Group implies t in Teacher
-- div,1
all p: Person | some g: Group | all c: Class | c.Group.p implies p in Teacher
-- div,1
all t:Teacher | some c:Class | t.Teaches:>c implies (some Person <: c.Groups)
-- div,1
all t:Teacher | some c:Class | Teaches.c:>t implies (some Person <: c.Groups)
-- div,1
all t:Teacher | some c:Class | c <: t.Teaches implies (some Person <: c.Groups)
-- div,1
all t:Teacher | some c:Class | t <: Teaches.c implies (some Person <: c.Groups)
-- div,1
all t: Teacher | all c: Class | some g: Group | t->c in Teaches and t->g in Groups
-- div,1
all c: Class.Groups, t: Teacher | some g: Group | t->g in c
-- div,1
all t:Teacher | some p:Person, c:Class, g:Groups |  c->p->g in Groups implies t->c in Teaches
-- div,1
all t:Teacher | some t.Teaches in Class  and  some g:Group, p:Person | t.Teaches->p->g in Groups
-- div,1
